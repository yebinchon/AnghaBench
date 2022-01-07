; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c___pending_setup_status_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c___pending_setup_status_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i64, %struct.TYPE_2__**, %struct.usb_request* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_request = type { i32 (i32*, %struct.usb_request*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*)* @__pending_setup_status_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pending_setup_status_handler(%struct.cdns3_device* %0) #0 {
  %2 = alloca %struct.cdns3_device*, align 8
  %3 = alloca %struct.usb_request*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %2, align 8
  %4 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %5 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %4, i32 0, i32 2
  %6 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  store %struct.usb_request* %6, %struct.usb_request** %3, align 8
  %7 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %8 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %13 = icmp ne %struct.usb_request* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %16 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %15, i32 0, i32 0
  %17 = load i32 (i32*, %struct.usb_request*)*, i32 (i32*, %struct.usb_request*)** %16, align 8
  %18 = icmp ne i32 (i32*, %struct.usb_request*)* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %21 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %20, i32 0, i32 0
  %22 = load i32 (i32*, %struct.usb_request*)*, i32 (i32*, %struct.usb_request*)** %21, align 8
  %23 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %24 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %30 = call i32 %22(i32* %28, %struct.usb_request* %29)
  %31 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %32 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %19, %14, %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
