; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-spear.c_spear_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.spear_rtc_config = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@spear_rtc_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Alarm interrupt IRQ%d already claimed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@spear_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"can't register RTC device, err %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.spear_rtc_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.spear_rtc_config* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.spear_rtc_config* %11, %struct.spear_rtc_config** %5, align 8
  %12 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %13 = icmp ne %struct.spear_rtc_config* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %140

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i32 @platform_get_irq(%struct.platform_device* %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %140

24:                                               ; preds = %17
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @spear_rtc_irq, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %33 = call i32 @devm_request_irq(i32* %26, i32 %27, i32 %28, i32 0, i32 %31, %struct.spear_rtc_config* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %140

42:                                               ; preds = %24
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %4, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %4, align 8
  %49 = call %struct.TYPE_8__* @devm_ioremap_resource(i32* %47, %struct.resource* %48)
  %50 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %51 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %50, i32 0, i32 3
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %53 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i64 @IS_ERR(%struct.TYPE_8__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %59 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @PTR_ERR(%struct.TYPE_8__* %60)
  store i32 %61, i32* %2, align 4
  br label %140

62:                                               ; preds = %42
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call %struct.TYPE_8__* @devm_clk_get(i32* %64, i32* null)
  %66 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %67 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %66, i32 0, i32 0
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %69 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i64 @IS_ERR(%struct.TYPE_8__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %75 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = call i32 @PTR_ERR(%struct.TYPE_8__* %76)
  store i32 %77, i32* %2, align 4
  br label %140

78:                                               ; preds = %62
  %79 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %80 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = call i32 @clk_prepare_enable(%struct.TYPE_8__* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %140

87:                                               ; preds = %78
  %88 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %89 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %88, i32 0, i32 2
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %93 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.spear_rtc_config* %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @THIS_MODULE, align 4
  %100 = call %struct.TYPE_8__* @devm_rtc_device_register(i32* %95, i32 %98, i32* @spear_rtc_ops, i32 %99)
  %101 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %102 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %101, i32 0, i32 1
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %102, align 8
  %103 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %104 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call i64 @IS_ERR(%struct.TYPE_8__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %87
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %112 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @PTR_ERR(%struct.TYPE_8__* %113)
  %115 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %117 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = call i32 @PTR_ERR(%struct.TYPE_8__* %118)
  store i32 %119, i32* %6, align 4
  br label %134

120:                                              ; preds = %87
  %121 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %122 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @device_can_wakeup(i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %120
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @device_init_wakeup(i32* %131, i32 1)
  br label %133

133:                                              ; preds = %129, %120
  store i32 0, i32* %2, align 4
  br label %140

134:                                              ; preds = %108
  %135 = load %struct.spear_rtc_config*, %struct.spear_rtc_config** %5, align 8
  %136 = getelementptr inbounds %struct.spear_rtc_config, %struct.spear_rtc_config* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = call i32 @clk_disable_unprepare(%struct.TYPE_8__* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %134, %133, %85, %73, %57, %36, %22, %14
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.spear_rtc_config* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.spear_rtc_config*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spear_rtc_config*) #1

declare dso_local %struct.TYPE_8__* @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
