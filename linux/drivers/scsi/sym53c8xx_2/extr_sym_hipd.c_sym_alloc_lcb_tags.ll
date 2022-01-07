; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_alloc_lcb_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_alloc_lcb_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.sym_lcb = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYM_CONF_MAX_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ITLQ_TBL\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, i64, i64)* @sym_alloc_lcb_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_alloc_lcb_tags(%struct.sym_hcb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  %8 = alloca %struct.sym_lcb*, align 8
  %9 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %11 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %10, i32 0, i32 1
  %12 = load %struct.sym_tcb*, %struct.sym_tcb** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %12, i64 %13
  store %struct.sym_tcb* %14, %struct.sym_tcb** %7, align 8
  %15 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %15, i64 %16)
  store %struct.sym_lcb* %17, %struct.sym_lcb** %8, align 8
  %18 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %19 = mul nsw i32 %18, 4
  %20 = call i32* @sym_calloc_dma(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %22 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %24 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %81

28:                                               ; preds = %3
  %29 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i32* @kcalloc(i32 %29, i32 1, i32 %30)
  %32 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %33 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %35 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %40 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %43 = mul nsw i32 %42, 4
  %44 = call i32 @sym_mfree_dma(i32* %41, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %46 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %81

47:                                               ; preds = %28
  %48 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %49 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %52 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cpu_to_scr(i32 %53)
  %55 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %56 = call i32 @memset32(i32* %50, i32 %54, i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %69, %47
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %64 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %57

72:                                               ; preds = %57
  %73 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %74 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @vtobus(i32* %75)
  %77 = call i32 @cpu_to_scr(i32 %76)
  %78 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %79 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %82

81:                                               ; preds = %38, %27
  br label %82

82:                                               ; preds = %81, %72
  ret void
}

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i64) #1

declare dso_local i32* @sym_calloc_dma(i32, i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sym_mfree_dma(i32*, i32, i8*) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_scr(i32) #1

declare dso_local i32 @vtobus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
