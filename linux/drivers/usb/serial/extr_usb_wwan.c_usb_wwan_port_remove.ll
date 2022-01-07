; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.usb_wwan_port_private = type { %struct.usb_wwan_port_private**, i32*, i64*, i32* }

@N_IN_URB = common dso_local global i32 0, align 4
@N_OUT_URB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_wwan_port_remove(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_wwan_port_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.usb_wwan_port_private* %6, %struct.usb_wwan_port_private** %4, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %8 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %7, i32* null)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @N_IN_URB, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %15 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_free_urb(i32 %20)
  %22 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %23 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @free_page(i64 %28)
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %9

33:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @N_OUT_URB, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %40 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usb_free_urb(i32 %45)
  %47 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %48 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %47, i32 0, i32 0
  %49 = load %struct.usb_wwan_port_private**, %struct.usb_wwan_port_private*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %49, i64 %51
  %53 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %52, align 8
  %54 = call i32 @kfree(%struct.usb_wwan_port_private* %53)
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %60 = call i32 @kfree(%struct.usb_wwan_port_private* %59)
  ret i32 0
}

declare dso_local %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.usb_wwan_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
