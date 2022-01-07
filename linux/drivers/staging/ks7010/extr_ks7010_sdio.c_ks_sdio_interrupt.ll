; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_sdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks_sdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.ks_sdio_card = type { %struct.ks_wlan_private* }
%struct.ks_wlan_private = type { i64, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@DEVICE_STATE_BOOT = common dso_local global i64 0, align 8
@INT_PENDING_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"read INT_PENDING_REG\0A\00", align 1
@INT_GCR_B = common dso_local global i32 0, align 4
@PS_SNOOZE = common dso_local global i64 0, align 8
@GCR_B_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"read GCR_B_REG\0A\00", align 1
@GCR_B_ACTIVE = common dso_local global i32 0, align 4
@PS_WAKEUP = common dso_local global i32 0, align 4
@WSTATUS_RSIZE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"read WSTATUS_RSIZE_REG\0A\00", align 1
@RSIZE_MASK = common dso_local global i32 0, align 4
@WSTATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @ks_sdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_sdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ks_sdio_card*, align 8
  %5 = alloca %struct.ks_wlan_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %10 = call %struct.ks_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %9)
  store %struct.ks_sdio_card* %10, %struct.ks_sdio_card** %4, align 8
  %11 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %4, align 8
  %12 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %11, i32 0, i32 0
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %12, align 8
  store %struct.ks_wlan_private* %13, %struct.ks_wlan_private** %5, align 8
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DEVICE_STATE_BOOT, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %138

20:                                               ; preds = %1
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %22 = load i32, i32* @INT_PENDING_REG, align 4
  %23 = call i32 @ks7010_sdio_readb(%struct.ks_wlan_private* %21, i32 %22, i32* %6)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %28 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %138

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @INT_GCR_B, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %38 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @atomic_read(i32* %39)
  %41 = load i64, i64* @PS_SNOOZE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %36, %31
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %45 = load i32, i32* @GCR_B_REG, align 4
  %46 = call i32 @ks7010_sdio_readb(%struct.ks_wlan_private* %44, i32 %45, i32* %8)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %51 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @netdev_err(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %138

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @GCR_B_ACTIVE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %60 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i64 @atomic_read(i32* %61)
  %63 = load i64, i64* @PS_SNOOZE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %67 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* @PS_WAKEUP, align 4
  %70 = call i32 @atomic_set(i32* %68, i32 %69)
  %71 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %72 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %65, %58
  %74 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %75 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @complete(i32* %76)
  br label %78

78:                                               ; preds = %73, %54
  br label %79

79:                                               ; preds = %78, %36
  br label %80

80:                                               ; preds = %134, %79
  %81 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %82 = load i32, i32* @WSTATUS_RSIZE_REG, align 4
  %83 = call i32 @ks7010_sdio_readb(%struct.ks_wlan_private* %81, i32 %82, i32* %8)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %88 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @netdev_err(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %138

91:                                               ; preds = %80
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @RSIZE_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = call i32 @ks_wlan_hw_rx(%struct.ks_wlan_private* %98, i64 %101)
  br label %103

103:                                              ; preds = %97, %91
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @WSTATUS_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %103
  %109 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %110 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i64 @atomic_read(i32* %111)
  %113 = load i64, i64* @PS_SNOOZE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %117 = call i64 @txq_has_space(%struct.ks_wlan_private* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %121 = call i32 @ks_wlan_hw_wakeup_request(%struct.ks_wlan_private* %120)
  %122 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %123 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %126 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %125, i32 0, i32 1
  %127 = call i32 @queue_delayed_work(i32 %124, i32* %126, i32 1)
  br label %145

128:                                              ; preds = %115
  br label %132

129:                                              ; preds = %108
  %130 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %131 = call i32 @tx_device_task(%struct.ks_wlan_private* %130)
  br label %132

132:                                              ; preds = %129, %128
  br label %133

133:                                              ; preds = %132, %103
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %80, label %137

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %86, %49, %26, %19
  %139 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %140 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %143 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %142, i32 0, i32 1
  %144 = call i32 @queue_delayed_work(i32 %141, i32* %143, i32 0)
  br label %145

145:                                              ; preds = %138, %119
  ret void
}

declare dso_local %struct.ks_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @ks7010_sdio_readb(%struct.ks_wlan_private*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @ks_wlan_hw_rx(%struct.ks_wlan_private*, i64) #1

declare dso_local i64 @txq_has_space(%struct.ks_wlan_private*) #1

declare dso_local i32 @ks_wlan_hw_wakeup_request(%struct.ks_wlan_private*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @tx_device_task(%struct.ks_wlan_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
