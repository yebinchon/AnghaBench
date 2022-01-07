; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-avail.c_uwbd_evt_handle_rc_drp_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-avail.c_uwbd_evt_handle_rc_drp_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_event = type { %struct.uwb_rc* }
%struct.uwb_rc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@bmp = common dso_local global i32 0, align 4
@UWB_NUM_MAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwbd_evt_handle_rc_drp_avail(%struct.uwb_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_event* %0, %struct.uwb_event** %3, align 8
  %6 = load %struct.uwb_event*, %struct.uwb_event** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %6, i32 0, i32 0
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  store %struct.uwb_rc* %8, %struct.uwb_rc** %5, align 8
  %9 = load i32, i32* @bmp, align 4
  %10 = load i32, i32* @UWB_NUM_MAS, align 4
  %11 = call i32 @DECLARE_BITMAP(i32 %9, i32 %10)
  %12 = load %struct.uwb_event*, %struct.uwb_event** %3, align 8
  %13 = load i32, i32* @bmp, align 4
  %14 = call i32 @uwbd_evt_get_drp_avail(%struct.uwb_event* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %21 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @bmp, align 4
  %28 = load i32, i32* @UWB_NUM_MAS, align 4
  %29 = call i32 @bitmap_copy(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %31 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %34 = call i32 @uwb_rsv_handle_drp_avail_change(%struct.uwb_rc* %33)
  %35 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %36 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %39 = call i32 @uwb_rsv_sched_update(%struct.uwb_rc* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %19, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @uwbd_evt_get_drp_avail(%struct.uwb_event*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @uwb_rsv_handle_drp_avail_change(%struct.uwb_rc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @uwb_rsv_sched_update(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
