; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.da9052_pdata = type { i32 }
%struct.da9052_battery = type { %struct.TYPE_13__*, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.da9052_pdata* }
%struct.TYPE_10__ = type { i32 }
%struct.power_supply_config = type { %struct.da9052_battery* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9052_NOCHARGER = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@da9052_USB_current_notifier = common dso_local global i32 0, align 4
@psy_desc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@da9052_bat_irqs = common dso_local global i32* null, align 8
@da9052_bat_irq_bits = common dso_local global i32* null, align 8
@da9052_bat_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DA9052 failed to request %s IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_bat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_bat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9052_pdata*, align 8
  %5 = alloca %struct.da9052_battery*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.da9052_battery* @devm_kzalloc(%struct.TYPE_12__* %11, i32 32, i32 %12)
  store %struct.da9052_battery* %13, %struct.da9052_battery** %5, align 8
  %14 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %15 = icmp ne %struct.da9052_battery* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %141

19:                                               ; preds = %1
  %20 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %21 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.da9052_battery* %20, %struct.da9052_battery** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_13__* @dev_get_drvdata(i32 %25)
  %27 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %28 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %27, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %28, align 8
  %29 = load i32, i32* @DA9052_NOCHARGER, align 4
  %30 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %31 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %33 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %34 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  %36 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %37 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @da9052_USB_current_notifier, align 4
  %39 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %40 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %43 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.da9052_pdata*, %struct.da9052_pdata** %47, align 8
  store %struct.da9052_pdata* %48, %struct.da9052_pdata** %4, align 8
  %49 = load %struct.da9052_pdata*, %struct.da9052_pdata** %4, align 8
  %50 = icmp ne %struct.da9052_pdata* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %19
  %52 = load %struct.da9052_pdata*, %struct.da9052_pdata** %4, align 8
  %53 = getelementptr inbounds %struct.da9052_pdata, %struct.da9052_pdata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.da9052_pdata*, %struct.da9052_pdata** %4, align 8
  %58 = getelementptr inbounds %struct.da9052_pdata, %struct.da9052_pdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @psy_desc, i32 0, i32 0), align 4
  br label %61

60:                                               ; preds = %51, %19
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @psy_desc, i32 0, i32 0), align 4
  br label %61

61:                                               ; preds = %60, %56
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %100, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** @da9052_bat_irqs, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %69 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load i32*, i32** @da9052_bat_irq_bits, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @da9052_bat_irqs, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @da9052_bat_irq, align 4
  %82 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %83 = call i32 @da9052_request_irq(%struct.TYPE_13__* %70, i32 %75, i32 %80, i32 %81, %struct.da9052_battery* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %67
  %87 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %88 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i32*, i32** @da9052_bat_irqs, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @dev_err(%struct.TYPE_14__* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  br label %123

99:                                               ; preds = %67
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @power_supply_register(%struct.TYPE_12__* %105, %struct.TYPE_11__* @psy_desc, %struct.power_supply_config* %6)
  %107 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %108 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %110 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %103
  %115 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %116 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %7, align 4
  br label %123

119:                                              ; preds = %103
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %122 = call i32 @platform_set_drvdata(%struct.platform_device* %120, %struct.da9052_battery* %121)
  store i32 0, i32* %2, align 4
  br label %141

123:                                              ; preds = %114, %86
  br label %124

124:                                              ; preds = %128, %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %8, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %130 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = load i32*, i32** @da9052_bat_irq_bits, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %138 = call i32 @da9052_free_irq(%struct.TYPE_13__* %131, i32 %136, %struct.da9052_battery* %137)
  br label %124

139:                                              ; preds = %124
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %119, %16
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.da9052_battery* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #2

declare dso_local %struct.TYPE_13__* @dev_get_drvdata(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @da9052_request_irq(%struct.TYPE_13__*, i32, i32, i32, %struct.da9052_battery*) #2

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, i32, i32) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9052_battery*) #2

declare dso_local i32 @da9052_free_irq(%struct.TYPE_13__*, i32, %struct.da9052_battery*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
