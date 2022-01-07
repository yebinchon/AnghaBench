; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_get_dev_desc_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_get_dev_desc_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_device_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create lvs device\0A\00", align 1
@PIPE_CONTROL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't read device descriptor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @get_dev_desc_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dev_desc_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.usb_device_descriptor*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.usb_device_descriptor* @kmalloc(i32 4, i32 %16)
  store %struct.usb_device_descriptor* %17, %struct.usb_device_descriptor** %12, align 8
  %18 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %12, align 8
  %19 = icmp ne %struct.usb_device_descriptor* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %25 = call %struct.usb_device* @create_lvs_device(%struct.usb_interface* %24)
  store %struct.usb_device* %25, %struct.usb_device** %11, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %27 = icmp ne %struct.usb_device* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  br label %55

33:                                               ; preds = %23
  %34 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %35 = load i32, i32* @PIPE_CONTROL, align 4
  %36 = shl i32 %35, 30
  %37 = load i32, i32* @USB_DIR_IN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %40 = load i32, i32* @USB_DIR_IN, align 4
  %41 = load i32, i32* @USB_DT_DEVICE, align 4
  %42 = shl i32 %41, 8
  %43 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %12, align 8
  %44 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %45 = call i32 @usb_control_msg(%struct.usb_device* %34, i32 %38, i32 %39, i32 %40, i32 %42, i32 0, %struct.usb_device_descriptor* %43, i32 4, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %33
  %53 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %54 = call i32 @destroy_lvs_device(%struct.usb_device* %53)
  br label %55

55:                                               ; preds = %52, %28
  %56 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %12, align 8
  %57 = call i32 @kfree(%struct.usb_device_descriptor* %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %65

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %60, %20
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device_descriptor* @kmalloc(i32, i32) #1

declare dso_local %struct.usb_device* @create_lvs_device(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.usb_device_descriptor*, i32, i32) #1

declare dso_local i32 @destroy_lvs_device(%struct.usb_device*) #1

declare dso_local i32 @kfree(%struct.usb_device_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
