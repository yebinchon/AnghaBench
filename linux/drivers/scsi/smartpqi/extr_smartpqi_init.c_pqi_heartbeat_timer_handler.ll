; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_heartbeat_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_heartbeat_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@heartbeat_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"no heartbeat detected - last heartbeat count: %u\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@PQI_HEARTBEAT_TIMER_INTERVAL = common dso_local global i64 0, align 8
@ctrl_info = common dso_local global %struct.pqi_ctrl_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pqi_heartbeat_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_heartbeat_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %7 = ptrtoint %struct.pqi_ctrl_info* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @heartbeat_timer, align 4
  %10 = call %struct.pqi_ctrl_info* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.pqi_ctrl_info* %10, %struct.pqi_ctrl_info** %5, align 8
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %12 = call i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info* %11)
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %14 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %19 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %18, i32 0, i32 4
  %20 = call i32 @atomic_read(i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %22 = call i64 @pqi_read_heartbeat_counter(%struct.pqi_ctrl_info* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %17
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %31 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %42 = call i32 @pqi_take_ctrl_offline(%struct.pqi_ctrl_info* %41)
  br label %58

43:                                               ; preds = %28
  br label %48

44:                                               ; preds = %17
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %47 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %51 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %53 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %52, i32 0, i32 2
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @PQI_HEARTBEAT_TIMER_INTERVAL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @mod_timer(i32* %53, i64 %56)
  br label %58

58:                                               ; preds = %48, %34, %16
  ret void
}

declare dso_local %struct.pqi_ctrl_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @pqi_read_heartbeat_counter(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @pqi_take_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
