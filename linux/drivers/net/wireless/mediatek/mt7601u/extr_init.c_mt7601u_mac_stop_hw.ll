; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_mac_stop_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_mac_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32 }

@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_SYNC_MODE = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TBTT_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_BEACON_TX = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Warning: TX DMA did not stop!\0A\00", align 1
@MT_MAC_STATUS = common dso_local global i32 0, align 4
@MT_MAC_STATUS_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Warning: MAC TX did not stop!\0A\00", align 1
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MT_RXQ_STA = common dso_local global i32 0, align 4
@MT_MAC_STATUS_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Warning: MAC RX did not stop!\0A\00", align 1
@MT_USB_DMA_CFG_RX_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Warning: RX DMA did not stop!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*)* @mt7601u_mac_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_mac_stop_hw(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %5 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %6 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %123

11:                                               ; preds = %1
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %13 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %14 = load i32, i32* @MT_BEACON_TIME_CFG_TIMER_EN, align 4
  %15 = load i32, i32* @MT_BEACON_TIME_CFG_SYNC_MODE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MT_BEACON_TIME_CFG_TBTT_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MT_BEACON_TIME_CFG_BEACON_TX, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @mt76_clear(%struct.mt7601u_dev* %12, i32 %13, i32 %20)
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %23 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %24 = load i32, i32* @MT_USB_DMA_CFG_TX_BUSY, align 4
  %25 = call i32 @mt76_poll(%struct.mt7601u_dev* %22, i32 %23, i32 %24, i32 0, i32 1000)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %11
  %28 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %29 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %11
  store i32 200, i32* %3, align 4
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %39 = call i32 @mt76_rr(%struct.mt7601u_dev* %38, i32 1080)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %43 = call i32 @mt76_rr(%struct.mt7601u_dev* %42, i32 2608)
  %44 = and i32 %43, 255
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %48 = call i32 @mt76_rr(%struct.mt7601u_dev* %47, i32 2612)
  %49 = and i32 %48, 16711935
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %46, %41, %37
  %52 = phi i1 [ true, %41 ], [ true, %37 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %33
  %54 = phi i1 [ false, %33 ], [ %52, %51 ]
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = call i32 @msleep(i32 10)
  br label %33

57:                                               ; preds = %53
  %58 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %59 = load i32, i32* @MT_MAC_STATUS, align 4
  %60 = load i32, i32* @MT_MAC_STATUS_TX, align 4
  %61 = call i32 @mt76_poll(%struct.mt7601u_dev* %58, i32 %59, i32 %60, i32 0, i32 1000)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %70 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %71 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_RX, align 4
  %72 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @mt76_clear(%struct.mt7601u_dev* %69, i32 %70, i32 %73)
  store i32 0, i32* %4, align 4
  store i32 200, i32* %3, align 4
  br label %75

75:                                               ; preds = %99, %98, %68
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %3, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  %80 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %81 = load i32, i32* @MT_RXQ_STA, align 4
  %82 = call i32 @mt76_rr(%struct.mt7601u_dev* %80, i32 %81)
  %83 = and i32 %82, 16711680
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %79
  %86 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %87 = call i32 @mt76_rr(%struct.mt7601u_dev* %86, i32 2608)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %85
  %90 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %91 = call i32 @mt76_rr(%struct.mt7601u_dev* %90, i32 2612)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  %96 = icmp sgt i32 %94, 5
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %101

98:                                               ; preds = %93
  br label %75

99:                                               ; preds = %89, %85, %79
  %100 = call i32 @msleep(i32 1)
  br label %75

101:                                              ; preds = %97, %75
  %102 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %103 = load i32, i32* @MT_MAC_STATUS, align 4
  %104 = load i32, i32* @MT_MAC_STATUS_RX, align 4
  %105 = call i32 @mt76_poll(%struct.mt7601u_dev* %102, i32 %103, i32 %104, i32 0, i32 1000)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %109 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_warn(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %101
  %113 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %114 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %115 = load i32, i32* @MT_USB_DMA_CFG_RX_BUSY, align 4
  %116 = call i32 @mt76_poll(%struct.mt7601u_dev* %113, i32 %114, i32 %115, i32 0, i32 1000)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  %119 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %120 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_warn(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %10, %118, %112
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76_clear(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mt76_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
