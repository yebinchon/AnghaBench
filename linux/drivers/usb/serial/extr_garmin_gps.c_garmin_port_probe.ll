; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.garmin_data = type { i32, i64, i64, i64, %struct.usb_serial_port*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@timeout_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @garmin_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garmin_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.garmin_data*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.garmin_data* @kzalloc(i32 56, i32 %6)
  store %struct.garmin_data* %7, %struct.garmin_data** %5, align 8
  %8 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %9 = icmp ne %struct.garmin_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %15 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %14, i32 0, i32 7
  %16 = load i32, i32* @timeout_handler, align 4
  %17 = call i32 @timer_setup(i32* %15, i32 %16, i32 0)
  %18 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %19 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %18, i32 0, i32 6
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %22 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %21, i32 0, i32 5
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %25 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %26 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %25, i32 0, i32 4
  store %struct.usb_serial_port* %24, %struct.usb_serial_port** %26, align 8
  %27 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %28 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %30 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %32 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %34 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %33, i32 0, i32 0
  %35 = call i32 @init_usb_anchor(i32* %34)
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %37 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %38 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %36, %struct.garmin_data* %37)
  %39 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %40 = call i32 @garmin_init_session(%struct.usb_serial_port* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %13
  br label %45

44:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %49

45:                                               ; preds = %43
  %46 = load %struct.garmin_data*, %struct.garmin_data** %5, align 8
  %47 = call i32 @kfree(%struct.garmin_data* %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %44, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.garmin_data* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.garmin_data*) #1

declare dso_local i32 @garmin_init_session(%struct.usb_serial_port*) #1

declare dso_local i32 @kfree(%struct.garmin_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
