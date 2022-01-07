; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, %struct.TYPE_2__, i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@RAW3215_TIMER_RUNS = common dso_local global i32 0, align 4
@RAW3215_WORKING = common dso_local global i32 0, align 4
@RAW3215_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@raw = common dso_local global %struct.raw3215_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @raw3215_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %6 = ptrtoint %struct.raw3215_info* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.raw3215_info* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.raw3215_info* %9, %struct.raw3215_info** %3, align 8
  %10 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %11 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_ccwdev_lock(i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %19 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %23 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %22, i32 0, i32 5
  %24 = call i32 @tty_port_suspended(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %70, label %26

26:                                               ; preds = %1
  %27 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %28 = call i32 @raw3215_mk_write_req(%struct.raw3215_info* %27)
  %29 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %30 = call i32 @raw3215_start_io(%struct.raw3215_info* %29)
  %31 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %32 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %37 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35, %26
  %41 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %42 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RAW3215_WORKING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %40
  %48 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %49 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* @RAW3215_TIMEOUT, align 8
  %56 = load i64, i64* @jiffies, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %59 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %62 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %61, i32 0, i32 2
  %63 = call i32 @add_timer(%struct.TYPE_2__* %62)
  %64 = load i32, i32* @RAW3215_TIMER_RUNS, align 4
  %65 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %66 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %54, %47, %40, %35
  br label %70

70:                                               ; preds = %69, %1
  %71 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %72 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @get_ccwdev_lock(i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32 %74, i64 %75)
  ret void
}

declare dso_local %struct.raw3215_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @tty_port_suspended(i32*) #1

declare dso_local i32 @raw3215_mk_write_req(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_start_io(%struct.raw3215_info*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
