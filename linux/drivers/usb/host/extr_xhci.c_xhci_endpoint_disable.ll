; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { i32*, i32 }
%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32 }
%struct.usb_device = type { i64 }

@EP_CLEARING_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"endpoint disable with ep_state 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @xhci_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_virt_device*, align 8
  %7 = alloca %struct.xhci_virt_ep*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %11)
  store %struct.xhci_hcd* %12, %struct.xhci_hcd** %5, align 8
  br label %13

13:                                               ; preds = %62, %2
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %19 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.usb_device*
  store %struct.usb_device* %21, %struct.usb_device** %8, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %23 = icmp ne %struct.usb_device* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %13
  br label %80

30:                                               ; preds = %24
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %31, i32 0, i32 1
  %33 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %32, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %33, i64 %36
  %38 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %37, align 8
  store %struct.xhci_virt_device* %38, %struct.xhci_virt_device** %6, align 8
  %39 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %40 = icmp ne %struct.xhci_virt_device* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %80

42:                                               ; preds = %30
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 1
  %45 = call i32 @xhci_get_endpoint_index(i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %47 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %46, i32 0, i32 0
  %48 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %48, i64 %50
  store %struct.xhci_virt_ep* %51, %struct.xhci_virt_ep** %7, align 8
  %52 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %53 = icmp ne %struct.xhci_virt_ep* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %80

55:                                               ; preds = %42
  %56 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %57 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EP_CLEARING_TT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %64 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %63, i32 0, i32 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %13

68:                                               ; preds = %55
  %69 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %70 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %75 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %7, align 8
  %76 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @xhci_dbg(%struct.xhci_hcd* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %54, %41, %29
  %81 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %82 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %84 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %83, i32 0, i32 0
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  ret void
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_get_endpoint_index(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
