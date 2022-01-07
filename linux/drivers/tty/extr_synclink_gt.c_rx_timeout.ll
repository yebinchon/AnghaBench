; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_rx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_rx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@rx_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s rx_timeout\0A\00", align 1
@BH_RECEIVE = common dso_local global i32 0, align 4
@info = common dso_local global %struct.slgt_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %6 = ptrtoint %struct.slgt_info* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @rx_timer, align 4
  %9 = call %struct.slgt_info* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.slgt_info* %9, %struct.slgt_info** %3, align 8
  %10 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @DBGINFO(i8* %14)
  %16 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* @BH_RECEIVE, align 4
  %21 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %22 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %26 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %25, i32 0, i32 1
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 0
  %31 = call i32 @bh_handler(i32* %30)
  ret void
}

declare dso_local %struct.slgt_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bh_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
