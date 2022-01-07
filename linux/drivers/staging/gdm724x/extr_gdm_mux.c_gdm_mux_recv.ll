; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_dev = type opaque
%struct.mux_dev = type { i32 (i8*, i32, i32, %struct.tty_dev.0*, i32)*, %struct.rx_cxt, %struct.usb_device* }
%struct.tty_dev.0 = type opaque
%struct.rx_cxt = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.mux_rx = type { i32 (i8*, i32, i32, %struct.tty_dev.1*, i32)*, i32, i32, i32, i8*, i64 }
%struct.tty_dev.1 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"device is disconnected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"get_rx_struct fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MUX_RX_MAX_SIZE = common dso_local global i32 0, align 4
@gdm_mux_rcv_complete = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"usb_submit_urb ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (i8*, i32, i32, %struct.tty_dev*, i32)*)* @gdm_mux_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_mux_recv(i8* %0, i32 (i8*, i32, i32, %struct.tty_dev*, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i8*, i32, i32, %struct.tty_dev*, i32)*, align 8
  %6 = alloca %struct.mux_dev*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.mux_rx*, align 8
  %9 = alloca %struct.rx_cxt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 (i8*, i32, i32, %struct.tty_dev*, i32)* %1, i32 (i8*, i32, i32, %struct.tty_dev*, i32)** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.mux_dev*
  store %struct.mux_dev* %13, %struct.mux_dev** %6, align 8
  %14 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %14, i32 0, i32 2
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  %17 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %17, i32 0, i32 1
  store %struct.rx_cxt* %18, %struct.rx_cxt** %9, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %20 = icmp ne %struct.usb_device* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %103

25:                                               ; preds = %2
  %26 = load %struct.rx_cxt*, %struct.rx_cxt** %9, align 8
  %27 = call %struct.mux_rx* @get_rx_struct(%struct.rx_cxt* %26)
  store %struct.mux_rx* %27, %struct.mux_rx** %8, align 8
  %28 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %29 = icmp ne %struct.mux_rx* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %103

34:                                               ; preds = %25
  %35 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %36 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %38 = bitcast %struct.mux_dev* %37 to i8*
  %39 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %40 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i32 (i8*, i32, i32, %struct.tty_dev*, i32)*, i32 (i8*, i32, i32, %struct.tty_dev*, i32)** %5, align 8
  %42 = bitcast i32 (i8*, i32, i32, %struct.tty_dev*, i32)* %41 to i32 (i8*, i32, i32, %struct.tty_dev.1*, i32)*
  %43 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %44 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %43, i32 0, i32 0
  store i32 (i8*, i32, i32, %struct.tty_dev.1*, i32)* %42, i32 (i8*, i32, i32, %struct.tty_dev.1*, i32)** %44, align 8
  %45 = load i32 (i8*, i32, i32, %struct.tty_dev*, i32)*, i32 (i8*, i32, i32, %struct.tty_dev*, i32)** %5, align 8
  %46 = bitcast i32 (i8*, i32, i32, %struct.tty_dev*, i32)* %45 to i32 (i8*, i32, i32, %struct.tty_dev.0*, i32)*
  %47 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %48 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %47, i32 0, i32 0
  store i32 (i8*, i32, i32, %struct.tty_dev.0*, i32)* %46, i32 (i8*, i32, i32, %struct.tty_dev.0*, i32)** %48, align 8
  %49 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %50 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %54 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %53, i32 134)
  %55 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %56 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MUX_RX_MAX_SIZE, align 4
  %59 = load i32, i32* @gdm_mux_rcv_complete, align 4
  %60 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %61 = call i32 @usb_fill_bulk_urb(i32 %51, %struct.usb_device* %52, i32 %54, i32 %57, i32 %58, i32 %59, %struct.mux_rx* %60)
  %62 = load %struct.rx_cxt*, %struct.rx_cxt** %9, align 8
  %63 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %62, i32 0, i32 0
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %67 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %66, i32 0, i32 1
  %68 = load %struct.rx_cxt*, %struct.rx_cxt** %9, align 8
  %69 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %68, i32 0, i32 1
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  %71 = load %struct.rx_cxt*, %struct.rx_cxt** %9, align 8
  %72 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %71, i32 0, i32 0
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %76 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @usb_submit_urb(i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %34
  %83 = load %struct.rx_cxt*, %struct.rx_cxt** %9, align 8
  %84 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %83, i32 0, i32 0
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %88 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %87, i32 0, i32 1
  %89 = call i32 @list_del(i32* %88)
  %90 = load %struct.rx_cxt*, %struct.rx_cxt** %9, align 8
  %91 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %90, i32 0, i32 0
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.rx_cxt*, %struct.rx_cxt** %9, align 8
  %95 = load %struct.mux_rx*, %struct.mux_rx** %8, align 8
  %96 = call i32 @put_rx_struct(%struct.rx_cxt* %94, %struct.mux_rx* %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %82, %34
  %100 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %101 = call i32 @usb_mark_last_busy(%struct.usb_device* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %30, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.mux_rx* @get_rx_struct(%struct.rx_cxt*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.mux_rx*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_rx_struct(%struct.rx_cxt*, %struct.mux_rx*) #1

declare dso_local i32 @usb_mark_last_busy(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
