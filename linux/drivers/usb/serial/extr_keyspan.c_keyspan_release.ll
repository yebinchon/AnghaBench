; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.keyspan_serial_private = type { %struct.keyspan_serial_private*, %struct.keyspan_serial_private*, %struct.keyspan_serial_private*, %struct.keyspan_serial_private*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*)* @keyspan_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_release(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca %struct.keyspan_serial_private*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %4 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %5 = call %struct.keyspan_serial_private* @usb_get_serial_data(%struct.usb_serial* %4)
  store %struct.keyspan_serial_private* %5, %struct.keyspan_serial_private** %3, align 8
  %6 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %7 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @usb_kill_urb(i32 %8)
  %10 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %11 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_kill_urb(i32 %12)
  %14 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %15 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_free_urb(i32 %16)
  %18 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %19 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_free_urb(i32 %20)
  %22 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %23 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_free_urb(i32 %24)
  %26 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %27 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %26, i32 0, i32 3
  %28 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %27, align 8
  %29 = call i32 @kfree(%struct.keyspan_serial_private* %28)
  %30 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %31 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %30, i32 0, i32 2
  %32 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %31, align 8
  %33 = call i32 @kfree(%struct.keyspan_serial_private* %32)
  %34 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %35 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %34, i32 0, i32 1
  %36 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %35, align 8
  %37 = call i32 @kfree(%struct.keyspan_serial_private* %36)
  %38 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %39 = getelementptr inbounds %struct.keyspan_serial_private, %struct.keyspan_serial_private* %38, i32 0, i32 0
  %40 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %39, align 8
  %41 = call i32 @kfree(%struct.keyspan_serial_private* %40)
  %42 = load %struct.keyspan_serial_private*, %struct.keyspan_serial_private** %3, align 8
  %43 = call i32 @kfree(%struct.keyspan_serial_private* %42)
  ret void
}

declare dso_local %struct.keyspan_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.keyspan_serial_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
