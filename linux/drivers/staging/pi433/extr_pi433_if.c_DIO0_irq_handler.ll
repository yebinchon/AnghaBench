; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_DIO0_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_DIO0_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pi433_device = type { i64*, i32, i64, i32, i32 }

@DIO0 = common dso_local global i64 0, align 8
@DIO_PACKET_SENT = common dso_local global i64 0, align 8
@FIFO_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"DIO0 irq: Packet sent\0A\00", align 1
@DIO_RSSI_DIO0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"DIO0 irq: RSSI level over threshold\0A\00", align 1
@DIO_PAYLOAD_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"DIO0 irq: Payload ready\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @DIO0_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DIO0_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pi433_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pi433_device*
  store %struct.pi433_device* %7, %struct.pi433_device** %5, align 8
  %8 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %9 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @DIO0, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DIO_PACKET_SENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i64, i64* @FIFO_SIZE, align 8
  %18 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %19 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %21 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %25 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %24, i32 0, i32 1
  %26 = call i32 @wake_up_interruptible(i32* %25)
  br label %65

27:                                               ; preds = %2
  %28 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %29 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @DIO0, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DIO_RSSI_DIO0, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %38 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %42 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %41, i32 0, i32 4
  %43 = call i32 @wake_up_interruptible(i32* %42)
  br label %64

44:                                               ; preds = %27
  %45 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %46 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @DIO0, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DIO_PAYLOAD_READY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %55 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %59 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %61 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %60, i32 0, i32 1
  %62 = call i32 @wake_up_interruptible(i32* %61)
  br label %63

63:                                               ; preds = %53, %44
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %16
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
