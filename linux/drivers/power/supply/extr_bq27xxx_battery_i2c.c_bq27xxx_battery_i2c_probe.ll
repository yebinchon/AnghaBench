; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_i2c.c_bq27xxx_battery_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.bq27xxx_device_info = type { i32, i8*, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@battery_mutex = common dso_local global i32 0, align 4
@battery_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@bq27xxx_battery_i2c_read = common dso_local global i32 0, align 4
@bq27xxx_battery_i2c_write = common dso_local global i32 0, align 4
@bq27xxx_battery_i2c_bulk_read = common dso_local global i32 0, align 4
@bq27xxx_battery_i2c_bulk_write = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@bq27xxx_battery_irq_handler_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to register IRQ %d error %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bq27xxx_battery_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bq27xxx_device_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = call i32 @mutex_lock(i32* @battery_mutex)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @idr_alloc(i32* @battery_id, %struct.i2c_client* %11, i32 0, i32 0, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = call i32 @mutex_unlock(i32* @battery_mutex)
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %124

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @devm_kasprintf(i32* %21, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %115

31:                                               ; preds = %19
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.bq27xxx_device_info* @devm_kzalloc(i32* %33, i32 48, i32 %34)
  store %struct.bq27xxx_device_info* %35, %struct.bq27xxx_device_info** %6, align 8
  %36 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %37 = icmp ne %struct.bq27xxx_device_info* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %115

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %42 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %46 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %51 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %54 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @bq27xxx_battery_i2c_read, align 4
  %56 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %57 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @bq27xxx_battery_i2c_write, align 4
  %60 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %61 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @bq27xxx_battery_i2c_bulk_read, align 4
  %64 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %65 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @bq27xxx_battery_i2c_bulk_write, align 4
  %68 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %69 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %72 = call i32 @bq27xxx_battery_setup(%struct.bq27xxx_device_info* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %39
  br label %118

76:                                               ; preds = %39
  %77 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %78 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %77, i32 0, i32 2
  %79 = load i32, i32* @HZ, align 4
  %80 = mul nsw i32 60, %79
  %81 = call i32 @schedule_delayed_work(i32* %78, i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %84 = call i32 @i2c_set_clientdata(%struct.i2c_client* %82, %struct.bq27xxx_device_info* %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %76
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 1
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @bq27xxx_battery_irq_handler_thread, align 4
  %96 = load i32, i32* @IRQF_ONESHOT, align 4
  %97 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %98 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %101 = call i32 @devm_request_threaded_irq(i32* %91, i64 %94, i32* null, i32 %95, i32 %96, i8* %99, %struct.bq27xxx_device_info* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %89
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 1
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %124

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %76
  store i32 0, i32* %3, align 4
  br label %124

115:                                              ; preds = %38, %30
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %75
  %119 = call i32 @mutex_lock(i32* @battery_mutex)
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @idr_remove(i32* @battery_id, i32 %120)
  %122 = call i32 @mutex_unlock(i32* @battery_mutex)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %114, %104, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @devm_kasprintf(i32*, i32, i8*, i32, i32) #1

declare dso_local %struct.bq27xxx_device_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @bq27xxx_battery_setup(%struct.bq27xxx_device_info*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bq27xxx_device_info*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.bq27xxx_device_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
