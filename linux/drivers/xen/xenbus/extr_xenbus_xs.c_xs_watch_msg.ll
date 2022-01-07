; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_watch_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_watch_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_watch_event = type { i8*, i8*, i32, i32*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@watches_lock = common dso_local global i32 0, align 4
@watch_events_lock = common dso_local global i32 0, align 4
@watch_events = common dso_local global i32 0, align 4
@watch_events_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_watch_msg(%struct.xs_watch_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xs_watch_event*, align 8
  store %struct.xs_watch_event* %0, %struct.xs_watch_event** %3, align 8
  %4 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %5 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %8 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @count_strings(i64 %6, i32 %9)
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %14 = call i32 @kfree(%struct.xs_watch_event* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %19 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %23 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %25 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @strchr(i64 %26, i8 signext 0)
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %31 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = call i32 @spin_lock(i32* @watches_lock)
  %33 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %34 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32* @find_watch(i8* %35)
  %37 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %38 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %40 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %17
  %44 = call i32 @spin_lock(i32* @watch_events_lock)
  %45 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %46 = getelementptr inbounds %struct.xs_watch_event, %struct.xs_watch_event* %45, i32 0, i32 2
  %47 = call i32 @list_add_tail(i32* %46, i32* @watch_events)
  %48 = call i32 @wake_up(i32* @watch_events_waitq)
  %49 = call i32 @spin_unlock(i32* @watch_events_lock)
  br label %53

50:                                               ; preds = %17
  %51 = load %struct.xs_watch_event*, %struct.xs_watch_event** %3, align 8
  %52 = call i32 @kfree(%struct.xs_watch_event* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = call i32 @spin_unlock(i32* @watches_lock)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @count_strings(i64, i32) #1

declare dso_local i32 @kfree(%struct.xs_watch_event*) #1

declare dso_local i64 @strchr(i64, i8 signext) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @find_watch(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
