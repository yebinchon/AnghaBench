; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rsv = type { i32 }
%struct.uwb_dev = type { i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"ignoring invalid DRP IE state (%d/%d)\0A\00", align 1
@UWB_RSV_STATE_O_PENDING = common dso_local global i32 0, align 4
@UWB_RSV_STATE_NONE = common dso_local global i32 0, align 4
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_dev*, %struct.uwb_ie_drp*, %struct.uwb_rc_evt_drp*)* @uwb_drp_process_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_owner(%struct.uwb_rc* %0, %struct.uwb_rsv* %1, %struct.uwb_dev* %2, %struct.uwb_ie_drp* %3, %struct.uwb_rc_evt_drp* %4) #0 {
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_rsv*, align 8
  %8 = alloca %struct.uwb_dev*, align 8
  %9 = alloca %struct.uwb_ie_drp*, align 8
  %10 = alloca %struct.uwb_rc_evt_drp*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.uwb_mas_bm, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rsv* %1, %struct.uwb_rsv** %7, align 8
  store %struct.uwb_dev* %2, %struct.uwb_dev** %8, align 8
  store %struct.uwb_ie_drp* %3, %struct.uwb_ie_drp** %9, align 8
  store %struct.uwb_rc_evt_drp* %4, %struct.uwb_rc_evt_drp** %10, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %19 = call i32 @uwb_ie_drp_status(%struct.uwb_ie_drp* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %21 = call i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %23 = call i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm* %14, %struct.uwb_ie_drp* %22)
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %31 [
    i32 131, label %28
  ]

28:                                               ; preds = %26
  %29 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %30 = call i32 @uwb_drp_process_owner_accepted(%struct.uwb_rsv* %29, %struct.uwb_mas_bm* %14)
  br label %36

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  br label %66

37:                                               ; preds = %5
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %60 [
    i32 128, label %39
    i32 129, label %43
    i32 130, label %47
  ]

39:                                               ; preds = %37
  %40 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %41 = load i32, i32* @UWB_RSV_STATE_O_PENDING, align 4
  %42 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %40, i32 %41)
  br label %65

43:                                               ; preds = %37
  %44 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %45 = load i32, i32* @UWB_RSV_STATE_NONE, align 4
  %46 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %44, i32 %45)
  br label %65

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %14, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uwb_dev*, %struct.uwb_dev** %8, align 8
  %51 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UWB_NUM_MAS, align 4
  %54 = call i32 @bitmap_complement(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %56 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %57 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %10, align 8
  %58 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %59 = call i32 @uwb_drp_handle_conflict_rsv(%struct.uwb_rc* %55, %struct.uwb_rsv* %56, %struct.uwb_rc_evt_drp* %57, %struct.uwb_ie_drp* %58, %struct.uwb_mas_bm* %14)
  br label %65

60:                                               ; preds = %37
  %61 = load %struct.device*, %struct.device** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %47, %43, %39
  br label %66

66:                                               ; preds = %65, %36
  ret void
}

declare dso_local i32 @uwb_ie_drp_status(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_process_owner_accepted(%struct.uwb_rsv*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @bitmap_complement(i32, i32, i32) #1

declare dso_local i32 @uwb_drp_handle_conflict_rsv(%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*, %struct.uwb_mas_bm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
