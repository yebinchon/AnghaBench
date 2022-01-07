; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_hdq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.hdq_data*, i32, i32 }
%struct.hdq_data = type { i32, i32, i32, i64, i64, i32, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pm_runtime_get_sync failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@OMAP_HDQ_REVISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"OMAP HDQ Hardware Rev %c.%c. Driver in %s mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to get IRQ: %d\0A\00", align 1
@hdq_isr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"omap_hdq\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"could not request irq\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ti,mode\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"hdq\00", align 1
@omap_w1_search_bus = common dso_local global i32 0, align 4
@omap_w1_master = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@omap_w1_triplet = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Failure in registering w1 master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_hdq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hdq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hdq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hdq_data* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  store %struct.hdq_data* %14, %struct.hdq_data** %5, align 8
  %15 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %16 = icmp ne %struct.hdq_data* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %155

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %26 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %25, i32 0, i32 6
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.hdq_data* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %33 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %35 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %41 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %155

44:                                               ; preds = %23
  %45 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %46 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %48 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %50 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %49, i32 0, i32 2
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_enable(%struct.device* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_get_sync(%struct.device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %150

64:                                               ; preds = %44
  %65 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %66 = call i32 @_omap_hdq_reset(%struct.hdq_data* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %146

73:                                               ; preds = %64
  %74 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %75 = load i32, i32* @OMAP_HDQ_REVISION, align 4
  %76 = call i32 @hdq_reg_in(%struct.hdq_data* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 4
  %81 = add nsw i32 %80, 48
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 15
  %84 = add nsw i32 %83, 48
  %85 = call i32 @dev_info(%struct.device* %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %87 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %86, i32 0, i32 1
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @platform_get_irq(%struct.platform_device* %89, i32 0)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %73
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %6, align 4
  br label %146

99:                                               ; preds = %73
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @hdq_isr, align 4
  %103 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %104 = call i32 @devm_request_irq(%struct.device* %100, i32 %101, i32 %102, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.hdq_data* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %146

111:                                              ; preds = %99
  %112 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %113 = call i32 @omap_hdq_break(%struct.hdq_data* %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @pm_runtime_put_sync(%struct.device* %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @of_property_read_string(i32 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %9)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %111
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124, %111
  %129 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %130 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load i32, i32* @omap_w1_search_bus, align 4
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_w1_master, i32 0, i32 2), align 4
  br label %136

132:                                              ; preds = %124
  %133 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %134 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load i32, i32* @omap_w1_triplet, align 4
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_w1_master, i32 0, i32 1), align 8
  br label %136

136:                                              ; preds = %132, %128
  %137 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  store %struct.hdq_data* %137, %struct.hdq_data** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_w1_master, i32 0, i32 0), align 8
  %138 = call i32 @w1_add_master_device(%struct.TYPE_3__* @omap_w1_master)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %150

145:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %155

146:                                              ; preds = %107, %93, %69
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @pm_runtime_put_sync(%struct.device* %148)
  br label %150

150:                                              ; preds = %146, %141, %60
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @pm_runtime_disable(%struct.device* %152)
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %150, %145, %39, %17
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.hdq_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hdq_data*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @_omap_hdq_reset(%struct.hdq_data*) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.hdq_data*) #1

declare dso_local i32 @omap_hdq_break(%struct.hdq_data*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @w1_add_master_device(%struct.TYPE_3__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
