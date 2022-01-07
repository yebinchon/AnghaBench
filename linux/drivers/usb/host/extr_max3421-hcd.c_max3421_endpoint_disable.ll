; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.max3421_ep* }
%struct.max3421_ep = type { i32 }
%struct.max3421_hcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @max3421_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3421_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.max3421_ep*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %8)
  store %struct.max3421_hcd* %9, %struct.max3421_hcd** %5, align 8
  %10 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %15 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %14, i32 0, i32 0
  %16 = load %struct.max3421_ep*, %struct.max3421_ep** %15, align 8
  %17 = icmp ne %struct.max3421_ep* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %19, i32 0, i32 0
  %21 = load %struct.max3421_ep*, %struct.max3421_ep** %20, align 8
  store %struct.max3421_ep* %21, %struct.max3421_ep** %7, align 8
  %22 = load %struct.max3421_ep*, %struct.max3421_ep** %7, align 8
  %23 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %22, i32 0, i32 0
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.max3421_ep*, %struct.max3421_ep** %7, align 8
  %28 = getelementptr inbounds %struct.max3421_ep, %struct.max3421_ep* %27, i32 0, i32 0
  %29 = call i32 @list_del(i32* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.max3421_ep*, %struct.max3421_ep** %7, align 8
  %32 = call i32 @kfree(%struct.max3421_ep* %31)
  %33 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 0
  store %struct.max3421_ep* null, %struct.max3421_ep** %34, align 8
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %37 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.max3421_ep*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
