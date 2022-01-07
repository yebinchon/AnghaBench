; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_remove_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@REQUIRE_DELAYED_RFKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_remove_dev(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 12
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = load i32, i32* @REQUIRE_DELAYED_RFKILL, align 4
  %9 = call i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = call i32 @rt2x00rfkill_unregister(%struct.rt2x00_dev* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2x00lib_disable_radio(%struct.rt2x00_dev* %15)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 11
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %20, i32 0, i32 10
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 9
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 8
  %28 = call i32 @hrtimer_cancel(i32* %27)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 7
  %31 = call i32 @tasklet_kill(i32* %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 6
  %34 = call i32 @tasklet_kill(i32* %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %35, i32 0, i32 5
  %37 = call i32 @tasklet_kill(i32* %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 4
  %40 = call i32 @tasklet_kill(i32* %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 3
  %43 = call i32 @tasklet_kill(i32* %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2x00lib_uninitialize(%struct.rt2x00_dev* %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %14
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @destroy_workqueue(i64 %53)
  br label %55

55:                                               ; preds = %50, %14
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %56, i32 0, i32 1
  %58 = call i32 @kfifo_free(i32* %57)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %60 = call i32 @rt2x00debug_deregister(%struct.rt2x00_dev* %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = call i32 @rt2x00leds_unregister(%struct.rt2x00_dev* %61)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %64 = call i32 @rt2x00lib_remove_hw(%struct.rt2x00_dev* %63)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = call i32 @rt2x00lib_free_firmware(%struct.rt2x00_dev* %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %68 = call i32 @rt2x00queue_free(%struct.rt2x00_dev* %67)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @kfree(i32 %71)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00rfkill_unregister(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_disable_radio(%struct.rt2x00_dev*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @rt2x00lib_uninitialize(%struct.rt2x00_dev*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @rt2x00debug_deregister(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00leds_unregister(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_remove_hw(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_free_firmware(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00queue_free(%struct.rt2x00_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
