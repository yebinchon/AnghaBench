; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.port100 = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Sony Port-100 NFC device disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @port100_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port100_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.port100*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.port100* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.port100* %5, %struct.port100** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.port100*, %struct.port100** %3, align 8
  %9 = getelementptr inbounds %struct.port100, %struct.port100* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nfc_digital_unregister_device(i32 %10)
  %12 = load %struct.port100*, %struct.port100** %3, align 8
  %13 = getelementptr inbounds %struct.port100, %struct.port100* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nfc_digital_free_device(i32 %14)
  %16 = load %struct.port100*, %struct.port100** %3, align 8
  %17 = getelementptr inbounds %struct.port100, %struct.port100* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_kill_urb(i32 %18)
  %20 = load %struct.port100*, %struct.port100** %3, align 8
  %21 = getelementptr inbounds %struct.port100, %struct.port100* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_kill_urb(i32 %22)
  %24 = load %struct.port100*, %struct.port100** %3, align 8
  %25 = getelementptr inbounds %struct.port100, %struct.port100* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_free_urb(i32 %26)
  %28 = load %struct.port100*, %struct.port100** %3, align 8
  %29 = getelementptr inbounds %struct.port100, %struct.port100* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_free_urb(i32 %30)
  %32 = load %struct.port100*, %struct.port100** %3, align 8
  %33 = getelementptr inbounds %struct.port100, %struct.port100* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_put_dev(i32 %34)
  %36 = load %struct.port100*, %struct.port100** %3, align 8
  %37 = getelementptr inbounds %struct.port100, %struct.port100* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  %40 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = call i32 @nfc_info(i32* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.port100* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @nfc_digital_unregister_device(i32) #1

declare dso_local i32 @nfc_digital_free_device(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @nfc_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
