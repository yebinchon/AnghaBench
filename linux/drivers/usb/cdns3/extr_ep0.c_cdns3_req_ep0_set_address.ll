; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_req_ep0_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_req_ep0_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@USB_DEVICE_MAX_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Device address (%d) cannot be greater than %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"can't set_address from configured state\0A\00", align 1
@USB_CMD_SET_ADDR = common dso_local global i64 0, align 8
@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, %struct.usb_ctrlrequest*)* @cdns3_req_ep0_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_req_ep0_set_address(%struct.cdns3_device* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %9 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %10 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le16_to_cpu(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @USB_DEVICE_MAX_ADDRESS, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %22 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @USB_DEVICE_MAX_ADDRESS, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %35 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %29
  %41 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %42 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i64 @readl(i32* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @USB_CMD_FADDR(i64 %47)
  %49 = or i64 %46, %48
  %50 = load i64, i64* @USB_CMD_SET_ADDR, align 8
  %51 = or i64 %49, %50
  %52 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %53 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @writel(i64 %51, i32* %55)
  %57 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %58 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = load i32, i32* @USB_STATE_ADDRESS, align 4
  br label %65

63:                                               ; preds = %40
  %64 = load i32, i32* @USB_STATE_DEFAULT, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @usb_gadget_set_state(%struct.TYPE_4__* %58, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %33, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i64 @USB_CMD_FADDR(i64) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
