; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_involved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_involved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_dev = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rsv = type { i64 }

@UWB_RSV_STATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_dev*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*)* @uwb_drp_process_involved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_involved(%struct.uwb_rc* %0, %struct.uwb_dev* %1, %struct.uwb_rc_evt_drp* %2, %struct.uwb_ie_drp* %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.uwb_dev*, align 8
  %7 = alloca %struct.uwb_rc_evt_drp*, align 8
  %8 = alloca %struct.uwb_ie_drp*, align 8
  %9 = alloca %struct.uwb_rsv*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store %struct.uwb_dev* %1, %struct.uwb_dev** %6, align 8
  store %struct.uwb_rc_evt_drp* %2, %struct.uwb_rc_evt_drp** %7, align 8
  store %struct.uwb_ie_drp* %3, %struct.uwb_ie_drp** %8, align 8
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %11 = load %struct.uwb_dev*, %struct.uwb_dev** %6, align 8
  %12 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %13 = call %struct.uwb_rsv* @uwb_rsv_find(%struct.uwb_rc* %10, %struct.uwb_dev* %11, %struct.uwb_ie_drp* %12)
  store %struct.uwb_rsv* %13, %struct.uwb_rsv** %9, align 8
  %14 = load %struct.uwb_rsv*, %struct.uwb_rsv** %9, align 8
  %15 = icmp ne %struct.uwb_rsv* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %44

17:                                               ; preds = %4
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %9, align 8
  %19 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UWB_RSV_STATE_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.uwb_rsv*, %struct.uwb_rsv** %9, align 8
  %25 = load i64, i64* @UWB_RSV_STATE_NONE, align 8
  %26 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %24, i64 %25)
  br label %44

27:                                               ; preds = %17
  %28 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %29 = call i64 @uwb_ie_drp_owner(%struct.uwb_ie_drp* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %33 = load %struct.uwb_rsv*, %struct.uwb_rsv** %9, align 8
  %34 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %35 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %7, align 8
  %36 = call i32 @uwb_drp_process_target(%struct.uwb_rc* %32, %struct.uwb_rsv* %33, %struct.uwb_ie_drp* %34, %struct.uwb_rc_evt_drp* %35)
  br label %44

37:                                               ; preds = %27
  %38 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %39 = load %struct.uwb_rsv*, %struct.uwb_rsv** %9, align 8
  %40 = load %struct.uwb_dev*, %struct.uwb_dev** %6, align 8
  %41 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %42 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %7, align 8
  %43 = call i32 @uwb_drp_process_owner(%struct.uwb_rc* %38, %struct.uwb_rsv* %39, %struct.uwb_dev* %40, %struct.uwb_ie_drp* %41, %struct.uwb_rc_evt_drp* %42)
  br label %44

44:                                               ; preds = %16, %23, %37, %31
  ret void
}

declare dso_local %struct.uwb_rsv* @uwb_rsv_find(%struct.uwb_rc*, %struct.uwb_dev*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i64) #1

declare dso_local i64 @uwb_ie_drp_owner(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_process_target(%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_ie_drp*, %struct.uwb_rc_evt_drp*) #1

declare dso_local i32 @uwb_drp_process_owner(%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_dev*, %struct.uwb_ie_drp*, %struct.uwb_rc_evt_drp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
