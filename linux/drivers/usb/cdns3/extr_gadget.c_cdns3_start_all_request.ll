; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_start_all_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_start_all_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32 }
%struct.cdns3_endpoint = type { i32, i32, i32 }
%struct.usb_request = type { i32 }

@EP_RING_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, %struct.cdns3_endpoint*)* @cdns3_start_all_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_start_all_request(%struct.cdns3_device* %0, %struct.cdns3_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca %struct.cdns3_endpoint*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %4, align 8
  store %struct.cdns3_endpoint* %1, %struct.cdns3_endpoint** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %10 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %9, i32 0, i32 2
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %16 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %15, i32 0, i32 2
  %17 = call %struct.usb_request* @cdns3_next_request(i32* %16)
  store %struct.usb_request* %17, %struct.usb_request** %6, align 8
  %18 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %19 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %20 = call i32 @cdns3_ep_run_transfer(%struct.cdns3_endpoint* %18, %struct.usb_request* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %27 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %30 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %29, i32 0, i32 0
  %31 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %32 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %31, i32 0, i32 1
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  br label %8

34:                                               ; preds = %8
  %35 = load i32, i32* @EP_RING_FULL, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %38 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local i32 @cdns3_ep_run_transfer(%struct.cdns3_endpoint*, %struct.usb_request*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
