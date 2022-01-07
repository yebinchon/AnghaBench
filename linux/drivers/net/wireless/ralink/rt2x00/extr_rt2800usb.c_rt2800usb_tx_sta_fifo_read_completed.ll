; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_tx_sta_fifo_read_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_tx_sta_fifo_read_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"TX status read failed %d\0A\00", align 1
@TX_STA_FIFO_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TX status FIFO overrun\0A\00", align 1
@TXSTATUS_READ_INTERVAL = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@TX_STATUS_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32, i32)* @rt2800usb_tx_sta_fifo_read_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_tx_sta_fifo_read_completed(%struct.rt2x00_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_warn(%struct.rt2x00_dev* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %59

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TX_STA_FIFO_VALID, align 4
  %18 = call i32 @rt2x00_get_field32(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @kfifo_put(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %29 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_warn(%struct.rt2x00_dev* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 2
  %36 = call i32 @queue_work(i32 %33, i32* %35)
  store i32 1, i32* %4, align 4
  br label %75

37:                                               ; preds = %15
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %39 = call i64 @rt2800_txstatus_timeout(%struct.rt2x00_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %46 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %45, i32 0, i32 2
  %47 = call i32 @queue_work(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %50 = call i64 @rt2800_txstatus_pending(%struct.rt2x00_dev* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %54 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %53, i32 0, i32 1
  %55 = load i32, i32* @TXSTATUS_READ_INTERVAL, align 4
  %56 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %57 = call i32 @hrtimer_start(i32* %54, i32 %55, i32 %56)
  store i32 0, i32* %4, align 4
  br label %75

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %11
  %60 = load i32, i32* @TX_STATUS_READING, align 4
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %60, i32* %62)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %65 = call i64 @rt2800_txstatus_pending(%struct.rt2x00_dev* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i32, i32* @TX_STATUS_READING, align 4
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %70 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %69, i32 0, i32 0
  %71 = call i32 @test_and_set_bit(i32 %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %75

74:                                               ; preds = %67, %59
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %73, %52, %30
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, ...) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @kfifo_put(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @rt2800_txstatus_timeout(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_txstatus_pending(%struct.rt2x00_dev*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
