; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpwd.c_cpwd_brokentimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpwd.c_cpwd_brokentimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpwd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.timer_list = type { i32 }

@cpwd_device = common dso_local global %struct.cpwd* null, align 8
@cpwd_timer = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@WD_NUMDEVS = common dso_local global i32 0, align 4
@WD_STAT_BSTOP = common dso_local global i32 0, align 4
@WD_BTIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cpwd_brokentimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpwd_brokentimer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.cpwd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.cpwd*, %struct.cpwd** @cpwd_device, align 8
  store %struct.cpwd* %6, %struct.cpwd** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i64 @timer_pending(%struct.TYPE_7__* @cpwd_timer)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @del_timer(%struct.TYPE_7__* @cpwd_timer)
  br label %11

11:                                               ; preds = %9, %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %35, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @WD_NUMDEVS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %18 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WD_STAT_BSTOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @cpwd_resetbrokentimer(%struct.cpwd* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @WD_BTIMEOUT, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cpwd_timer, i32 0, i32 0), align 4
  %43 = call i32 @add_timer(%struct.TYPE_7__* @cpwd_timer)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local i64 @timer_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @cpwd_resetbrokentimer(%struct.cpwd*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
