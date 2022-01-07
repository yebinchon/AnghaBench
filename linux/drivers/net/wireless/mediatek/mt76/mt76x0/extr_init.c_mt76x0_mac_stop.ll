; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_mac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TXOP_ED_CCA_EN = common dso_local global i32 0, align 4
@MT_MAC_STATUS = common dso_local global i32 0, align 4
@MT_MAC_STATUS_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Warning: MAC TX did not stop!\0A\00", align 1
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MT_RXQ_STA = common dso_local global i32 0, align 4
@MT_MAC_STATUS_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Warning: MAC RX did not stop!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x0_mac_stop(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  store i32 200, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %7 = load i32, i32* @MT_TXOP_ED_CCA_EN, align 4
  %8 = call i32 @mt76_clear(%struct.mt76x02_dev* %5, i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %15 = call i32 @mt76_rr(%struct.mt76x02_dev* %14, i32 1080)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %19 = call i32 @mt76_rr(%struct.mt76x02_dev* %18, i32 2608)
  %20 = and i32 %19, 255
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = call i32 @mt76_rr(%struct.mt76x02_dev* %23, i32 2612)
  %25 = and i32 %24, 16711935
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %17, %13
  %28 = phi i1 [ true, %17 ], [ true, %13 ], [ %26, %22 ]
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi i1 [ false, %9 ], [ %28, %27 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = call i32 @msleep(i32 10)
  br label %9

33:                                               ; preds = %29
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %35 = load i32, i32* @MT_MAC_STATUS, align 4
  %36 = load i32, i32* @MT_MAC_STATUS_TX, align 4
  %37 = call i32 @mt76_poll(%struct.mt76x02_dev* %34, i32 %35, i32 %36, i32 0, i32 1000)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %41 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %47 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %48 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_RX, align 4
  %49 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @mt76_clear(%struct.mt76x02_dev* %46, i32 %47, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %77, %45
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 200
  br i1 %54, label %55, label %80

55:                                               ; preds = %52
  %56 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %57 = load i32, i32* @MT_RXQ_STA, align 4
  %58 = call i32 @mt76_rr(%struct.mt76x02_dev* %56, i32 %57)
  %59 = and i32 %58, 16711680
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %55
  %62 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %63 = call i32 @mt76_rr(%struct.mt76x02_dev* %62, i32 2608)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %67 = call i32 @mt76_rr(%struct.mt76x02_dev* %66, i32 2612)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = icmp sgt i32 %70, 5
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %80

74:                                               ; preds = %69
  br label %77

75:                                               ; preds = %65, %61, %55
  %76 = call i32 @msleep(i32 1)
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %52

80:                                               ; preds = %73, %52
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %82 = load i32, i32* @MT_MAC_STATUS, align 4
  %83 = load i32, i32* @MT_MAC_STATUS_RX, align 4
  %84 = call i32 @mt76_poll(%struct.mt76x02_dev* %81, i32 %82, i32 %83, i32 0, i32 1000)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_warn(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %86, %80
  ret void
}

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
