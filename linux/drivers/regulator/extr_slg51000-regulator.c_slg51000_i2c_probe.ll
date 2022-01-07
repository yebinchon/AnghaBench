; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.slg51000 = type { i32, %struct.device*, %struct.gpio_desc*, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dlg,cs\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Found chip selector property\0A\00", align 1
@slg51000_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to init regulator(%d)\0A\00", align 1
@slg51000_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"slg51000-irq\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @slg51000_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slg51000_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.slg51000*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.slg51000* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.slg51000* %15, %struct.slg51000** %7, align 8
  %16 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %17 = icmp ne %struct.slg51000* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %117

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %24 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  store %struct.gpio_desc* %26, %struct.gpio_desc** %8, align 8
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %28 = call i64 @IS_ERR(%struct.gpio_desc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.gpio_desc* %31)
  store i32 %32, i32* %3, align 4
  br label %117

33:                                               ; preds = %21
  %34 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %35 = icmp ne %struct.gpio_desc* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @dev_info(%struct.device* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %40 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %41 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %40, i32 0, i32 3
  store %struct.gpio_desc* %39, %struct.gpio_desc** %41, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %45 = call i32 @i2c_set_clientdata(%struct.i2c_client* %43, %struct.slg51000* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %50 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %53 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %52, i32 0, i32 1
  store %struct.device* %51, %struct.device** %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = call %struct.gpio_desc* @devm_regmap_init_i2c(%struct.i2c_client* %54, i32* @slg51000_regmap_config)
  %56 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %57 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %56, i32 0, i32 2
  store %struct.gpio_desc* %55, %struct.gpio_desc** %57, align 8
  %58 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %59 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %58, i32 0, i32 2
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %59, align 8
  %61 = call i64 @IS_ERR(%struct.gpio_desc* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %42
  %64 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %65 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %64, i32 0, i32 2
  %66 = load %struct.gpio_desc*, %struct.gpio_desc** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.gpio_desc* %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %117

72:                                               ; preds = %42
  %73 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %74 = call i32 @slg51000_regulator_init(%struct.slg51000* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %79 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %78, i32 0, i32 1
  %80 = load %struct.device*, %struct.device** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %117

84:                                               ; preds = %72
  %85 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %86 = call i32 @slg51000_clear_fault_log(%struct.slg51000* %85)
  %87 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %88 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %84
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %94 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @slg51000_irq_handler, align 4
  %97 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %98 = load i32, i32* @IRQF_ONESHOT, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %101 = call i32 @devm_request_threaded_irq(%struct.device* %92, i32 %95, i32* null, i32 %96, i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.slg51000* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %91
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = load %struct.slg51000*, %struct.slg51000** %7, align 8
  %107 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %117

111:                                              ; preds = %91
  br label %115

112:                                              ; preds = %84
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = call i32 @dev_info(%struct.device* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %111
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %104, %77, %63, %30, %18
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.slg51000* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.slg51000*) #1

declare dso_local %struct.gpio_desc* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @slg51000_regulator_init(%struct.slg51000*) #1

declare dso_local i32 @slg51000_clear_fault_log(%struct.slg51000*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.slg51000*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
