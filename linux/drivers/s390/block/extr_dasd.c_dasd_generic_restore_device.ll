; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_restore_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_restore_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.dasd_device*)* }

@DASD_STOPPED_PM = common dso_local global i32 0, align 4
@DASD_UNRESUMED_PM = common dso_local global i32 0, align 4
@DASD_FLAG_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_restore_device(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %6)
  store %struct.dasd_device* %7, %struct.dasd_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.dasd_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.dasd_device* %12)
  store i32 %13, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = load i32, i32* @DASD_STOPPED_PM, align 4
  %17 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @dasd_device_remove_stop_bits(%struct.dasd_device* %15, i32 %18)
  %20 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %21 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %25, align 8
  %27 = icmp ne i32 (%struct.dasd_device*)* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %14
  %29 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %37, align 8
  %39 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %40 = call i32 %38(%struct.dasd_device* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %28, %14
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %46 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %51 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @dasd_schedule_block_bh(%struct.TYPE_4__* %63)
  %65 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %66 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %73 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @blk_mq_run_hw_queues(i64 %76, i32 1)
  br label %78

78:                                               ; preds = %71, %60
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i32, i32* @DASD_FLAG_SUSPENDED, align 4
  %81 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %82 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %81, i32 0, i32 1
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  %84 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %85 = call i32 @dasd_put_device(%struct.dasd_device* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_block_bh(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_mq_run_hw_queues(i64, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
