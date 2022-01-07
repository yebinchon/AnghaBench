; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_halt_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_halt_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_channel = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"haltch\00", align 1
@QETH_HALT_CHANNEL_PARM = common dso_local global i32 0, align 4
@CH_STATE_HALTED = common dso_local global i64 0, align 8
@QETH_TIMEOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_channel*)* @qeth_halt_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_halt_channel(%struct.qeth_card* %0, %struct.qeth_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_channel* %1, %struct.qeth_channel** %5, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @get_ccwdev_lock(i32 %11)
  %13 = call i32 @spin_lock_irq(i32 %12)
  %14 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %15 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QETH_HALT_CHANNEL_PARM, align 4
  %18 = call i32 @ccw_device_halt(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_ccwdev_lock(i32 %21)
  %23 = call i32 @spin_unlock_irq(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %2
  %29 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %33 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CH_STATE_HALTED, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @QETH_TIMEOUT, align 4
  %39 = call i32 @wait_event_interruptible_timeout(i32 %31, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ERESTARTSYS, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %28
  %47 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %48 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CH_STATE_HALTED, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ETIME, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %44, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_halt(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
