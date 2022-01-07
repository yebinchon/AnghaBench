; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sierra_iface_info = type { i32 }
%struct.usb_serial_port = type { i32, i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.sierra_port_private = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@N_OUT_URB = common dso_local global i32 0, align 4
@N_IN_URB = common dso_local global i32 0, align 4
@typeB_interface_list = common dso_local global %struct.sierra_iface_info zeroinitializer, align 4
@typeA_interface_list = common dso_local global %struct.sierra_iface_info zeroinitializer, align 4
@N_OUT_URB_HM = common dso_local global i32 0, align 4
@N_IN_URB_HM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Memory usage (urbs) interface #%d, in=%d, out=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @sierra_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.sierra_port_private*, align 8
  %6 = alloca %struct.sierra_iface_info*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 2
  %10 = load %struct.usb_serial*, %struct.usb_serial** %9, align 8
  store %struct.usb_serial* %10, %struct.usb_serial** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sierra_port_private* @kzalloc(i32 20, i32 %11)
  store %struct.sierra_port_private* %12, %struct.sierra_port_private** %5, align 8
  %13 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %14 = icmp ne %struct.sierra_port_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %20 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %19, i32 0, i32 4
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %23 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %22, i32 0, i32 3
  %24 = call i32 @init_usb_anchor(i32* %23)
  %25 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %26 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %25, i32 0, i32 2
  %27 = call i32 @init_usb_anchor(i32* %26)
  %28 = load i32, i32* @N_OUT_URB, align 4
  %29 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %30 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @N_IN_URB, align 4
  %32 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %33 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %35 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %40 = call i32 @sierra_interface_num(%struct.usb_serial* %39)
  store i32 %40, i32* %7, align 4
  store %struct.sierra_iface_info* @typeB_interface_list, %struct.sierra_iface_info** %6, align 8
  br label %45

41:                                               ; preds = %18
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  store %struct.sierra_iface_info* @typeA_interface_list, %struct.sierra_iface_info** %6, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.sierra_iface_info*, %struct.sierra_iface_info** %6, align 8
  %48 = call i64 @is_himemory(i32 %46, %struct.sierra_iface_info* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @N_OUT_URB_HM, align 4
  %52 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %53 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @N_IN_URB_HM, align 4
  %55 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %56 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %59 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %62 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %65 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  %68 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %69 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %70 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %68, %struct.sierra_port_private* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %57, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.sierra_port_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @sierra_interface_num(%struct.usb_serial*) #1

declare dso_local i64 @is_himemory(i32, %struct.sierra_iface_info*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.sierra_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
