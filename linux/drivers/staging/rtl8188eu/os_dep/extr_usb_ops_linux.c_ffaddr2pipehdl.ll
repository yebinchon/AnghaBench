; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_ops_linux.c_ffaddr2pipehdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_ops_linux.c_ffaddr2pipehdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvobj_priv = type { i32*, i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@RECV_BULK_IN_ADDR = common dso_local global i64 0, align 8
@RECV_INT_IN_ADDR = common dso_local global i64 0, align 8
@HW_QUEUE_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffaddr2pipehdl(%struct.dvobj_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.dvobj_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  store %struct.dvobj_priv* %0, %struct.dvobj_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @RECV_BULK_IN_ADDR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %16 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %15, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @RECV_INT_IN_ADDR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %28 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %29 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %27, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %22
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @HW_QUEUE_ENTRY, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %40 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @usb_sndbulkpipe(%struct.usb_device* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %38, %34
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
