; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rsv = type { %struct.TYPE_5__, i32, %struct.uwb_rsv_move }
%struct.TYPE_5__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_ACCEPTED = common dso_local global i32 0, align 4
@UWB_RSV_STATE_T_RESIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ignoring invalid DRP IE state (%d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_ie_drp*, %struct.uwb_rc_evt_drp*)* @uwb_drp_process_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process_target(%struct.uwb_rc* %0, %struct.uwb_rsv* %1, %struct.uwb_ie_drp* %2, %struct.uwb_rc_evt_drp* %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.uwb_rsv*, align 8
  %7 = alloca %struct.uwb_ie_drp*, align 8
  %8 = alloca %struct.uwb_rc_evt_drp*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.uwb_rsv_move*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uwb_mas_bm, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store %struct.uwb_rsv* %1, %struct.uwb_rsv** %6, align 8
  store %struct.uwb_ie_drp* %2, %struct.uwb_ie_drp** %7, align 8
  store %struct.uwb_rc_evt_drp* %3, %struct.uwb_rc_evt_drp** %8, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %15 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %17, i32 0, i32 2
  store %struct.uwb_rsv_move* %18, %struct.uwb_rsv_move** %10, align 8
  %19 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %20 = call i32 @uwb_ie_drp_status(%struct.uwb_ie_drp* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %22 = call i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %24 = call i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm* %13, %struct.uwb_ie_drp* %23)
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %87 [
    i32 129, label %26
    i32 128, label %32
  ]

26:                                               ; preds = %4
  %27 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %28 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %29 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %8, align 8
  %30 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %7, align 8
  %31 = call i32 @uwb_drp_process_target_accepted(%struct.uwb_rc* %27, %struct.uwb_rsv* %28, %struct.uwb_rc_evt_drp* %29, %struct.uwb_ie_drp* %30, %struct.uwb_mas_bm* %13)
  br label %92

32:                                               ; preds = %4
  %33 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %34 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UWB_NUM_MAS, align 4
  %40 = call i32 @bitmap_equal(i32 %36, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %44 = load i32, i32* @UWB_RSV_STATE_T_ACCEPTED, align 4
  %45 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %43, i32 %44)
  br label %92

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %50 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UWB_NUM_MAS, align 4
  %54 = call i32 @bitmap_subset(i32 %48, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %46
  %57 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %10, align 8
  %58 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %62 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UWB_NUM_MAS, align 4
  %68 = call i32 @bitmap_andnot(i32 %60, i32 %64, i32 %66, i32 %67)
  %69 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %70 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %10, align 8
  %73 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %72, i32 0, i32 0
  %74 = call i32 @uwb_drp_avail_release(i32 %71, %struct.TYPE_6__* %73)
  br label %75

75:                                               ; preds = %56, %46
  %76 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %77 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %13, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UWB_NUM_MAS, align 4
  %83 = call i32 @bitmap_copy(i32 %79, i32 %81, i32 %82)
  %84 = load %struct.uwb_rsv*, %struct.uwb_rsv** %6, align 8
  %85 = load i32, i32* @UWB_RSV_STATE_T_RESIZED, align 4
  %86 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %84, i32 %85)
  br label %92

87:                                               ; preds = %4
  %88 = load %struct.device*, %struct.device** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @dev_warn(%struct.device* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %75, %42, %26
  ret void
}

declare dso_local i32 @uwb_ie_drp_status(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_ie_drp_reason_code(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_ie_to_bm(%struct.uwb_mas_bm*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_process_target_accepted(%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @bitmap_equal(i32, i32, i32) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @bitmap_subset(i32, i32, i32) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @uwb_drp_avail_release(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
