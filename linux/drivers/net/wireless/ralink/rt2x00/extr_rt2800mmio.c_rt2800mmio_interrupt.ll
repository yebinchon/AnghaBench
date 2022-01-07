; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_SOURCE_CSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_TX_FIFO_STATUS = common dso_local global i32 0, align 4
@INT_MASK_CSR_TX_FIFO_STATUS = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_PRE_TBTT = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_TBTT = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_RX_DONE = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_AUTO_WAKEUP = common dso_local global i32 0, align 4
@INT_MASK_CSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800mmio_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %6, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %12 = load i32, i32* @INT_SOURCE_CSR, align 4
  %13 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %15 = load i32, i32* @INT_SOURCE_CSR, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %2
  %23 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 7
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %105

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @INT_SOURCE_CSR_TX_FIFO_STATUS, align 4
  %35 = call i64 @rt2x00_get_field32(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load i32, i32* @INT_MASK_CSR_TX_FIFO_STATUS, align 4
  %39 = call i32 @rt2x00_set_field32(i32* %8, i32 %38, i32 1)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %41 = call i32 @rt2800mmio_fetch_txstatus(%struct.rt2x00_dev* %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 6
  %44 = call i32 @kfifo_is_empty(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 5
  %49 = call i32 @tasklet_schedule(i32* %48)
  br label %50

50:                                               ; preds = %46, %37
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @INT_SOURCE_CSR_PRE_TBTT, align 4
  %54 = call i64 @rt2x00_get_field32(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %58 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %57, i32 0, i32 4
  %59 = call i32 @tasklet_hi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @INT_SOURCE_CSR_TBTT, align 4
  %63 = call i64 @rt2x00_get_field32(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 3
  %68 = call i32 @tasklet_hi_schedule(i32* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @INT_SOURCE_CSR_RX_DONE, align 4
  %72 = call i64 @rt2x00_get_field32(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 2
  %77 = call i32 @tasklet_schedule(i32* %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @INT_SOURCE_CSR_AUTO_WAKEUP, align 4
  %81 = call i64 @rt2x00_get_field32(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %85 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %84, i32 0, i32 1
  %86 = call i32 @tasklet_schedule(i32* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %89 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %88, i32 0, i32 0
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %92 = load i32, i32* @INT_MASK_CSR, align 4
  %93 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %98 = load i32, i32* @INT_MASK_CSR, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %97, i32 %98, i32 %99)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %87, %28, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800mmio_fetch_txstatus(%struct.rt2x00_dev*) #1

declare dso_local i32 @kfifo_is_empty(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
