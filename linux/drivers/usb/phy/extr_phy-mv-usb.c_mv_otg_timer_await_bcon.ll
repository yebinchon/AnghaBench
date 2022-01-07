; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_timer_await_bcon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_timer_await_bcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.mv_otg = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@otg_ctrl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@A_WAIT_BCON_TIMER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"B Device No Response!\0A\00", align 1
@mvotg = common dso_local global %struct.mv_otg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mv_otg_timer_await_bcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_otg_timer_await_bcon(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mv_otg*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %5 = ptrtoint %struct.mv_otg* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @otg_ctrl, i32 0, i32 0), align 8
  %8 = load i64, i64* @A_WAIT_BCON_TIMER, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mv_otg* @from_timer(i32 %5, %struct.timer_list* %6, i32 %10)
  store %struct.mv_otg* %11, %struct.mv_otg** %3, align 8
  %12 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %13 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %16 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %21 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %20, i32 0, i32 0
  %22 = call i64 @spin_trylock(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %26 = call i32 @mv_otg_run_state_machine(%struct.mv_otg* %25, i32 0)
  %27 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %28 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.mv_otg* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @mv_otg_run_state_machine(%struct.mv_otg*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
