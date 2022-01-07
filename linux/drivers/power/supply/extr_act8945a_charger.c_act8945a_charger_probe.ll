; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.act8945a_charger = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32 }
%struct.power_supply_config = type { %struct.act8945a_charger*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Parent did not provide regmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to find IRQ number\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@act8945a_status_changed = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"act8945a_interrupt\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to request nIRQ pin IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"act8945a-charger\00", align 1
@act8945a_charger_get_property = common dso_local global i32 0, align 4
@act8945a_charger_props = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to register power supply\0A\00", align 1
@act8945a_work = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @act8945a_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.act8945a_charger*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.act8945a_charger* @devm_kzalloc(%struct.TYPE_7__* %10, i32 48, i32 %11)
  store %struct.act8945a_charger* %12, %struct.act8945a_charger** %4, align 8
  %13 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %14 = icmp ne %struct.act8945a_charger* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %153

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_get_regmap(i32 %22, i32* null)
  %24 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %25 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %27 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %153

36:                                               ; preds = %18
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %40 = call i32 @act8945a_charger_config(%struct.TYPE_7__* %38, %struct.act8945a_charger* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %153

45:                                               ; preds = %36
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @of_irq_get(i32 %49, i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_7__* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  br label %63

63:                                               ; preds = %60, %59
  %64 = phi i32 [ %57, %59 ], [ %62, %60 ]
  store i32 %64, i32* %2, align 4
  br label %153

65:                                               ; preds = %45
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @act8945a_status_changed, align 4
  %70 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %71 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %72 = call i32 @devm_request_irq(%struct.TYPE_7__* %67, i32 %68, i32 %69, i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.act8945a_charger* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_err(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %153

80:                                               ; preds = %65
  %81 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %82 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %83, align 8
  %84 = load i32, i32* @act8945a_charger_get_property, align 4
  %85 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %86 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @act8945a_charger_props, align 4
  %89 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %90 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @act8945a_charger_props, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %95 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %98 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %99 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = call i32 @act8945a_set_supply_type(%struct.act8945a_charger* %97, i32* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %80
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %153

107:                                              ; preds = %80
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store i32 %111, i32* %112, align 8
  %113 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %114 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.act8945a_charger* %113, %struct.act8945a_charger** %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %118 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %117, i32 0, i32 3
  %119 = call i32 @devm_power_supply_register(%struct.TYPE_7__* %116, %struct.TYPE_8__* %118, %struct.power_supply_config* %5)
  %120 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %121 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %123 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @IS_ERR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %107
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @dev_err(%struct.TYPE_7__* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %132 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @PTR_ERR(i32 %133)
  store i32 %134, i32* %2, align 4
  br label %153

135:                                              ; preds = %107
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %138 = call i32 @platform_set_drvdata(%struct.platform_device* %136, %struct.act8945a_charger* %137)
  %139 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %140 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %139, i32 0, i32 1
  %141 = load i32, i32* @act8945a_work, align 4
  %142 = call i32 @INIT_WORK(i32* %140, i32 %141)
  %143 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %144 = call i32 @act8945a_enable_interrupt(%struct.act8945a_charger* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %153

150:                                              ; preds = %135
  %151 = load %struct.act8945a_charger*, %struct.act8945a_charger** %4, align 8
  %152 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %150, %147, %127, %104, %75, %63, %43, %30, %15
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.act8945a_charger* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @act8945a_charger_config(%struct.TYPE_7__*, %struct.act8945a_charger*) #2

declare dso_local i32 @of_irq_get(i32, i32) #2

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i32, i32, i32, i8*, %struct.act8945a_charger*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @act8945a_set_supply_type(%struct.act8945a_charger*, i32*) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.act8945a_charger*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @act8945a_enable_interrupt(%struct.act8945a_charger*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
