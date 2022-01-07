; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_fetch_txstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_fetch_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }

@TX_STA_FIFO = common dso_local global i32 0, align 4
@TX_STA_FIFO_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800mmio_fetch_txstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800mmio_fetch_txstatus(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 1
  %12 = call i32 @kfifo_is_full(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = load i32, i32* @TX_STA_FIFO, align 4
  %18 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @TX_STA_FIFO_VALID, align 4
  %21 = call i32 @rt2x00_get_field32(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @kfifo_put(i32* %26, i32 %27)
  br label %9

29:                                               ; preds = %23, %9
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfifo_is_full(i32*) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @kfifo_put(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
