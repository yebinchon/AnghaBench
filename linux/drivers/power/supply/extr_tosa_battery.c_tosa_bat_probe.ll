; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_bat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_bat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.platform_device = type { i32 }
%struct.power_supply_config = type { %struct.TYPE_6__* }

@ENODEV = common dso_local global i32 0, align 4
@tosa_bat_gpios = common dso_local global i32 0, align 4
@tosa_bat_main = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@tosa_bat_jacket = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@bat_work = common dso_local global i32 0, align 4
@tosa_bat_work = common dso_local global i32 0, align 4
@tosa_bat_main_desc = common dso_local global i32 0, align 4
@tosa_bat_jacket_desc = common dso_local global i32 0, align 4
@tosa_bat_bu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@tosa_bat_bu_desc = common dso_local global i32 0, align 4
@TOSA_GPIO_BAT0_CRG = common dso_local global i32 0, align 4
@tosa_bat_gpio_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"main full\00", align 1
@TOSA_GPIO_BAT1_CRG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"jacket full\00", align 1
@TOSA_GPIO_JACKET_DETECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"jacket detect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tosa_bat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_bat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.power_supply_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  %11 = call i32 (...) @machine_is_tosa()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %120

16:                                               ; preds = %1
  %17 = load i32, i32* @tosa_bat_gpios, align 4
  %18 = load i32, i32* @tosa_bat_gpios, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @gpio_request_array(i32 %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %120

25:                                               ; preds = %16
  %26 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_main, i32 0, i32 1))
  %27 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_jacket, i32 0, i32 1))
  %28 = load i32, i32* @tosa_bat_work, align 4
  %29 = call i32 @INIT_WORK(i32* @bat_work, i32 %28)
  %30 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.TYPE_6__* @tosa_bat_main, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i8* @power_supply_register(i32* %32, i32* @tosa_bat_main_desc, %struct.power_supply_config* %5)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_main, i32 0, i32 0), align 8
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_main, i32 0, i32 0), align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_main, i32 0, i32 0), align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %4, align 4
  br label %113

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.TYPE_6__* @tosa_bat_jacket, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i8* @power_supply_register(i32* %43, i32* @tosa_bat_jacket_desc, %struct.power_supply_config* %6)
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_jacket, i32 0, i32 0), align 8
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_jacket, i32 0, i32 0), align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_jacket, i32 0, i32 0), align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %4, align 4
  br label %110

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store %struct.TYPE_6__* @tosa_bat_bu, %struct.TYPE_6__** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i8* @power_supply_register(i32* %54, i32* @tosa_bat_bu_desc, %struct.power_supply_config* %7)
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_bu, i32 0, i32 0), align 8
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_bu, i32 0, i32 0), align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_bu, i32 0, i32 0), align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %4, align 4
  br label %107

62:                                               ; preds = %51
  %63 = load i32, i32* @TOSA_GPIO_BAT0_CRG, align 4
  %64 = call i32 @gpio_to_irq(i32 %63)
  %65 = load i32, i32* @tosa_bat_gpio_isr, align 4
  %66 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %67 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @request_irq(i32 %64, i32 %65, i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* @tosa_bat_main)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %104

73:                                               ; preds = %62
  %74 = load i32, i32* @TOSA_GPIO_BAT1_CRG, align 4
  %75 = call i32 @gpio_to_irq(i32 %74)
  %76 = load i32, i32* @tosa_bat_gpio_isr, align 4
  %77 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %78 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @request_irq(i32 %75, i32 %76, i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* @tosa_bat_jacket)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %100

84:                                               ; preds = %73
  %85 = load i32, i32* @TOSA_GPIO_JACKET_DETECT, align 4
  %86 = call i32 @gpio_to_irq(i32 %85)
  %87 = load i32, i32* @tosa_bat_gpio_isr, align 4
  %88 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %89 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @request_irq(i32 %86, i32 %87, i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* @tosa_bat_jacket)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %84
  %95 = call i32 @schedule_work(i32* @bat_work)
  store i32 0, i32* %2, align 4
  br label %120

96:                                               ; preds = %84
  %97 = load i32, i32* @TOSA_GPIO_BAT1_CRG, align 4
  %98 = call i32 @gpio_to_irq(i32 %97)
  %99 = call i32 @free_irq(i32 %98, %struct.TYPE_6__* @tosa_bat_jacket)
  br label %100

100:                                              ; preds = %96, %83
  %101 = load i32, i32* @TOSA_GPIO_BAT0_CRG, align 4
  %102 = call i32 @gpio_to_irq(i32 %101)
  %103 = call i32 @free_irq(i32 %102, %struct.TYPE_6__* @tosa_bat_main)
  br label %104

104:                                              ; preds = %100, %72
  %105 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_bu, i32 0, i32 0), align 8
  %106 = call i32 @power_supply_unregister(i8* %105)
  br label %107

107:                                              ; preds = %104, %59
  %108 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_jacket, i32 0, i32 0), align 8
  %109 = call i32 @power_supply_unregister(i8* %108)
  br label %110

110:                                              ; preds = %107, %48
  %111 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tosa_bat_main, i32 0, i32 0), align 8
  %112 = call i32 @power_supply_unregister(i8* %111)
  br label %113

113:                                              ; preds = %110, %37
  %114 = call i32 @cancel_work_sync(i32* @bat_work)
  %115 = load i32, i32* @tosa_bat_gpios, align 4
  %116 = load i32, i32* @tosa_bat_gpios, align 4
  %117 = call i32 @ARRAY_SIZE(i32 %116)
  %118 = call i32 @gpio_free_array(i32 %115, i32 %117)
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %113, %94, %23, %13
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @machine_is_tosa(...) #2

declare dso_local i32 @gpio_request_array(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i8* @power_supply_register(i32*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @gpio_to_irq(i32) #2

declare dso_local i32 @schedule_work(i32*) #2

declare dso_local i32 @free_irq(i32, %struct.TYPE_6__*) #2

declare dso_local i32 @power_supply_unregister(i8*) #2

declare dso_local i32 @cancel_work_sync(i32*) #2

declare dso_local i32 @gpio_free_array(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
