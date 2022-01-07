; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65217_charger.c_tps65217_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65217_charger.c_tps65217_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tps65217 = type { i32 }
%struct.tps65217_charger = type { %struct.TYPE_5__*, %struct.task_struct*, %struct.task_struct*, %struct.tps65217* }
%struct.task_struct = type { i32 }
%struct.power_supply_config = type { %struct.tps65217_charger*, i32 }

@NUM_CHARGER_IRQS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65217_charger_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"charger config failed, err %d\0A\00", align 1
@tps65217_charger_poll_task = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"ktps65217charger\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unable to run kthread err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"tps65217-charger\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unable to register irq %d err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65217_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65217*, align 8
  %5 = alloca %struct.tps65217_charger*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.tps65217* @dev_get_drvdata(i32 %16)
  store %struct.tps65217* %17, %struct.tps65217** %4, align 8
  %18 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i32, i32* @NUM_CHARGER_IRQS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.tps65217_charger* @devm_kzalloc(%struct.TYPE_5__* %24, i32 32, i32 %25)
  store %struct.tps65217_charger* %26, %struct.tps65217_charger** %5, align 8
  %27 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %28 = icmp ne %struct.tps65217_charger* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %148

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.tps65217_charger* %34)
  %36 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %37 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %38 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %37, i32 0, i32 3
  store %struct.tps65217* %36, %struct.tps65217** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %42 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %41, i32 0, i32 0
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %49 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.tps65217_charger* %48, %struct.tps65217_charger** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call %struct.task_struct* @devm_power_supply_register(%struct.TYPE_5__* %51, i32* @tps65217_charger_desc, %struct.power_supply_config* %6)
  %53 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %54 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %53, i32 0, i32 2
  store %struct.task_struct* %52, %struct.task_struct** %54, align 8
  %55 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %56 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %55, i32 0, i32 2
  %57 = load %struct.task_struct*, %struct.task_struct** %56, align 8
  %58 = call i64 @IS_ERR(%struct.task_struct* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %32
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %65 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %64, i32 0, i32 2
  %66 = load %struct.task_struct*, %struct.task_struct** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.task_struct* %66)
  store i32 %67, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %148

68:                                               ; preds = %32
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @platform_get_irq_byname(%struct.platform_device* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %71 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %70, i32* %71, align 16
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call i32 @platform_get_irq_byname(%struct.platform_device* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %74 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %76 = call i32 @tps65217_config_charger(%struct.tps65217_charger* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %81 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %148

86:                                               ; preds = %68
  %87 = getelementptr inbounds i32, i32* %22, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds i32, i32* %22, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @tps65217_charger_poll_task, align 4
  %96 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %97 = call %struct.task_struct* @kthread_run(i32 %95, %struct.tps65217_charger* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store %struct.task_struct* %97, %struct.task_struct** %7, align 8
  %98 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %99 = call i64 @IS_ERR(%struct.task_struct* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %103 = call i32 @PTR_ERR(%struct.task_struct* %102)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %105 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %148

110:                                              ; preds = %94
  %111 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %112 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %113 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %112, i32 0, i32 1
  store %struct.task_struct* %111, %struct.task_struct** %113, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %148

114:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %144, %114
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @NUM_CHARGER_IRQS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %115
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %22, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %127 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %121, i32 %125, i32* null, i32 (i32, %struct.tps65217_charger*)* @tps65217_charger_irq, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.tps65217_charger* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %119
  %131 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %132 = getelementptr inbounds %struct.tps65217_charger, %struct.tps65217_charger* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %22, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %148

141:                                              ; preds = %119
  %142 = load %struct.tps65217_charger*, %struct.tps65217_charger** %5, align 8
  %143 = call i32 @tps65217_charger_irq(i32 -1, %struct.tps65217_charger* %142)
  br label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %115

147:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %148

148:                                              ; preds = %147, %130, %110, %101, %79, %60, %29
  %149 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.tps65217* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local %struct.tps65217_charger* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65217_charger*) #1

declare dso_local %struct.task_struct* @devm_power_supply_register(%struct.TYPE_5__*, i32*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @tps65217_config_charger(%struct.tps65217_charger*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.tps65217_charger*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i32, i32*, i32 (i32, %struct.tps65217_charger*)*, i32, i8*, %struct.tps65217_charger*) #1

declare dso_local i32 @tps65217_charger_irq(i32, %struct.tps65217_charger*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
