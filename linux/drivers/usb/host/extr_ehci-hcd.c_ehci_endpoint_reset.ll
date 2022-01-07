; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.ehci_qh*, i32 }
%struct.ehci_qh = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ehci_hcd = type { i32 }

@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"clear_halt for a busy endpoint\0A\00", align 1
@QH_UNLINK_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @ehci_endpoint_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_endpoint_reset(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.ehci_qh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %11)
  store %struct.ehci_hcd* %12, %struct.ehci_hcd** %5, align 8
  %13 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %14 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %13, i32 0, i32 1
  %15 = call i32 @usb_endpoint_type(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %16, i32 0, i32 1
  %18 = call i32 @usb_endpoint_num(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %19, i32 0, i32 1
  %21 = call i32 @usb_endpoint_dir_out(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %78

30:                                               ; preds = %25, %2
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %36 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %35, i32 0, i32 0
  %37 = load %struct.ehci_qh*, %struct.ehci_qh** %36, align 8
  store %struct.ehci_qh* %37, %struct.ehci_qh** %6, align 8
  %38 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %39 = icmp ne %struct.ehci_qh* %38, null
  br i1 %39, label %40, label %73

40:                                               ; preds = %30
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %42 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %41, i32 0, i32 2
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %72

47:                                               ; preds = %40
  %48 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %49 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @usb_settoggle(i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load i32, i32* @QH_UNLINK_REQUESTED, align 4
  %56 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %57 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %66 = call i32 @start_unlink_async(%struct.ehci_hcd* %64, %struct.ehci_qh* %65)
  br label %71

67:                                               ; preds = %47
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %69 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %70 = call i32 @start_unlink_intr(%struct.ehci_hcd* %68, %struct.ehci_qh* %69)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %45
  br label %73

73:                                               ; preds = %72, %30
  %74 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %75 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %74, i32 0, i32 0
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %29
  ret void
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_endpoint_type(i32*) #1

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i32 @usb_endpoint_dir_out(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @usb_settoggle(i32, i32, i32, i32) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @start_unlink_intr(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
