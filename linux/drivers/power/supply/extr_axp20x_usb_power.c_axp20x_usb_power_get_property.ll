; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp20x_usb_power = type { i32, i32, i32, i32 }

@AXP20X_VBUS_IPSOUT_MGMT = common dso_local global i32 0, align 4
@CONFIG_AXP20X_ADC = common dso_local global i32 0, align 4
@AXP20X_VBUS_V_ADC_H = common dso_local global i32 0, align 4
@AXP813_ID = common dso_local global i32 0, align 4
@AXP20X_VBUS_I_ADC_H = common dso_local global i32 0, align 4
@AXP20X_PWR_INPUT_STATUS = common dso_local global i32 0, align 4
@AXP20X_PWR_STATUS_VBUS_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@AXP202_ID = common dso_local global i32 0, align 4
@AXP20X_USB_OTG_STATUS = common dso_local global i32 0, align 4
@AXP20X_USB_STATUS_VBUS_VALID = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@AXP20X_PWR_STATUS_VBUS_USED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @axp20x_usb_power_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_usb_power_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.axp20x_usb_power*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %13 = call %struct.axp20x_usb_power* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.axp20x_usb_power* %13, %struct.axp20x_usb_power** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %116 [
    i32 129, label %15
    i32 128, label %30
    i32 134, label %65
    i32 133, label %81
  ]

15:                                               ; preds = %3
  %16 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %17 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AXP20X_VBUS_IPSOUT_MGMT, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %192

25:                                               ; preds = %15
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @AXP20X_VBUS_VHOLD_uV(i32 %26)
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %192

30:                                               ; preds = %3
  %31 = load i32, i32* @CONFIG_AXP20X_ADC, align 4
  %32 = call i32 @IS_ENABLED(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %36 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  %40 = call i32 @iio_read_channel_processed(i32 %37, i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %192

45:                                               ; preds = %34
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 1000
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %192

50:                                               ; preds = %30
  %51 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %52 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AXP20X_VBUS_V_ADC_H, align 4
  %55 = call i32 @axp20x_read_variable_width(i32 %53, i32 %54, i32 12)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %192

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 1700
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %192

65:                                               ; preds = %3
  %66 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %67 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AXP813_ID, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  %75 = call i32 @axp813_get_current_max(%struct.axp20x_usb_power* %72, i32* %74)
  store i32 %75, i32* %4, align 4
  br label %192

76:                                               ; preds = %65
  %77 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %78 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %79 = bitcast %union.power_supply_propval* %78 to i32*
  %80 = call i32 @axp20x_get_current_max(%struct.axp20x_usb_power* %77, i32* %79)
  store i32 %80, i32* %4, align 4
  br label %192

81:                                               ; preds = %3
  %82 = load i32, i32* @CONFIG_AXP20X_ADC, align 4
  %83 = call i32 @IS_ENABLED(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %87 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %90 = bitcast %union.power_supply_propval* %89 to i32*
  %91 = call i32 @iio_read_channel_processed(i32 %88, i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %192

96:                                               ; preds = %85
  %97 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %98 = bitcast %union.power_supply_propval* %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 1000
  store i32 %100, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %192

101:                                              ; preds = %81
  %102 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %103 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AXP20X_VBUS_I_ADC_H, align 4
  %106 = call i32 @axp20x_read_variable_width(i32 %104, i32 %105, i32 12)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %192

111:                                              ; preds = %101
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %112, 375
  %114 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %115 = bitcast %union.power_supply_propval* %114 to i32*
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %4, align 4
  br label %192

116:                                              ; preds = %3
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %119 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %122 = call i32 @regmap_read(i32 %120, i32 %121, i32* %9)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %4, align 4
  br label %192

127:                                              ; preds = %117
  %128 = load i32, i32* %6, align 4
  switch i32 %128, label %188 [
    i32 132, label %129
    i32 130, label %168
    i32 131, label %178
  ]

129:                                              ; preds = %127
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @AXP20X_PWR_STATUS_VBUS_PRESENT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  %136 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %137 = bitcast %union.power_supply_propval* %136 to i32*
  store i32 %135, i32* %137, align 4
  br label %191

138:                                              ; preds = %129
  %139 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %140 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %141 = bitcast %union.power_supply_propval* %140 to i32*
  store i32 %139, i32* %141, align 4
  %142 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %143 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AXP202_ID, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %138
  %148 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %8, align 8
  %149 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AXP20X_USB_OTG_STATUS, align 4
  %152 = call i32 @regmap_read(i32 %150, i32 %151, i32* %10)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %4, align 4
  br label %192

157:                                              ; preds = %147
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @AXP20X_USB_STATUS_VBUS_VALID, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %164 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %165 = bitcast %union.power_supply_propval* %164 to i32*
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %157
  br label %167

167:                                              ; preds = %166, %138
  br label %191

168:                                              ; preds = %127
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @AXP20X_PWR_STATUS_VBUS_PRESENT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %177 = bitcast %union.power_supply_propval* %176 to i32*
  store i32 %175, i32* %177, align 4
  br label %191

178:                                              ; preds = %127
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @AXP20X_PWR_STATUS_VBUS_USED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %187 = bitcast %union.power_supply_propval* %186 to i32*
  store i32 %185, i32* %187, align 4
  br label %191

188:                                              ; preds = %127
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %4, align 4
  br label %192

191:                                              ; preds = %178, %168, %167, %134
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %191, %188, %155, %125, %111, %109, %96, %94, %76, %71, %60, %58, %45, %43, %25, %23
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local %struct.axp20x_usb_power* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @AXP20X_VBUS_VHOLD_uV(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @iio_read_channel_processed(i32, i32*) #1

declare dso_local i32 @axp20x_read_variable_width(i32, i32, i32) #1

declare dso_local i32 @axp813_get_current_max(%struct.axp20x_usb_power*, i32*) #1

declare dso_local i32 @axp20x_get_current_max(%struct.axp20x_usb_power*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
