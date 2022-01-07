; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_flush_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_flush_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@REG_RXPKT_NUM = common dso_local global i32 0, align 4
@RXPKT_NUM_RW_RELEASE_EN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RXPKT_NUM_RXDMA_IDLE = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to flush FIFO\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8xxxu_flush_fifo(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %12 = load i32, i32* @REG_TXPAUSE, align 4
  %13 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %11, i32 %12, i32 255)
  %14 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %15 = load i32, i32* @REG_RXPKT_NUM, align 4
  %16 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @RXPKT_NUM_RW_RELEASE_EN, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %21 = load i32, i32* @REG_RXPKT_NUM, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %20, i32 %21, i32 %22)
  store i32 100, i32* %5, align 4
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %36, %1
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %28 = load i32, i32* @REG_RXPKT_NUM, align 4
  %29 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RXPKT_NUM_RXDMA_IDLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %40

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %26, label %40

40:                                               ; preds = %36, %34
  %41 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %42 = load i32, i32* @REG_RQPN_NPQ, align 4
  %43 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %41, i32 %42, i32 0)
  %44 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %45 = load i32, i32* @REG_RQPN, align 4
  %46 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %44, i32 %45, i32 -2147483648)
  %47 = call i32 @mdelay(i32 2)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %40
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
