; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hs.c_qcom_usb_hs_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-usb-hs.c_qcom_usb_hs_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.qcom_usb_hs_phy = type { i32, i32, i32, i32, i32, i64, i64, %struct.ulpi_seq*, %struct.ulpi* }
%struct.ulpi_seq = type { i32, i64 }
%struct.ulpi = type { i32 }

@ULPI_EXT_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@EXTCON_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @qcom_usb_hs_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_usb_hs_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.qcom_usb_hs_phy*, align 8
  %5 = alloca %struct.ulpi*, align 8
  %6 = alloca %struct.ulpi_seq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.qcom_usb_hs_phy* @phy_get_drvdata(%struct.phy* %9)
  store %struct.qcom_usb_hs_phy* %10, %struct.qcom_usb_hs_phy** %4, align 8
  %11 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %12 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %11, i32 0, i32 8
  %13 = load %struct.ulpi*, %struct.ulpi** %12, align 8
  store %struct.ulpi* %13, %struct.ulpi** %5, align 8
  %14 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %15 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_prepare_enable(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %164

22:                                               ; preds = %1
  %23 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %24 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_prepare_enable(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %158

30:                                               ; preds = %22
  %31 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %32 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @regulator_set_load(i32 %33, i32 50000)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %153

38:                                               ; preds = %30
  %39 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %40 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @regulator_enable(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %153

46:                                               ; preds = %38
  %47 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %48 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regulator_set_voltage_triplet(i32 %49, i32 3050000, i32 3300000, i32 3300000)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %148

54:                                               ; preds = %46
  %55 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %56 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regulator_set_load(i32 %57, i32 50000)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %148

62:                                               ; preds = %54
  %63 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %64 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @regulator_enable(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %148

70:                                               ; preds = %62
  %71 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %71, i32 0, i32 7
  %73 = load %struct.ulpi_seq*, %struct.ulpi_seq** %72, align 8
  store %struct.ulpi_seq* %73, %struct.ulpi_seq** %6, align 8
  br label %74

74:                                               ; preds = %94, %70
  %75 = load %struct.ulpi_seq*, %struct.ulpi_seq** %6, align 8
  %76 = getelementptr inbounds %struct.ulpi_seq, %struct.ulpi_seq* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %81 = load i64, i64* @ULPI_EXT_VENDOR_SPECIFIC, align 8
  %82 = load %struct.ulpi_seq*, %struct.ulpi_seq** %6, align 8
  %83 = getelementptr inbounds %struct.ulpi_seq, %struct.ulpi_seq* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.ulpi_seq*, %struct.ulpi_seq** %6, align 8
  %87 = getelementptr inbounds %struct.ulpi_seq, %struct.ulpi_seq* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ulpi_write(%struct.ulpi* %80, i64 %85, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %143

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.ulpi_seq*, %struct.ulpi_seq** %6, align 8
  %96 = getelementptr inbounds %struct.ulpi_seq, %struct.ulpi_seq* %95, i32 1
  store %struct.ulpi_seq* %96, %struct.ulpi_seq** %6, align 8
  br label %74

97:                                               ; preds = %74
  %98 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %99 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %104 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @reset_control_reset(i64 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %143

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %97
  %112 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %113 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %118 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @EXTCON_USB, align 4
  %121 = call i32 @extcon_get_state(i64 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %123 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %122, i32 0, i32 4
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %126 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @qcom_usb_hs_phy_vbus_notifier(i32* %123, i32 %124, i64 %127)
  %129 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %130 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %129, i32 0, i32 0
  %131 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %132 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @EXTCON_USB, align 4
  %135 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %136 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %135, i32 0, i32 4
  %137 = call i32 @devm_extcon_register_notifier(i32* %130, i64 %133, i32 %134, i32* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %116
  br label %143

141:                                              ; preds = %116
  br label %142

142:                                              ; preds = %141, %111
  store i32 0, i32* %2, align 4
  br label %164

143:                                              ; preds = %140, %109, %92
  %144 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %145 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @regulator_disable(i32 %146)
  br label %148

148:                                              ; preds = %143, %69, %61, %53
  %149 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %150 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @regulator_disable(i32 %151)
  br label %153

153:                                              ; preds = %148, %45, %37
  %154 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %155 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @clk_disable_unprepare(i32 %156)
  br label %158

158:                                              ; preds = %153, %29
  %159 = load %struct.qcom_usb_hs_phy*, %struct.qcom_usb_hs_phy** %4, align 8
  %160 = getelementptr inbounds %struct.qcom_usb_hs_phy, %struct.qcom_usb_hs_phy* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @clk_disable_unprepare(i32 %161)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %158, %142, %20
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.qcom_usb_hs_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_set_load(i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_set_voltage_triplet(i32, i32, i32, i32) #1

declare dso_local i32 @ulpi_write(%struct.ulpi*, i64, i32) #1

declare dso_local i32 @reset_control_reset(i64) #1

declare dso_local i32 @extcon_get_state(i64, i32) #1

declare dso_local i32 @qcom_usb_hs_phy_vbus_notifier(i32*, i32, i64) #1

declare dso_local i32 @devm_extcon_register_notifier(i32*, i64, i32, i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
