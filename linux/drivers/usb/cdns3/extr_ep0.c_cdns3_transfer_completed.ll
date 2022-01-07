; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_transfer_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_transfer_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32, %struct.cdns3_endpoint** }
%struct.cdns3_endpoint = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*)* @cdns3_transfer_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_transfer_completed(%struct.cdns3_device* %0) #0 {
  %2 = alloca %struct.cdns3_device*, align 8
  %3 = alloca %struct.cdns3_endpoint*, align 8
  %4 = alloca %struct.usb_request*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %2, align 8
  %5 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %6 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %5, i32 0, i32 1
  %7 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %6, align 8
  %8 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %7, i64 0
  %9 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  store %struct.cdns3_endpoint* %9, %struct.cdns3_endpoint** %3, align 8
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %11 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %10, i32 0, i32 2
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %1
  %15 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %16 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %17 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @trace_cdns3_complete_trb(%struct.cdns3_endpoint* %15, %struct.TYPE_2__* %18)
  %20 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %20, i32 0, i32 2
  %22 = call %struct.usb_request* @cdns3_next_request(i32* %21)
  store %struct.usb_request* %22, %struct.usb_request** %4, align 8
  %23 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %24 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = call i32 @TRB_LEN(i32 %28)
  %30 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %31 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %33 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %36 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %38 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %39 = call i32 @to_cdns3_request(%struct.usb_request* %38)
  %40 = call i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint* %37, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %14, %1
  %42 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %43 = call i32 @cdns3_ep0_complete_setup(%struct.cdns3_device* %42, i32 0, i32 0)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @trace_cdns3_complete_trb(%struct.cdns3_endpoint*, %struct.TYPE_2__*) #1

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local i32 @TRB_LEN(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint*, i32, i32) #1

declare dso_local i32 @to_cdns3_request(%struct.usb_request*) #1

declare dso_local i32 @cdns3_ep0_complete_setup(%struct.cdns3_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
