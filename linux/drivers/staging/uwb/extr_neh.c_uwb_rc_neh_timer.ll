; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc_neh = type { i64, i64, %struct.uwb_rc* }
%struct.uwb_rc = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@neh = common dso_local global %struct.uwb_rc_neh* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @uwb_rc_neh_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rc_neh_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.uwb_rc_neh*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %3, align 8
  %7 = ptrtoint %struct.uwb_rc_neh* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.uwb_rc_neh* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.uwb_rc_neh* %10, %struct.uwb_rc_neh** %3, align 8
  %11 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %3, align 8
  %12 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %11, i32 0, i32 2
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %12, align 8
  store %struct.uwb_rc* %13, %struct.uwb_rc** %4, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %15 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %3, align 8
  %19 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %49

27:                                               ; preds = %1
  %28 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %3, align 8
  %29 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %34 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %3, align 8
  %35 = call i32 @__uwb_rc_neh_rm(%struct.uwb_rc* %33, %struct.uwb_rc_neh* %34)
  br label %37

36:                                               ; preds = %27
  store %struct.uwb_rc_neh* null, %struct.uwb_rc_neh** %3, align 8
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %39 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %3, align 8
  %43 = icmp ne %struct.uwb_rc_neh* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %3, align 8
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 @uwb_rc_neh_cb(%struct.uwb_rc_neh* %45, i32* null, i32 %47)
  br label %49

49:                                               ; preds = %22, %44, %37
  ret void
}

declare dso_local %struct.uwb_rc_neh* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__uwb_rc_neh_rm(%struct.uwb_rc*, %struct.uwb_rc_neh*) #1

declare dso_local i32 @uwb_rc_neh_cb(%struct.uwb_rc_neh*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
