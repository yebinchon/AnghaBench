; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_mac.c_mt76x2_mac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_mac.c_mt76x2_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TXOP_ED_CCA_EN = common dso_local global i32 0, align 4
@MT_TXOP_HLDR_ET = common dso_local global i32 0, align 4
@MT_TXOP_HLDR_TX40M_BLK_EN = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_TX_RTS_CFG = common dso_local global i32 0, align 4
@MT_TX_RTS_CFG_RETRY_LIMIT = common dso_local global i32 0, align 4
@MT_MAC_STATUS = common dso_local global i32 0, align 4
@MT_MAC_STATUS_RX = common dso_local global i32 0, align 4
@MT_MAC_STATUS_TX = common dso_local global i32 0, align 4
@IBI = common dso_local global i32 0, align 4
@CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_mac_stop(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %10 = load i32, i32* @MT_TXOP_ED_CCA_EN, align 4
  %11 = call i32 @mt76_clear(%struct.mt76x02_dev* %8, i32 %9, i32 %10)
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %13 = load i32, i32* @MT_TXOP_HLDR_ET, align 4
  %14 = load i32, i32* @MT_TXOP_HLDR_TX40M_BLK_EN, align 4
  %15 = call i32 @mt76_clear(%struct.mt76x02_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %18 = call i32 @mt76_wr(%struct.mt76x02_dev* %16, i32 %17, i32 0)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %21 = call i32 @mt76_rr(%struct.mt76x02_dev* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MT_TX_RTS_CFG_RETRY_LIMIT, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @mt76_wr(%struct.mt76x02_dev* %22, i32 %23, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %50, %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 300
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = load i32, i32* @MT_MAC_STATUS, align 4
  %35 = call i32 @mt76_rr(%struct.mt76x02_dev* %33, i32 %34)
  %36 = load i32, i32* @MT_MAC_STATUS_RX, align 4
  %37 = load i32, i32* @MT_MAC_STATUS_TX, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = load i32, i32* @IBI, align 4
  %44 = call i32 @MT_BBP(i32 %43, i32 12)
  %45 = call i32 @mt76_rr(%struct.mt76x02_dev* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %32
  %48 = call i32 @udelay(i32 1)
  br label %50

49:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %29

53:                                               ; preds = %49, %29
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %61 = load i32, i32* @CORE, align 4
  %62 = call i32 @MT_BBP(i32 %61, i32 4)
  %63 = call i32 @BIT(i32 1)
  %64 = call i32 @mt76_set(%struct.mt76x02_dev* %60, i32 %62, i32 %63)
  %65 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %66 = load i32, i32* @CORE, align 4
  %67 = call i32 @MT_BBP(i32 %66, i32 4)
  %68 = call i32 @BIT(i32 1)
  %69 = call i32 @mt76_clear(%struct.mt76x02_dev* %65, i32 %67, i32 %68)
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %71 = load i32, i32* @CORE, align 4
  %72 = call i32 @MT_BBP(i32 %71, i32 4)
  %73 = call i32 @BIT(i32 0)
  %74 = call i32 @mt76_set(%struct.mt76x02_dev* %70, i32 %72, i32 %73)
  %75 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %76 = load i32, i32* @CORE, align 4
  %77 = call i32 @MT_BBP(i32 %76, i32 4)
  %78 = call i32 @BIT(i32 0)
  %79 = call i32 @mt76_clear(%struct.mt76x02_dev* %75, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %59, %56, %53
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %82 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @mt76_wr(%struct.mt76x02_dev* %81, i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
