; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_usb_write_mem_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_usb_write_mem_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }
%struct.io_queue = type { %struct.intf_hdl }
%struct.intf_hdl = type { i64, %struct.intf_priv* }
%struct.intf_priv = type { i32 }
%struct._adapter = type { i32, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_write_mem_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_write_mem_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.io_queue*, align 8
  %4 = alloca %struct.intf_hdl*, align 8
  %5 = alloca %struct.intf_priv*, align 8
  %6 = alloca %struct._adapter*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.io_queue*
  store %struct.io_queue* %10, %struct.io_queue** %3, align 8
  %11 = load %struct.io_queue*, %struct.io_queue** %3, align 8
  %12 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %11, i32 0, i32 0
  store %struct.intf_hdl* %12, %struct.intf_hdl** %4, align 8
  %13 = load %struct.intf_hdl*, %struct.intf_hdl** %4, align 8
  %14 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %13, i32 0, i32 1
  %15 = load %struct.intf_priv*, %struct.intf_priv** %14, align 8
  store %struct.intf_priv* %15, %struct.intf_priv** %5, align 8
  %16 = load %struct.intf_hdl*, %struct.intf_hdl** %4, align 8
  %17 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct._adapter*
  store %struct._adapter* %19, %struct._adapter** %6, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ESHUTDOWN, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct._adapter*, %struct._adapter** %6, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %37

34:                                               ; preds = %24
  %35 = load %struct._adapter*, %struct._adapter** %6, align 8
  %36 = getelementptr inbounds %struct._adapter, %struct._adapter* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.intf_priv*, %struct.intf_priv** %5, align 8
  %40 = getelementptr inbounds %struct.intf_priv, %struct.intf_priv* %39, i32 0, i32 0
  %41 = call i32 @complete(i32* %40)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
