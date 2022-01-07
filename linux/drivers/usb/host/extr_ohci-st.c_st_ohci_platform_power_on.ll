; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-st.c_st_ohci_platform_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-st.c_st_ohci_platform_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.st_ohci_platform_priv = type { i32, i32, i64*, i32, i64 }

@USB_MAX_CLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_ohci_platform_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_ohci_platform_power_on(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.st_ohci_platform_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.st_ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd* %10)
  store %struct.st_ohci_platform_priv* %11, %struct.st_ohci_platform_priv** %5, align 8
  %12 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %13 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @reset_control_deassert(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %122

20:                                               ; preds = %1
  %21 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %22 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @reset_control_deassert(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %116

28:                                               ; preds = %20
  %29 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %30 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %35 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @clk_set_rate(i64 %36, i32 48000000)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %111

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %28
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @USB_MAX_CLKS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %49 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %47, %43
  %57 = phi i1 [ false, %43 ], [ %55, %47 ]
  br i1 %57, label %58, label %74

58:                                               ; preds = %56
  %59 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %60 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @clk_prepare_enable(i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %96

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %43

74:                                               ; preds = %56
  %75 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %76 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @phy_init(i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %96

82:                                               ; preds = %74
  %83 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %84 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @phy_power_on(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %122

91:                                               ; preds = %89
  %92 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %93 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @phy_exit(i32 %94)
  br label %96

96:                                               ; preds = %91, %81, %69
  br label %97

97:                                               ; preds = %101, %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %103 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @clk_disable_unprepare(i64 %108)
  br label %97

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %40
  %112 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %113 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @reset_control_assert(i32 %114)
  br label %116

116:                                              ; preds = %111, %27
  %117 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %118 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @reset_control_assert(i32 %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %116, %90, %18
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.st_ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
