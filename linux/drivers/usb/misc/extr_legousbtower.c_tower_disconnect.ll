; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.lego_usb_tower = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@tower_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"LEGO USB Tower #%d now disconnected\0A\00", align 1
@LEGO_USB_TOWER_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @tower_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tower_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.lego_usb_tower*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.lego_usb_tower* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.lego_usb_tower* %6, %struct.lego_usb_tower** %3, align 8
  %7 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %8 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_deregister_dev(%struct.usb_interface* %10, i32* @tower_class)
  %12 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %13 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_poison_urb(i32 %14)
  %16 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %17 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_poison_urb(i32 %18)
  %20 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %21 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %24 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %29 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %28, i32 0, i32 2
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %32 = call i32 @tower_delete(%struct.lego_usb_tower* %31)
  br label %45

33:                                               ; preds = %1
  %34 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %35 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %37 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %36, i32 0, i32 4
  %38 = call i32 @wake_up_interruptible_all(i32* %37)
  %39 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %40 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %39, i32 0, i32 3
  %41 = call i32 @wake_up_interruptible_all(i32* %40)
  %42 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %3, align 8
  %43 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %33, %27
  %46 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @LEGO_USB_TOWER_MINOR_BASE, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %51)
  ret void
}

declare dso_local %struct.lego_usb_tower* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_poison_urb(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tower_delete(%struct.lego_usb_tower*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
