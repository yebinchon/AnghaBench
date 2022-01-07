; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sgpg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sgpg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BFI_SGE_INLINE = common dso_local global i64 0, align 8
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioim_s*)* @bfa_ioim_sgpg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioim_sgpg_alloc(%struct.bfa_ioim_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i64, align 8
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  %5 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BFI_SGE_INLINE, align 8
  %9 = icmp sle i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @BFA_SGPG_NPAGE(i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @BFA_TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @bfa_sgpg_malloc(i32 %23, i32* %25, i64 %26)
  %28 = load i64, i64* @BFA_STATUS_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @bfa_sgpg_wait(i32 %33, i32* %37, i64 %38)
  %40 = load i32, i32* @BFA_FALSE, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %20
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %45, i32 0, i32 1
  %47 = call i32 @bfa_q_first(i32* %46)
  %48 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @BFA_TRUE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %30, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @BFA_SGPG_NPAGE(i64) #1

declare dso_local i64 @bfa_sgpg_malloc(i32, i32*, i64) #1

declare dso_local i32 @bfa_sgpg_wait(i32, i32*, i64) #1

declare dso_local i32 @bfa_q_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
