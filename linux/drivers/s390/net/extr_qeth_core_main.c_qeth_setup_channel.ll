; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_channel = type { i32, i32, %struct.ccw_device* }
%struct.ccw_device = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setupch\00", align 1
@CH_STATE_DOWN = common dso_local global i32 0, align 4
@qeth_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_channel*)* @qeth_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_setup_channel(%struct.qeth_channel* %0) #0 {
  %2 = alloca %struct.qeth_channel*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.qeth_channel* %0, %struct.qeth_channel** %2, align 8
  %4 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %5 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %4, i32 0, i32 2
  %6 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  store %struct.ccw_device* %6, %struct.ccw_device** %3, align 8
  %7 = load i32, i32* @SETUP, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @CH_STATE_DOWN, align 4
  %10 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %11 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %13 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %12, i32 0, i32 0
  %14 = call i32 @atomic_set(i32* %13, i32 0)
  %15 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %16 = call i32 @get_ccwdev_lock(%struct.ccw_device* %15)
  %17 = call i32 @spin_lock_irq(i32 %16)
  %18 = load i32, i32* @qeth_irq, align 4
  %19 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %20 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %22 = call i32 @get_ccwdev_lock(%struct.ccw_device* %21)
  %23 = call i32 @spin_unlock_irq(i32 %22)
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
