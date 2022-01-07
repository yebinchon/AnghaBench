; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_inirp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_inirp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.recv_priv }
%struct.recv_priv = type { %struct.recv_buf* }
%struct.recv_buf = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"===> usb_inirp_init\0A\00", align 1
@NR_RECVBUFF = common dso_local global i64 0, align 8
@RECV_BULK_IN_ADDR = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"usb_rx_init: usb_read_port error\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"<=== usb_inirp_init\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_hal_inirp_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.recv_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.recv_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.recv_priv* %8, %struct.recv_priv** %6, align 8
  %9 = load i32, i32* @_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %11 = load i32, i32* @_drv_info_, align 4
  %12 = call i32 @RT_TRACE(i32 %10, i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %14 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %13, i32 0, i32 0
  %15 = load %struct.recv_buf*, %struct.recv_buf** %14, align 8
  store %struct.recv_buf* %15, %struct.recv_buf** %4, align 8
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %34, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @NR_RECVBUFF, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load i32, i32* @RECV_BULK_IN_ADDR, align 4
  %23 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %24 = call i32 @usb_read_port(%struct.adapter* %21, i32 %22, %struct.recv_buf* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %28 = load i32, i32* @_drv_err_, align 4
  %29 = call i32 @RT_TRACE(i32 %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @_FAIL, align 4
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %33 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %32, i32 1
  store %struct.recv_buf* %33, %struct.recv_buf** %4, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %16

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %40 = load i32, i32* @_drv_info_, align 4
  %41 = call i32 @RT_TRACE(i32 %39, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @usb_read_port(%struct.adapter*, i32, %struct.recv_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
