; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_setup_global_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_setup_global_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i32, i64, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@DWC3_GCTL = common dso_local global i32 0, align 4
@DWC3_GCTL_SCALEDOWN_MASK = common dso_local global i32 0, align 4
@USB_DR_MODE_HOST = common dso_local global i32 0, align 4
@USB_DR_MODE_OTG = common dso_local global i32 0, align 4
@DWC3_REVISION_210A = common dso_local global i64 0, align 8
@DWC3_REVISION_250A = common dso_local global i64 0, align 8
@DWC3_GCTL_DSBLCLKGTNG = common dso_local global i32 0, align 4
@DWC3_GCTL_SOFITPSYNC = common dso_local global i32 0, align 4
@DWC3_GCTL_GBLHIBERNATIONEN = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS6_EN_FPGA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Running with FPGA optimizations\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"disable_scramble cannot be used on non-FPGA builds\0A\00", align 1
@DWC3_GCTL_DISSCRAMBLE = common dso_local global i32 0, align 4
@DWC3_GCTL_U2EXIT_LFPS = common dso_local global i32 0, align 4
@DWC3_REVISION_190A = common dso_local global i64 0, align 8
@DWC3_GCTL_U2RSTECN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_core_setup_global_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_core_setup_global_control(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %5 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %6 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DWC3_GCTL, align 4
  %13 = call i32 @dwc3_readl(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @DWC3_GCTL_SCALEDOWN_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DWC3_GHWPARAMS1_EN_PWROPT(i32 %21)
  switch i32 %22, label %67 [
    i32 129, label %23
    i32 128, label %59
  ]

23:                                               ; preds = %1
  %24 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USB_DR_MODE_HOST, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @USB_DR_MODE_OTG, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29, %23
  %36 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %37 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DWC3_REVISION_210A, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %43 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DWC3_REVISION_250A, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @DWC3_GCTL_DSBLCLKGTNG, align 4
  %49 = load i32, i32* @DWC3_GCTL_SOFITPSYNC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %41, %35, %29
  %54 = load i32, i32* @DWC3_GCTL_DSBLCLKGTNG, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %47
  br label %68

59:                                               ; preds = %1
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @DWC3_GHWPARAMS4_HIBER_SCRATCHBUFS(i32 %60)
  %62 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @DWC3_GCTL_GBLHIBERNATIONEN, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %1
  br label %68

68:                                               ; preds = %67, %59, %58
  %69 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %70 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DWC3_GHWPARAMS6_EN_FPGA, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %78 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_info(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %82 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %68
  %84 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %85 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %90 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %88, %83
  %95 = phi i1 [ false, %83 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @WARN_ONCE(i32 %96, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %99 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %104 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @DWC3_GCTL_DISSCRAMBLE, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  br label %116

111:                                              ; preds = %102, %94
  %112 = load i32, i32* @DWC3_GCTL_DISSCRAMBLE, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %118 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @DWC3_GCTL_U2EXIT_LFPS, align 4
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %127 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DWC3_REVISION_190A, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @DWC3_GCTL_U2RSTECN, align 4
  %133 = load i32, i32* %4, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %125
  %136 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %137 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DWC3_GCTL, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @dwc3_writel(i32 %138, i32 %139, i32 %140)
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GHWPARAMS1_EN_PWROPT(i32) #1

declare dso_local i32 @DWC3_GHWPARAMS4_HIBER_SCRATCHBUFS(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
