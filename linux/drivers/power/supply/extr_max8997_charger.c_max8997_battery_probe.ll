; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8997_charger.c_max8997_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8997_charger.c_max8997_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.charger_data = type { i32, %struct.max8997_dev*, %struct.TYPE_4__* }
%struct.max8997_dev = type { i32, i32 }
%struct.max8997_platform_data = type { i32, i32 }
%struct.power_supply_config = type { %struct.charger_data* }

@EINVAL = common dso_local global i32 0, align 4
@MAX8997_REG_MBCCTRL5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Cannot use i2c bus.\0A\00", align 1
@MAX8997_REG_MBCCTRL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"incorrect timeout value (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max8997_battery_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8997_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.charger_data*, align 8
  %6 = alloca %struct.max8997_dev*, align 8
  %7 = alloca %struct.max8997_platform_data*, align 8
  %8 = alloca %struct.power_supply_config, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.max8997_dev* @dev_get_drvdata(i32 %13)
  store %struct.max8997_dev* %14, %struct.max8997_dev** %6, align 8
  %15 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %16 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.max8997_platform_data* @dev_get_platdata(i32 %17)
  store %struct.max8997_platform_data* %18, %struct.max8997_platform_data** %7, align 8
  %19 = bitcast %struct.power_supply_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %21 = icmp ne %struct.max8997_platform_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %145

25:                                               ; preds = %1
  %26 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %27 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 50
  %35 = sdiv i32 %34, 10
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 15
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 15, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %45 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAX8997_REG_MBCCTRL5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @max8997_update_reg(i32 %46, i32 %47, i32 %48, i32 15)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %145

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %25
  %59 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %60 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %86 [
    i32 5, label %62
    i32 6, label %68
    i32 7, label %74
    i32 0, label %80
  ]

62:                                               ; preds = %58
  %63 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %64 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAX8997_REG_MBCCTRL1, align 4
  %67 = call i32 @max8997_update_reg(i32 %65, i32 %66, i32 32, i32 112)
  store i32 %67, i32* %4, align 4
  br label %95

68:                                               ; preds = %58
  %69 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %70 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX8997_REG_MBCCTRL1, align 4
  %73 = call i32 @max8997_update_reg(i32 %71, i32 %72, i32 48, i32 112)
  store i32 %73, i32* %4, align 4
  br label %95

74:                                               ; preds = %58
  %75 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %76 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MAX8997_REG_MBCCTRL1, align 4
  %79 = call i32 @max8997_update_reg(i32 %77, i32 %78, i32 64, i32 112)
  store i32 %79, i32* %4, align 4
  br label %95

80:                                               ; preds = %58
  %81 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %82 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX8997_REG_MBCCTRL1, align 4
  %85 = call i32 @max8997_update_reg(i32 %83, i32 %84, i32 112, i32 112)
  store i32 %85, i32* %4, align 4
  br label %95

86:                                               ; preds = %58
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %90 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %145

95:                                               ; preds = %80, %74, %68, %62
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %145

103:                                              ; preds = %95
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.charger_data* @devm_kzalloc(%struct.TYPE_4__* %105, i32 24, i32 %106)
  store %struct.charger_data* %107, %struct.charger_data** %5, align 8
  %108 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %109 = icmp ne %struct.charger_data* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %145

113:                                              ; preds = %103
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %116 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.charger_data* %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %120 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %119, i32 0, i32 2
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %120, align 8
  %121 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %122 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %123 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %122, i32 0, i32 1
  store %struct.max8997_dev* %121, %struct.max8997_dev** %123, align 8
  %124 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %125 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 0
  store %struct.charger_data* %124, %struct.charger_data** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @devm_power_supply_register(%struct.TYPE_4__* %127, i32* @max8997_battery_desc, %struct.power_supply_config* %8)
  %129 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %130 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %132 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @IS_ERR(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %113
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.charger_data*, %struct.charger_data** %5, align 8
  %141 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @PTR_ERR(i32 %142)
  store i32 %143, i32* %2, align 4
  br label %145

144:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %136, %110, %98, %86, %52, %22
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.max8997_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8997_platform_data* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @max8997_update_reg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local %struct.charger_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.charger_data*) #1

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_4__*, i32*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
