; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_halinit.c_r8712_usb_inirp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_halinit.c_r8712_usb_inirp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.recv_priv, %struct.TYPE_2__* }
%struct.recv_priv = type { i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { i32 }
%struct.recv_buf = type { i32 }

@RTL8712_DMA_RX0FF = common dso_local global i32 0, align 4
@NR_RECVBUFF = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_usb_inirp_init(%struct._adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.recv_buf*, align 8
  %6 = alloca %struct.intf_hdl*, align 8
  %7 = alloca %struct.recv_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.intf_hdl* %11, %struct.intf_hdl** %6, align 8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 0
  store %struct.recv_priv* %13, %struct.recv_priv** %7, align 8
  %14 = load i32, i32* @RTL8712_DMA_RX0FF, align 4
  %15 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %16 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %18 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.recv_buf*
  store %struct.recv_buf* %20, %struct.recv_buf** %5, align 8
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %43, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @NR_RECVBUFF, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %27 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %28 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.recv_buf*, %struct.recv_buf** %5, align 8
  %31 = bitcast %struct.recv_buf* %30 to i8*
  %32 = call i32 @r8712_usb_read_port(%struct.intf_hdl* %26, i32 %29, i32 0, i8* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @_FAIL, align 4
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %25
  %37 = load %struct.recv_buf*, %struct.recv_buf** %5, align 8
  %38 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %37, i32 1
  store %struct.recv_buf* %38, %struct.recv_buf** %5, align 8
  %39 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %40 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load i32, i32* @_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @r8712_usb_read_port(%struct.intf_hdl*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
