; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_listen_mode_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_listen_mode_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@listen_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Listen mode timeout\0A\00", align 1
@PN533_POLL_INTERVAL = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.pn533* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pn533_listen_mode_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_listen_mode_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pn533*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.pn533*, %struct.pn533** %3, align 8
  %5 = ptrtoint %struct.pn533* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @listen_timer, align 4
  %8 = call %struct.pn533* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.pn533* %8, %struct.pn533** %3, align 8
  %9 = load %struct.pn533*, %struct.pn533** %3, align 8
  %10 = getelementptr inbounds %struct.pn533, %struct.pn533* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pn533*, %struct.pn533** %3, align 8
  %14 = getelementptr inbounds %struct.pn533, %struct.pn533* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.pn533*, %struct.pn533** %3, align 8
  %16 = call i32 @pn533_poll_next_mod(%struct.pn533* %15)
  %17 = load %struct.pn533*, %struct.pn533** %3, align 8
  %18 = getelementptr inbounds %struct.pn533, %struct.pn533* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pn533*, %struct.pn533** %3, align 8
  %21 = getelementptr inbounds %struct.pn533, %struct.pn533* %20, i32 0, i32 1
  %22 = load i32, i32* @PN533_POLL_INTERVAL, align 4
  %23 = call i32 @msecs_to_jiffies(i32 %22)
  %24 = call i32 @queue_delayed_work(i32 %19, i32* %21, i32 %23)
  ret void
}

declare dso_local %struct.pn533* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pn533_poll_next_mod(%struct.pn533*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
