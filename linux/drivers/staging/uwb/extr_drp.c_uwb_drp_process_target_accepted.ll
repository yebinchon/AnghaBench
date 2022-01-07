; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_target_accepted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_target_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_rsv = type { i64, %struct.TYPE_3__, %struct.uwb_rsv_move }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_RSV_STATE_T_CONFLICT = common dso_local global i64 0, align 8
@UWB_RSV_STATE_T_EXPANDING_ACCEPTED = common dso_local global i64 0, align 8
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_ACCEPTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*, %struct.uwb_mas_bm*)* @uwb_drp_process_target_accepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_target_accepted(%struct.uwb_rc* %0, %struct.uwb_rsv* %1, %struct.uwb_rc_evt_drp* %2, %struct.uwb_ie_drp* %3, %struct.uwb_mas_bm* %4) #0 {
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_rsv*, align 8
  %8 = alloca %struct.uwb_rc_evt_drp*, align 8
  %9 = alloca %struct.uwb_ie_drp*, align 8
  %10 = alloca %struct.uwb_mas_bm*, align 8
  %11 = alloca %struct.uwb_rsv_move*, align 8
  %12 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rsv* %1, %struct.uwb_rsv** %7, align 8
  store %struct.uwb_rc_evt_drp* %2, %struct.uwb_rc_evt_drp** %8, align 8
  store %struct.uwb_ie_drp* %3, %struct.uwb_ie_drp** %9, align 8
  store %struct.uwb_mas_bm* %4, %struct.uwb_mas_bm** %10, align 8
  %13 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %14 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %13, i32 0, i32 2
  store %struct.uwb_rsv_move* %14, %struct.uwb_rsv_move** %11, align 8
  %15 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %16 = call i32 @uwb_ie_drp_status(%struct.uwb_ie_drp* %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UWB_RSV_STATE_T_CONFLICT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %24 = load i64, i64* @UWB_RSV_STATE_T_CONFLICT, align 8
  %25 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %23, i64 %24)
  br label %95

26:                                               ; preds = %5
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %28 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UWB_RSV_STATE_T_EXPANDING_ACCEPTED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %34 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %38 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UWB_NUM_MAS, align 4
  %41 = call i32 @bitmap_equal(i32 %36, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %45 = load i64, i64* @UWB_RSV_STATE_T_EXPANDING_ACCEPTED, align 8
  %46 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %32
  br label %95

48:                                               ; preds = %26
  %49 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %50 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %54 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @UWB_NUM_MAS, align 4
  %57 = call i32 @bitmap_equal(i32 %52, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %48
  %60 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %61 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %62 = call i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc* %60, %struct.uwb_mas_bm* %61)
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %68 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %8, align 8
  %69 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %70 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %71 = call i32 @uwb_drp_handle_all_conflict_rsv(%struct.uwb_rc* %67, %struct.uwb_rc_evt_drp* %68, %struct.uwb_ie_drp* %69, %struct.uwb_mas_bm* %70)
  br label %85

72:                                               ; preds = %59
  %73 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %11, align 8
  %74 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %78 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @UWB_NUM_MAS, align 4
  %81 = call i32 @bitmap_copy(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %83 = load i64, i64* @UWB_RSV_STATE_T_EXPANDING_ACCEPTED, align 8
  %84 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %82, i64 %83)
  br label %85

85:                                               ; preds = %72, %66
  br label %94

86:                                               ; preds = %48
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %91 = load i64, i64* @UWB_RSV_STATE_T_ACCEPTED, align 8
  %92 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %90, i64 %91)
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %85
  br label %95

95:                                               ; preds = %22, %94, %47
  ret void
}

declare dso_local i32 @uwb_ie_drp_status(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i64) #1

declare dso_local i32 @bitmap_equal(i32, i32, i32) #1

declare dso_local i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @uwb_drp_handle_all_conflict_rsv(%struct.uwb_rc*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
