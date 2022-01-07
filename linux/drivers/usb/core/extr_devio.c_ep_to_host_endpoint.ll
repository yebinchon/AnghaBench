; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_ep_to_host_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_ep_to_host_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { i32 }
%struct.usb_device = type { %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }

@USB_ENDPOINT_DIR_MASK = common dso_local global i8 0, align 1
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_host_endpoint* (%struct.usb_device*, i8)* @ep_to_host_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_host_endpoint* @ep_to_host_endpoint(%struct.usb_device* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.usb_host_endpoint*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i8, align 1
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @USB_ENDPOINT_DIR_MASK, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %14, align 8
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @USB_ENDPOINT_NUMBER_MASK, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %15, i64 %21
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %22, align 8
  store %struct.usb_host_endpoint* %23, %struct.usb_host_endpoint** %3, align 8
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %26, align 8
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @USB_ENDPOINT_NUMBER_MASK, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %27, i64 %33
  %35 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %34, align 8
  store %struct.usb_host_endpoint* %35, %struct.usb_host_endpoint** %3, align 8
  br label %36

36:                                               ; preds = %24, %12
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  ret %struct.usb_host_endpoint* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
