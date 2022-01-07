; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_driver_set_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_driver_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.set_config_request = type { i32, i32, i32, %struct.usb_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@driver_set_config_work = common dso_local global i32 0, align 4
@set_config_lock = common dso_local global i32 0, align 4
@set_config_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_driver_set_configuration(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.set_config_request*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.set_config_request* @kmalloc(i32 24, i32 %7)
  store %struct.set_config_request* %8, %struct.set_config_request** %6, align 8
  %9 = load %struct.set_config_request*, %struct.set_config_request** %6, align 8
  %10 = icmp ne %struct.set_config_request* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = load %struct.set_config_request*, %struct.set_config_request** %6, align 8
  %17 = getelementptr inbounds %struct.set_config_request, %struct.set_config_request* %16, i32 0, i32 3
  store %struct.usb_device* %15, %struct.usb_device** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.set_config_request*, %struct.set_config_request** %6, align 8
  %20 = getelementptr inbounds %struct.set_config_request, %struct.set_config_request* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.set_config_request*, %struct.set_config_request** %6, align 8
  %22 = getelementptr inbounds %struct.set_config_request, %struct.set_config_request* %21, i32 0, i32 1
  %23 = load i32, i32* @driver_set_config_work, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = call i32 @spin_lock(i32* @set_config_lock)
  %26 = load %struct.set_config_request*, %struct.set_config_request** %6, align 8
  %27 = getelementptr inbounds %struct.set_config_request, %struct.set_config_request* %26, i32 0, i32 2
  %28 = call i32 @list_add(i32* %27, i32* @set_config_list)
  %29 = call i32 @spin_unlock(i32* @set_config_lock)
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = call i32 @usb_get_dev(%struct.usb_device* %30)
  %32 = load %struct.set_config_request*, %struct.set_config_request** %6, align 8
  %33 = getelementptr inbounds %struct.set_config_request, %struct.set_config_request* %32, i32 0, i32 1
  %34 = call i32 @schedule_work(i32* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %14, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.set_config_request* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
