; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_shared_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_init_shared_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i32*, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@LUT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to allocate memory for shared mw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Shared MW Ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switchtec_ntb*)* @switchtec_ntb_init_shared_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_init_shared_mw(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switchtec_ntb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %3, align 8
  %6 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %7 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %12 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %16 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* @LUT_SIZE, align 4
  %22 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %23 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %22, i32 0, i32 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @dma_alloc_coherent(i32* %20, i32 %21, i32* %23, i32 %24)
  %26 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %27 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %29 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %34 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %97

40:                                               ; preds = %1
  %41 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %42 = call i32 @switchtec_ntb_init_shared(%struct.switchtec_ntb* %41)
  %43 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %44 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %45 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %48 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %51 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @config_rsvd_lut_win(%struct.switchtec_ntb* %43, i32 %46, i32 0, i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %81

57:                                               ; preds = %40
  %58 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %59 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @LUT_SIZE, align 4
  %65 = call i32 @pci_iomap(%struct.TYPE_4__* %62, i32 %63, i32 %64)
  %66 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %67 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %69 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %57
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %81

75:                                               ; preds = %57
  %76 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %77 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = call i32 @dev_dbg(i32* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %97

81:                                               ; preds = %72, %56
  %82 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %83 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* @LUT_SIZE, align 4
  %89 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %90 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %93 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dma_free_coherent(i32* %87, i32 %88, i32 %91, i32 %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %81, %75, %32
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @switchtec_ntb_init_shared(%struct.switchtec_ntb*) #1

declare dso_local i32 @config_rsvd_lut_win(%struct.switchtec_ntb*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_iomap(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
