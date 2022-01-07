; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_backlight_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_backlight_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32, i32, i32*, i32 }

@backlight_dev_list_mutex = common dso_local global i32 0, align 4
@backlight_notifier = common dso_local global i32 0, align 4
@BACKLIGHT_UNREGISTERED = common dso_local global i32 0, align 4
@pmac_backlight = common dso_local global %struct.backlight_device* null, align 8
@pmac_backlight_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_device_unregister(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %3 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %4 = icmp ne %struct.backlight_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = call i32 @mutex_lock(i32* @backlight_dev_list_mutex)
  %8 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 3
  %10 = call i32 @list_del(i32* %9)
  %11 = call i32 @mutex_unlock(i32* @backlight_dev_list_mutex)
  %12 = load i32, i32* @BACKLIGHT_UNREGISTERED, align 4
  %13 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %14 = call i32 @blocking_notifier_call_chain(i32* @backlight_notifier, i32 %12, %struct.backlight_device* %13)
  %15 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %16 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %21 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %24 = call i32 @backlight_unregister_fb(%struct.backlight_device* %23)
  %25 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = call i32 @device_unregister(i32* %26)
  br label %28

28:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.backlight_device*) #1

declare dso_local i32 @backlight_unregister_fb(%struct.backlight_device*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
