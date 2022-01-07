; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_reset_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_reset_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { i32 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_reset_endpoint(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @usb_endpoint_out(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 1
  %16 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, i64 %18
  %20 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %19, align 8
  store %struct.usb_host_endpoint* %20, %struct.usb_host_endpoint** %6, align 8
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %24, i64 %26
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %27, align 8
  store %struct.usb_host_endpoint* %28, %struct.usb_host_endpoint** %6, align 8
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %31 = icmp ne %struct.usb_host_endpoint* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %34 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %35 = call i32 @usb_hcd_reset_endpoint(%struct.usb_device* %33, %struct.usb_host_endpoint* %34)
  br label %36

36:                                               ; preds = %32, %29
  ret void
}

declare dso_local i64 @usb_endpoint_out(i32) #1

declare dso_local i32 @usb_hcd_reset_endpoint(%struct.usb_device*, %struct.usb_host_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
