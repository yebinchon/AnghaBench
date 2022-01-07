; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_get_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_get_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_hub_descriptor = type { i32 }

@USB_DT_SS_HUB = common dso_local global i32 0, align 4
@USB_DT_SS_HUB_SIZE = common dso_local global i32 0, align 4
@USB_DT_HUB = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RT_HUB = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@USB_DT_HUB_NONVAR_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_hub_descriptor*)* @get_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hub_descriptor(%struct.usb_device* %0, %struct.usb_hub_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_hub_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_hub_descriptor* %1, %struct.usb_hub_descriptor** %5, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = call i64 @hub_is_superspeed(%struct.usb_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @USB_DT_SS_HUB, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @USB_DT_SS_HUB_SIZE, align 4
  store i32 %15, i32* %8, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @USB_DT_HUB, align 4
  store i32 %17, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %18

18:                                               ; preds = %16, %13
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %69, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %72

22:                                               ; preds = %19
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %24, i32 0)
  %26 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = load i32, i32* @USB_RT_HUB, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, 8
  %32 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %35 = call i32 @usb_control_msg(%struct.usb_device* %23, i32 %25, i32 %26, i32 %29, i32 %31, i32 0, %struct.usb_hub_descriptor* %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = call i64 @hub_is_superspeed(%struct.usb_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %39
  br label %68

46:                                               ; preds = %22
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @USB_DT_HUB_NONVAR_SIZE, align 4
  %49 = add nsw i32 %48, 2
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i32, i32* @USB_DT_HUB_NONVAR_SIZE, align 4
  %53 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %54 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 8
  %57 = add nsw i32 %52, %56
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @EMSGSIZE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %75

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %19

72:                                               ; preds = %19
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %65, %62, %43
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.usb_hub_descriptor*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
