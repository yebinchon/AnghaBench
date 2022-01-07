; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_speedtch.c_speedtch_status_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_speedtch.c_speedtch_status_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.speedtch_instance_data = type { i64, i32, i32, i32 }
%struct.timer_list = type { i32 }

@status_check_timer = common dso_local global i32 0, align 4
@MAX_POLL_DELAY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Too many failures - disabling line status polling\0A\00", align 1
@instance = common dso_local global %struct.speedtch_instance_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @speedtch_status_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speedtch_status_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.speedtch_instance_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %5 = ptrtoint %struct.speedtch_instance_data* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @status_check_timer, align 4
  %8 = call %struct.speedtch_instance_data* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.speedtch_instance_data* %8, %struct.speedtch_instance_data** %3, align 8
  %9 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %10 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %9, i32 0, i32 3
  %11 = call i32 @schedule_work(i32* %10)
  %12 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %13 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAX_POLL_DELAY, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %19 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %18, i32 0, i32 2
  %20 = load i64, i64* @jiffies, align 8
  %21 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %22 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @msecs_to_jiffies(i64 %23)
  %25 = add nsw i64 %20, %24
  %26 = call i32 @mod_timer(i32* %19, i64 %25)
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %29 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @atm_warn(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %17
  ret void
}

declare dso_local %struct.speedtch_instance_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @atm_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
