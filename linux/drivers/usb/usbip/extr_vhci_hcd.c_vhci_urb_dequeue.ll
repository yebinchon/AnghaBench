; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, %struct.vhci_priv* }
%struct.vhci_priv = type { i32, i32, %struct.vhci_device* }
%struct.vhci_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vhci_hcd = type { i32, %struct.vhci* }
%struct.vhci = type { i32 }
%struct.vhci_unlink = type { i32, i32, i32 }

@EIDRM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VDEV_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"seqnum max\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @vhci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhci_hcd*, align 8
  %9 = alloca %struct.vhci*, align 8
  %10 = alloca %struct.vhci_priv*, align 8
  %11 = alloca %struct.vhci_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vhci_unlink*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %16 = call %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd* %15)
  store %struct.vhci_hcd* %16, %struct.vhci_hcd** %8, align 8
  %17 = load %struct.vhci_hcd*, %struct.vhci_hcd** %8, align 8
  %18 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %17, i32 0, i32 1
  %19 = load %struct.vhci*, %struct.vhci** %18, align 8
  store %struct.vhci* %19, %struct.vhci** %9, align 8
  %20 = load %struct.vhci*, %struct.vhci** %9, align 8
  %21 = getelementptr inbounds %struct.vhci, %struct.vhci* %20, i32 0, i32 0
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load %struct.vhci_priv*, %struct.vhci_priv** %25, align 8
  store %struct.vhci_priv* %26, %struct.vhci_priv** %10, align 8
  %27 = load %struct.vhci_priv*, %struct.vhci_priv** %10, align 8
  %28 = icmp ne %struct.vhci_priv* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load %struct.vhci*, %struct.vhci** %9, align 8
  %31 = getelementptr inbounds %struct.vhci, %struct.vhci* %30, i32 0, i32 0
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @EIDRM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %146

36:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %37, %struct.urb* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.vhci*, %struct.vhci** %9, align 8
  %45 = getelementptr inbounds %struct.vhci, %struct.vhci* %44, i32 0, i32 0
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %4, align 4
  br label %146

49:                                               ; preds = %36
  %50 = load %struct.vhci_priv*, %struct.vhci_priv** %10, align 8
  %51 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %50, i32 0, i32 2
  %52 = load %struct.vhci_device*, %struct.vhci_device** %51, align 8
  store %struct.vhci_device* %52, %struct.vhci_device** %11, align 8
  %53 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %54 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %89, label %58

58:                                               ; preds = %49
  %59 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %60 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.vhci_priv*, %struct.vhci_priv** %10, align 8
  %63 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %62, i32 0, i32 1
  %64 = call i32 @list_del(i32* %63)
  %65 = load %struct.vhci_priv*, %struct.vhci_priv** %10, align 8
  %66 = call i32 @kfree(%struct.vhci_priv* %65)
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 1
  store %struct.vhci_priv* null, %struct.vhci_priv** %68, align 8
  %69 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %70 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %73 = load %struct.urb*, %struct.urb** %6, align 8
  %74 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %72, %struct.urb* %73)
  %75 = load %struct.vhci*, %struct.vhci** %9, align 8
  %76 = getelementptr inbounds %struct.vhci, %struct.vhci* %75, i32 0, i32 0
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %80 = load %struct.urb*, %struct.urb** %6, align 8
  %81 = load %struct.urb*, %struct.urb** %6, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %79, %struct.urb* %80, i32 %83)
  %85 = load %struct.vhci*, %struct.vhci** %9, align 8
  %86 = getelementptr inbounds %struct.vhci, %struct.vhci* %85, i32 0, i32 0
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  br label %140

89:                                               ; preds = %49
  %90 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %91 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %90, i32 0, i32 0
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call %struct.vhci_unlink* @kzalloc(i32 12, i32 %93)
  store %struct.vhci_unlink* %94, %struct.vhci_unlink** %14, align 8
  %95 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %96 = icmp ne %struct.vhci_unlink* %95, null
  br i1 %96, label %111, label %97

97:                                               ; preds = %89
  %98 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %99 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.vhci*, %struct.vhci** %9, align 8
  %102 = getelementptr inbounds %struct.vhci, %struct.vhci* %101, i32 0, i32 0
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %106 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %105, i32 0, i32 3
  %107 = load i32, i32* @VDEV_EVENT_ERROR_MALLOC, align 4
  %108 = call i32 @usbip_event_add(%struct.TYPE_2__* %106, i32 %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %146

111:                                              ; preds = %89
  %112 = load %struct.vhci_hcd*, %struct.vhci_hcd** %8, align 8
  %113 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %112, i32 0, i32 0
  %114 = call i32 @atomic_inc_return(i32* %113)
  %115 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %116 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %118 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 65535
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %111
  %124 = load %struct.vhci_priv*, %struct.vhci_priv** %10, align 8
  %125 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %128 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load %struct.vhci_unlink*, %struct.vhci_unlink** %14, align 8
  %130 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %129, i32 0, i32 1
  %131 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %132 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %131, i32 0, i32 2
  %133 = call i32 @list_add_tail(i32* %130, i32* %132)
  %134 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %135 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %134, i32 0, i32 1
  %136 = call i32 @wake_up(i32* %135)
  %137 = load %struct.vhci_device*, %struct.vhci_device** %11, align 8
  %138 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %137, i32 0, i32 0
  %139 = call i32 @spin_unlock(i32* %138)
  br label %140

140:                                              ; preds = %123, %58
  %141 = load %struct.vhci*, %struct.vhci** %9, align 8
  %142 = getelementptr inbounds %struct.vhci, %struct.vhci* %141, i32 0, i32 0
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  %145 = call i32 @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %140, %97, %43, %29
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vhci_priv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local %struct.vhci_unlink* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
