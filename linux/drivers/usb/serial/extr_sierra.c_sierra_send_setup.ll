; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_send_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_send_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i64, %struct.usb_serial* }
%struct.usb_serial = type { i32, i32, i32 }
%struct.sierra_port_private = type { i64, i64 }

@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @sierra_send_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_send_setup(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.sierra_port_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 2
  %12 = load %struct.usb_serial*, %struct.usb_serial** %11, align 8
  store %struct.usb_serial* %12, %struct.usb_serial** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %14 = call %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.sierra_port_private* %14, %struct.sierra_port_private** %5, align 8
  %15 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %16 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.sierra_port_private*, %struct.sierra_port_private** %5, align 8
  %24 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 2
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %32 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %37 = call i32 @sierra_interface_num(%struct.usb_serial* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %39 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %35
  br label %65

44:                                               ; preds = %30
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %64

50:                                               ; preds = %44
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %63

56:                                               ; preds = %50
  %57 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %58 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 2, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %49
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %95

69:                                               ; preds = %65
  %70 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %71 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_autopm_get_interface(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %95

78:                                               ; preds = %69
  %79 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %80 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %83 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @usb_sndctrlpipe(i32 %84, i32 0)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %89 = call i32 @usb_control_msg(i32 %81, i32 %85, i32 34, i32 33, i32 %86, i32 %87, i32* null, i32 0, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %91 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usb_autopm_put_interface(i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %78, %76, %68
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @sierra_interface_num(%struct.usb_serial*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
