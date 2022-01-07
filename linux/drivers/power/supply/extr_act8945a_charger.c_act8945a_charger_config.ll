; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_charger_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_charger_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.act8945a_charger = type { i8*, i8*, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no charger of node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACT8945A_APCH_CFG = common dso_local global i32 0, align 4
@APCH_CFG_SUSCHG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"have been suspended\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"active-semi,lbo\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"unable to claim gpio \22lbo\22: %d\0A\00", align 1
@act8945a_status_changed = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"act8945a_lbo_detect\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to request gpio \22lbo\22 IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"active-semi,chglev\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"unable to claim gpio \22chglev\22: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"active-semi,input-voltage-threshold-microvolt\00", align 1
@DEFAULT_INPUT_OVP_THRESHOLD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"active-semi,precondition-timeout\00", align 1
@DEFAULT_PRE_TIME_OUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"active-semi,total-timeout\00", align 1
@DEFAULT_TOTAL_TIME_OUT = common dso_local global i32 0, align 4
@APCH_CFG_OVPSET_8V = common dso_local global i32 0, align 4
@APCH_CFG_OVPSET_7V5 = common dso_local global i32 0, align 4
@APCH_CFG_OVPSET_7V = common dso_local global i32 0, align 4
@APCH_CFG_OVPSET_6V6 = common dso_local global i32 0, align 4
@APCH_CFG_PRETIMO_60_MIN = common dso_local global i32 0, align 4
@APCH_CFG_PRETIMO_80_MIN = common dso_local global i32 0, align 4
@APCH_CFG_PRETIMO_DISABLED = common dso_local global i32 0, align 4
@APCH_CFG_PRETIMO_40_MIN = common dso_local global i32 0, align 4
@APCH_CFG_TOTTIMO_4_HOUR = common dso_local global i32 0, align 4
@APCH_CFG_TOTTIMO_5_HOUR = common dso_local global i32 0, align 4
@APCH_CFG_TOTTIMO_DISABLED = common dso_local global i32 0, align 4
@APCH_CFG_TOTTIMO_3_HOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.act8945a_charger*)* @act8945a_charger_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_charger_config(%struct.device* %0, %struct.act8945a_charger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.act8945a_charger*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.act8945a_charger* %1, %struct.act8945a_charger** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %19 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %18, i32 0, i32 2
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %7, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %184

28:                                               ; preds = %2
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = load i32, i32* @ACT8945A_APCH_CFG, align 4
  %31 = call i32 @regmap_read(%struct.regmap* %29, i32 %30, i32* %13)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %3, align 4
  br label %184

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @APCH_CFG_SUSCHG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @APCH_CFG_SUSCHG, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_info(%struct.device* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* @GPIOD_IN, align 4
  %50 = call i8* @devm_gpiod_get_optional(%struct.device* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %52 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %54 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %60 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %3, align 4
  br label %184

67:                                               ; preds = %47
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %70 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @gpiod_to_irq(i8* %71)
  %73 = load i32, i32* @act8945a_status_changed, align 4
  %74 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %75 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %78 = call i32 @devm_request_irq(%struct.device* %68, i32 %72, i32 %73, i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.act8945a_charger* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_info(%struct.device* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %67
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* @GPIOD_IN, align 4
  %87 = call i8* @devm_gpiod_get_optional(%struct.device* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %89 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %91 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %84
  %96 = load %struct.act8945a_charger*, %struct.act8945a_charger** %5, align 8
  %97 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %184

104:                                              ; preds = %84
  %105 = load %struct.device_node*, %struct.device_node** %6, align 8
  %106 = call i64 @of_property_read_u32(%struct.device_node* %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32* %10)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @DEFAULT_INPUT_OVP_THRESHOLD, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = load %struct.device_node*, %struct.device_node** %6, align 8
  %112 = call i64 @of_property_read_u32(%struct.device_node* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32* %9)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @DEFAULT_PRE_TIME_OUT, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %114, %110
  %117 = load %struct.device_node*, %struct.device_node** %6, align 8
  %118 = call i64 @of_property_read_u32(%struct.device_node* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32* %8)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @DEFAULT_TOTAL_TIME_OUT, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i32, i32* %10, align 4
  switch i32 %123, label %137 [
    i32 8000, label %124
    i32 7500, label %128
    i32 7000, label %132
    i32 6600, label %136
  ]

124:                                              ; preds = %122
  %125 = load i32, i32* @APCH_CFG_OVPSET_8V, align 4
  %126 = load i32, i32* %14, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %14, align 4
  br label %141

128:                                              ; preds = %122
  %129 = load i32, i32* @APCH_CFG_OVPSET_7V5, align 4
  %130 = load i32, i32* %14, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %141

132:                                              ; preds = %122
  %133 = load i32, i32* @APCH_CFG_OVPSET_7V, align 4
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %141

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %122, %136
  %138 = load i32, i32* @APCH_CFG_OVPSET_6V6, align 4
  %139 = load i32, i32* %14, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %137, %132, %128, %124
  %142 = load i32, i32* %9, align 4
  switch i32 %142, label %156 [
    i32 60, label %143
    i32 80, label %147
    i32 0, label %151
    i32 40, label %155
  ]

143:                                              ; preds = %141
  %144 = load i32, i32* @APCH_CFG_PRETIMO_60_MIN, align 4
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %160

147:                                              ; preds = %141
  %148 = load i32, i32* @APCH_CFG_PRETIMO_80_MIN, align 4
  %149 = load i32, i32* %14, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %14, align 4
  br label %160

151:                                              ; preds = %141
  %152 = load i32, i32* @APCH_CFG_PRETIMO_DISABLED, align 4
  %153 = load i32, i32* %14, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %14, align 4
  br label %160

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %141, %155
  %157 = load i32, i32* @APCH_CFG_PRETIMO_40_MIN, align 4
  %158 = load i32, i32* %14, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %156, %151, %147, %143
  %161 = load i32, i32* %8, align 4
  switch i32 %161, label %175 [
    i32 4, label %162
    i32 5, label %166
    i32 0, label %170
    i32 3, label %174
  ]

162:                                              ; preds = %160
  %163 = load i32, i32* @APCH_CFG_TOTTIMO_4_HOUR, align 4
  %164 = load i32, i32* %14, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %14, align 4
  br label %179

166:                                              ; preds = %160
  %167 = load i32, i32* @APCH_CFG_TOTTIMO_5_HOUR, align 4
  %168 = load i32, i32* %14, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %14, align 4
  br label %179

170:                                              ; preds = %160
  %171 = load i32, i32* @APCH_CFG_TOTTIMO_DISABLED, align 4
  %172 = load i32, i32* %14, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %14, align 4
  br label %179

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %160, %174
  %176 = load i32, i32* @APCH_CFG_TOTTIMO_3_HOUR, align 4
  %177 = load i32, i32* %14, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %175, %170, %166, %162
  %180 = load %struct.regmap*, %struct.regmap** %7, align 8
  %181 = load i32, i32* @ACT8945A_APCH_CFG, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @regmap_write(%struct.regmap* %180, i32 %181, i32 %182)
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %179, %95, %58, %34, %23
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.act8945a_charger*) #1

declare dso_local i32 @gpiod_to_irq(i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
