; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_housekeeping_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_housekeeping_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_mac = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ZD_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_mac*)* @housekeeping_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @housekeeping_disable(%struct.zd_mac* %0) #0 {
  %2 = alloca %struct.zd_mac*, align 8
  store %struct.zd_mac* %0, %struct.zd_mac** %2, align 8
  %3 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %4 = call i32 @zd_mac_dev(%struct.zd_mac* %3)
  %5 = call i32 @dev_dbg_f(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %7 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.zd_mac*, %struct.zd_mac** %2, align 8
  %11 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %10, i32 0, i32 0
  %12 = load i32, i32* @ZD_LED_OFF, align 4
  %13 = call i32 @zd_chip_control_leds(i32* %11, i32 %12)
  ret void
}

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_mac_dev(%struct.zd_mac*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @zd_chip_control_leds(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
