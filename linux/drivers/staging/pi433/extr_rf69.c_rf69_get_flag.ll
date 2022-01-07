; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_get_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_get_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@REG_IRQFLAGS1 = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_MODE_READY = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_RX_READY = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_TX_READY = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_PLL_LOCK = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_RSSI = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_TIMEOUT = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_AUTOMODE = common dso_local global i32 0, align 4
@MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH = common dso_local global i32 0, align 4
@REG_IRQFLAGS2 = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_FIFO_FULL = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_FIFO_NOT_EMPTY = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_FIFO_LEVEL = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_FIFO_OVERRUN = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_PACKET_SENT = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_PAYLOAD_READY = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_CRC_OK = common dso_local global i32 0, align 4
@MASK_IRQFLAGS2_LOW_BAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_get_flag(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %106 [
    i32 136, label %7
    i32 132, label %13
    i32 131, label %19
    i32 133, label %25
    i32 130, label %31
    i32 128, label %37
    i32 143, label %43
    i32 129, label %49
    i32 139, label %55
    i32 140, label %61
    i32 138, label %70
    i32 137, label %76
    i32 135, label %82
    i32 134, label %88
    i32 141, label %94
    i32 142, label %100
  ]

7:                                                ; preds = %2
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = load i32, i32* @REG_IRQFLAGS1, align 4
  %10 = call i32 @rf69_read_reg(%struct.spi_device* %8, i32 %9)
  %11 = load i32, i32* @MASK_IRQFLAGS1_MODE_READY, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %107

13:                                               ; preds = %2
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = load i32, i32* @REG_IRQFLAGS1, align 4
  %16 = call i32 @rf69_read_reg(%struct.spi_device* %14, i32 %15)
  %17 = load i32, i32* @MASK_IRQFLAGS1_RX_READY, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %107

19:                                               ; preds = %2
  %20 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %21 = load i32, i32* @REG_IRQFLAGS1, align 4
  %22 = call i32 @rf69_read_reg(%struct.spi_device* %20, i32 %21)
  %23 = load i32, i32* @MASK_IRQFLAGS1_TX_READY, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %27 = load i32, i32* @REG_IRQFLAGS1, align 4
  %28 = call i32 @rf69_read_reg(%struct.spi_device* %26, i32 %27)
  %29 = load i32, i32* @MASK_IRQFLAGS1_PLL_LOCK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %107

31:                                               ; preds = %2
  %32 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %33 = load i32, i32* @REG_IRQFLAGS1, align 4
  %34 = call i32 @rf69_read_reg(%struct.spi_device* %32, i32 %33)
  %35 = load i32, i32* @MASK_IRQFLAGS1_RSSI, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %3, align 4
  br label %107

37:                                               ; preds = %2
  %38 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %39 = load i32, i32* @REG_IRQFLAGS1, align 4
  %40 = call i32 @rf69_read_reg(%struct.spi_device* %38, i32 %39)
  %41 = load i32, i32* @MASK_IRQFLAGS1_TIMEOUT, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %3, align 4
  br label %107

43:                                               ; preds = %2
  %44 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %45 = load i32, i32* @REG_IRQFLAGS1, align 4
  %46 = call i32 @rf69_read_reg(%struct.spi_device* %44, i32 %45)
  %47 = load i32, i32* @MASK_IRQFLAGS1_AUTOMODE, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %2
  %50 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %51 = load i32, i32* @REG_IRQFLAGS1, align 4
  %52 = call i32 @rf69_read_reg(%struct.spi_device* %50, i32 %51)
  %53 = load i32, i32* @MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %3, align 4
  br label %107

55:                                               ; preds = %2
  %56 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %57 = load i32, i32* @REG_IRQFLAGS2, align 4
  %58 = call i32 @rf69_read_reg(%struct.spi_device* %56, i32 %57)
  %59 = load i32, i32* @MASK_IRQFLAGS2_FIFO_FULL, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %107

61:                                               ; preds = %2
  %62 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %63 = load i32, i32* @REG_IRQFLAGS2, align 4
  %64 = call i32 @rf69_read_reg(%struct.spi_device* %62, i32 %63)
  %65 = load i32, i32* @MASK_IRQFLAGS2_FIFO_NOT_EMPTY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %107

70:                                               ; preds = %2
  %71 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %72 = load i32, i32* @REG_IRQFLAGS2, align 4
  %73 = call i32 @rf69_read_reg(%struct.spi_device* %71, i32 %72)
  %74 = load i32, i32* @MASK_IRQFLAGS2_FIFO_LEVEL, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %3, align 4
  br label %107

76:                                               ; preds = %2
  %77 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %78 = load i32, i32* @REG_IRQFLAGS2, align 4
  %79 = call i32 @rf69_read_reg(%struct.spi_device* %77, i32 %78)
  %80 = load i32, i32* @MASK_IRQFLAGS2_FIFO_OVERRUN, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %3, align 4
  br label %107

82:                                               ; preds = %2
  %83 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %84 = load i32, i32* @REG_IRQFLAGS2, align 4
  %85 = call i32 @rf69_read_reg(%struct.spi_device* %83, i32 %84)
  %86 = load i32, i32* @MASK_IRQFLAGS2_PACKET_SENT, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %3, align 4
  br label %107

88:                                               ; preds = %2
  %89 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %90 = load i32, i32* @REG_IRQFLAGS2, align 4
  %91 = call i32 @rf69_read_reg(%struct.spi_device* %89, i32 %90)
  %92 = load i32, i32* @MASK_IRQFLAGS2_PAYLOAD_READY, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %2
  %95 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %96 = load i32, i32* @REG_IRQFLAGS2, align 4
  %97 = call i32 @rf69_read_reg(%struct.spi_device* %95, i32 %96)
  %98 = load i32, i32* @MASK_IRQFLAGS2_CRC_OK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %3, align 4
  br label %107

100:                                              ; preds = %2
  %101 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %102 = load i32, i32* @REG_IRQFLAGS2, align 4
  %103 = call i32 @rf69_read_reg(%struct.spi_device* %101, i32 %102)
  %104 = load i32, i32* @MASK_IRQFLAGS2_LOW_BAT, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %3, align 4
  br label %107

106:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %100, %94, %88, %82, %76, %70, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @rf69_read_reg(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
