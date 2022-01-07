; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_start_hnp_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_start_hnp_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { i32, i32 }

@otg_hnp_polling_work = common dso_local global i32 0, align 4
@T_HOST_REQ_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otg_fsm*)* @otg_start_hnp_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otg_start_hnp_polling(%struct.otg_fsm* %0) #0 {
  %2 = alloca %struct.otg_fsm*, align 8
  store %struct.otg_fsm* %0, %struct.otg_fsm** %2, align 8
  %3 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %4 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %10 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %9, i32 0, i32 0
  %11 = load i32, i32* @otg_hnp_polling_work, align 4
  %12 = call i32 @INIT_DELAYED_WORK(i32* %10, i32 %11)
  %13 = load %struct.otg_fsm*, %struct.otg_fsm** %2, align 8
  %14 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %13, i32 0, i32 0
  %15 = load i32, i32* @T_HOST_REQ_POLL, align 4
  %16 = call i32 @msecs_to_jiffies(i32 %15)
  %17 = call i32 @schedule_delayed_work(i32* %14, i32 %16)
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
