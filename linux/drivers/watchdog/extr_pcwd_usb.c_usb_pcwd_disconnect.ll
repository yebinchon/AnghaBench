; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_pcwd_private = type { i32, i64 }

@disconnect_mutex = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@usb_pcwd_miscdev = common dso_local global i32 0, align 4
@usb_pcwd_temperature_miscdev = common dso_local global i32 0, align 4
@usb_pcwd_notifier = common dso_local global i32 0, align 4
@cards_found = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"USB PC Watchdog disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_pcwd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_pcwd_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_pcwd_private*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = call i32 @mutex_lock(i32* @disconnect_mutex)
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usb_pcwd_private* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.usb_pcwd_private* %6, %struct.usb_pcwd_private** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @usb_set_intfdata(%struct.usb_interface* %7, i32* null)
  %9 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %3, align 8
  %10 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @nowayout, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %3, align 8
  %16 = call i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %3, align 8
  %19 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = call i32 @misc_deregister(i32* @usb_pcwd_miscdev)
  %21 = call i32 @misc_deregister(i32* @usb_pcwd_temperature_miscdev)
  %22 = call i32 @unregister_reboot_notifier(i32* @usb_pcwd_notifier)
  %23 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %3, align 8
  %24 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %3, align 8
  %27 = call i32 @usb_pcwd_delete(%struct.usb_pcwd_private* %26)
  %28 = load i32, i32* @cards_found, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @cards_found, align 4
  %30 = call i32 @mutex_unlock(i32* @disconnect_mutex)
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.usb_pcwd_private* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_pcwd_stop(%struct.usb_pcwd_private*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_pcwd_delete(%struct.usb_pcwd_private*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
