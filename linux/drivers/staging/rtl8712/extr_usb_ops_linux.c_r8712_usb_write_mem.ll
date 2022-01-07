; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_write_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usb_write_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.intf_priv*, i64 }
%struct.intf_priv = type { i32, %struct.urb*, i64 }
%struct.urb = type { i32 }
%struct._adapter = type { %struct.TYPE_2__, i64, i64, %struct.io_queue* }
%struct.TYPE_2__ = type { i64 }
%struct.io_queue = type { i32 }
%struct.dvobj_priv = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@usb_write_mem_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_usb_write_mem(%struct.intf_hdl* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.intf_hdl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._adapter*, align 8
  %11 = alloca %struct.intf_priv*, align 8
  %12 = alloca %struct.io_queue*, align 8
  %13 = alloca %struct.dvobj_priv*, align 8
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca %struct.urb*, align 8
  store %struct.intf_hdl* %0, %struct.intf_hdl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %17 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct._adapter*
  store %struct._adapter* %19, %struct._adapter** %10, align 8
  %20 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %21 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %20, i32 0, i32 0
  %22 = load %struct.intf_priv*, %struct.intf_priv** %21, align 8
  store %struct.intf_priv* %22, %struct.intf_priv** %11, align 8
  %23 = load %struct._adapter*, %struct._adapter** %10, align 8
  %24 = getelementptr inbounds %struct._adapter, %struct._adapter* %23, i32 0, i32 3
  %25 = load %struct.io_queue*, %struct.io_queue** %24, align 8
  store %struct.io_queue* %25, %struct.io_queue** %12, align 8
  %26 = load %struct.intf_priv*, %struct.intf_priv** %11, align 8
  %27 = getelementptr inbounds %struct.intf_priv, %struct.intf_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.dvobj_priv*
  store %struct.dvobj_priv* %29, %struct.dvobj_priv** %13, align 8
  %30 = load %struct.dvobj_priv*, %struct.dvobj_priv** %13, align 8
  %31 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %30, i32 0, i32 0
  %32 = load %struct.usb_device*, %struct.usb_device** %31, align 8
  store %struct.usb_device* %32, %struct.usb_device** %14, align 8
  %33 = load %struct.intf_priv*, %struct.intf_priv** %11, align 8
  %34 = getelementptr inbounds %struct.intf_priv, %struct.intf_priv* %33, i32 0, i32 1
  %35 = load %struct.urb*, %struct.urb** %34, align 8
  store %struct.urb* %35, %struct.urb** %15, align 8
  %36 = load %struct._adapter*, %struct._adapter** %10, align 8
  %37 = getelementptr inbounds %struct._adapter, %struct._adapter* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %4
  %41 = load %struct._adapter*, %struct._adapter** %10, align 8
  %42 = getelementptr inbounds %struct._adapter, %struct._adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct._adapter*, %struct._adapter** %10, align 8
  %47 = getelementptr inbounds %struct._adapter, %struct._adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %40, %4
  br label %74

52:                                               ; preds = %45
  %53 = load %struct.dvobj_priv*, %struct.dvobj_priv** %13, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ffaddr2pipehdl(%struct.dvobj_priv* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %74

59:                                               ; preds = %52
  %60 = load %struct.urb*, %struct.urb** %15, align 8
  %61 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @usb_write_mem_complete, align 4
  %66 = load %struct.io_queue*, %struct.io_queue** %12, align 8
  %67 = call i32 @usb_fill_bulk_urb(%struct.urb* %60, %struct.usb_device* %61, i32 %62, i32* %63, i32 %64, i32 %65, %struct.io_queue* %66)
  %68 = load %struct.urb*, %struct.urb** %15, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i32 @usb_submit_urb(%struct.urb* %68, i32 %69)
  %71 = load %struct.intf_priv*, %struct.intf_priv** %11, align 8
  %72 = getelementptr inbounds %struct.intf_priv, %struct.intf_priv* %71, i32 0, i32 0
  %73 = call i32 @wait_for_completion_interruptible(i32* %72)
  br label %74

74:                                               ; preds = %59, %58, %51
  ret void
}

declare dso_local i32 @ffaddr2pipehdl(%struct.dvobj_priv*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i32, i32, %struct.io_queue*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
