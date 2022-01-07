; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i64, i32, i32, i32, i32, i32 }

@DWC3_GCTL_PRTCAP_HOST = common dso_local global i64 0, align 8
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_CSFTRST = common dso_local global i32 0, align 4
@DWC3_USB31_REVISION_190A = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@DWC3_USB31_REVISION_180A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_core_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_core_soft_reset(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store i32 1000, i32* %5, align 4
  %7 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @usb_phy_init(i32 %9)
  %11 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_phy_init(i32 %13)
  %15 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @phy_init(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %123

23:                                               ; preds = %1
  %24 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @phy_init(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @phy_exit(i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %123

36:                                               ; preds = %23
  %37 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DWC3_GCTL_PRTCAP_HOST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %123

43:                                               ; preds = %36
  %44 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %45 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DWC3_DCTL, align 4
  %48 = call i32 @dwc3_readl(i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @DWC3_DCTL_CSFTRST, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DWC3_DCTL, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dwc3_writel(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %59 = call i64 @dwc3_is_usb31(%struct.dwc3* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DWC3_USB31_REVISION_190A, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 10, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %61, %43
  br label %69

69:                                               ; preds = %95, %68
  %70 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %71 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DWC3_DCTL, align 4
  %74 = call i32 @dwc3_readl(i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @DWC3_DCTL_CSFTRST, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %110

80:                                               ; preds = %69
  %81 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %82 = call i64 @dwc3_is_usb31(%struct.dwc3* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %86 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DWC3_USB31_REVISION_190A, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i32 @msleep(i32 20)
  br label %94

92:                                               ; preds = %84, %80
  %93 = call i32 @udelay(i32 1)
  br label %94

94:                                               ; preds = %92, %90
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %69, label %99

99:                                               ; preds = %95
  %100 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %101 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @phy_exit(i32 %102)
  %104 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %105 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @phy_exit(i32 %106)
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %123

110:                                              ; preds = %79
  %111 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %112 = call i64 @dwc3_is_usb31(%struct.dwc3* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %116 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DWC3_USB31_REVISION_180A, align 8
  %119 = icmp sle i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @msleep(i32 50)
  br label %122

122:                                              ; preds = %120, %114, %110
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %99, %42, %30, %21
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @usb_phy_init(i32) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i64 @dwc3_is_usb31(%struct.dwc3*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
