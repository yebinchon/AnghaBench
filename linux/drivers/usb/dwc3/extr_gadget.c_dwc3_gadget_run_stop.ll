; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_run_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_run_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i32, i64, i32 }

@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_REVISION_187A = common dso_local global i64 0, align 8
@DWC3_DCTL_TRGTULST_MASK = common dso_local global i32 0, align 4
@DWC3_DCTL_TRGTULST_RX_DET = common dso_local global i32 0, align 4
@DWC3_REVISION_194A = common dso_local global i64 0, align 8
@DWC3_DCTL_KEEP_CONNECT = common dso_local global i32 0, align 4
@DWC3_DCTL_RUN_STOP = common dso_local global i32 0, align 4
@DWC3_DSTS = common dso_local global i32 0, align 4
@DWC3_DSTS_DEVCTRLHLT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, i32, i32)* @dwc3_gadget_run_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_run_stop(%struct.dwc3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 500, i32* %9, align 4
  %10 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @pm_runtime_suspended(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

16:                                               ; preds = %3
  %17 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %18 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DWC3_DCTL, align 4
  %21 = call i32 @dwc3_readl(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %16
  %25 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DWC3_REVISION_187A, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* @DWC3_DCTL_TRGTULST_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @DWC3_DCTL_TRGTULST_RX_DET, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DWC3_REVISION_194A, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @DWC3_DCTL_KEEP_CONNECT, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* @DWC3_DCTL_RUN_STOP, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %54 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @DWC3_DCTL_KEEP_CONNECT, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %84

64:                                               ; preds = %16
  %65 = load i32, i32* @DWC3_DCTL_RUN_STOP, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %70 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @DWC3_DCTL_KEEP_CONNECT, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %76, %73, %64
  %82 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %83 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %61
  %85 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %86 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DWC3_DCTL, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dwc3_writel(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %116, %84
  %92 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %93 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DWC3_DSTS, align 4
  %96 = call i32 @dwc3_readl(i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @DWC3_DSTS_DEVCTRLHLT, align 4
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = xor i32 %108, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %104, %100
  %117 = phi i1 [ false, %100 ], [ %115, %104 ]
  br i1 %117, label %91, label %118

118:                                              ; preds = %116
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @ETIMEDOUT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %121, %15
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @pm_runtime_suspended(i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
