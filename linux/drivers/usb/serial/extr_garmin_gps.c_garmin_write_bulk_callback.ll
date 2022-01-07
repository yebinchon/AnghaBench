; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_write_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_write_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.garmin_data = type { i64 }

@GARMIN_LAYERID_APPL = common dso_local global i64 0, align 8
@MODE_GARMIN_SERIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @garmin_write_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garmin_write_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.garmin_data*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 1
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  store %struct.usb_serial_port* %7, %struct.usb_serial_port** %3, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = icmp ne %struct.usb_serial_port* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = call %struct.garmin_data* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.garmin_data* %12, %struct.garmin_data** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @getLayerId(i64 %15)
  %17 = load i64, i64* @GARMIN_LAYERID_APPL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %10
  %20 = load %struct.garmin_data*, %struct.garmin_data** %4, align 8
  %21 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MODE_GARMIN_SERIAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.garmin_data*, %struct.garmin_data** %4, align 8
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gsp_send_ack(%struct.garmin_data* %26, i32 %32)
  br label %34

34:                                               ; preds = %25, %19
  br label %35

35:                                               ; preds = %34, %10
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %37 = call i32 @usb_serial_port_softint(%struct.usb_serial_port* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @kfree(i64 %41)
  ret void
}

declare dso_local %struct.garmin_data* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @getLayerId(i64) #1

declare dso_local i32 @gsp_send_ack(%struct.garmin_data*, i32) #1

declare dso_local i32 @usb_serial_port_softint(%struct.usb_serial_port*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
