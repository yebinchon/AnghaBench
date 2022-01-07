; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwbd.c_uwbd_event_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwbd.c_uwbd_event_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_event = type { i64, %struct.TYPE_3__, %struct.uwb_rc*, i32 }
%struct.TYPE_3__ = type { %struct.uwb_event* }
%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@UWB_EVT_TYPE_NOTIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwbd_event_queue(%struct.uwb_event* %0) #0 {
  %2 = alloca %struct.uwb_event*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i64, align 8
  store %struct.uwb_event* %0, %struct.uwb_event** %2, align 8
  %5 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %6 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %5, i32 0, i32 2
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rc* %7, %struct.uwb_rc** %3, align 8
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %14 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %20 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %19, i32 0, i32 3
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = call i32 @list_add(i32* %20, i32* %23)
  %25 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %26 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = call i32 @wake_up_all(i32* %27)
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %31 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %30, i32 0, i32 2
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %31, align 8
  %33 = call i32 @__uwb_rc_put(%struct.uwb_rc* %32)
  %34 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %35 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UWB_EVT_TYPE_NOTIF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %41 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.uwb_event*, %struct.uwb_event** %42, align 8
  %44 = call i32 @kfree(%struct.uwb_event* %43)
  br label %45

45:                                               ; preds = %39, %29
  %46 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %47 = call i32 @kfree(%struct.uwb_event* %46)
  br label %48

48:                                               ; preds = %45, %18
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %50 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @__uwb_rc_put(%struct.uwb_rc*) #1

declare dso_local i32 @kfree(%struct.uwb_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
