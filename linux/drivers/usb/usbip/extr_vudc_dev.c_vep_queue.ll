; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i64 }
%struct.vep = type { i32 }
%struct.vrequest = type { i32 }
%struct.vudc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @vep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vep_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vep*, align 8
  %9 = alloca %struct.vrequest*, align 8
  %10 = alloca %struct.vudc*, align 8
  %11 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %13 = icmp ne %struct.usb_ep* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %16 = icmp ne %struct.usb_request* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %14
  %21 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %22 = call %struct.vep* @to_vep(%struct.usb_ep* %21)
  store %struct.vep* %22, %struct.vep** %8, align 8
  %23 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %24 = call %struct.vrequest* @to_vrequest(%struct.usb_request* %23)
  store %struct.vrequest* %24, %struct.vrequest** %9, align 8
  %25 = load %struct.vep*, %struct.vep** %8, align 8
  %26 = call %struct.vudc* @ep_to_vudc(%struct.vep* %25)
  store %struct.vudc* %26, %struct.vudc** %10, align 8
  %27 = load %struct.vudc*, %struct.vudc** %10, align 8
  %28 = getelementptr inbounds %struct.vudc, %struct.vudc* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @EINPROGRESS, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %36 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.vrequest*, %struct.vrequest** %9, align 8
  %38 = getelementptr inbounds %struct.vrequest, %struct.vrequest* %37, i32 0, i32 0
  %39 = load %struct.vep*, %struct.vep** %8, align 8
  %40 = getelementptr inbounds %struct.vep, %struct.vep* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.vudc*, %struct.vudc** %10, align 8
  %43 = getelementptr inbounds %struct.vudc, %struct.vudc* %42, i32 0, i32 0
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %20, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.vep* @to_vep(%struct.usb_ep*) #1

declare dso_local %struct.vrequest* @to_vrequest(%struct.usb_request*) #1

declare dso_local %struct.vudc* @ep_to_vudc(%struct.vep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
