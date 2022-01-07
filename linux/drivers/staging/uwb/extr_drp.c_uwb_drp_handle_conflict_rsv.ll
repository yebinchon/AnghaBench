; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_handle_conflict_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_handle_conflict_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_rsv = type { %struct.TYPE_4__, %struct.uwb_rsv_move }
%struct.TYPE_4__ = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rsv*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*, %struct.uwb_mas_bm*)* @uwb_drp_handle_conflict_rsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_handle_conflict_rsv(%struct.uwb_rc* %0, %struct.uwb_rsv* %1, %struct.uwb_rc_evt_drp* %2, %struct.uwb_ie_drp* %3, %struct.uwb_mas_bm* %4) #0 {
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_rsv*, align 8
  %8 = alloca %struct.uwb_rc_evt_drp*, align 8
  %9 = alloca %struct.uwb_ie_drp*, align 8
  %10 = alloca %struct.uwb_mas_bm*, align 8
  %11 = alloca %struct.uwb_rsv_move*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rsv* %1, %struct.uwb_rsv** %7, align 8
  store %struct.uwb_rc_evt_drp* %2, %struct.uwb_rc_evt_drp** %8, align 8
  store %struct.uwb_ie_drp* %3, %struct.uwb_ie_drp** %9, align 8
  store %struct.uwb_mas_bm* %4, %struct.uwb_mas_bm** %10, align 8
  %12 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %13 = call i64 @uwb_rsv_has_two_drp_ies(%struct.uwb_rsv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %5
  %16 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %17 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %16, i32 0, i32 1
  store %struct.uwb_rsv_move* %17, %struct.uwb_rsv_move** %11, align 8
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %19 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %23 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UWB_NUM_MAS, align 4
  %26 = call i64 @bitmap_intersects(i32 %21, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %30 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %8, align 8
  %31 = getelementptr inbounds %struct.uwb_rc_evt_drp, %struct.uwb_rc_evt_drp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %34 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %35 = call i32 @handle_conflict_expanding(%struct.uwb_ie_drp* %29, i32 %32, %struct.uwb_rsv* %33, i32 0, %struct.uwb_mas_bm* %34)
  br label %56

36:                                               ; preds = %15
  %37 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %11, align 8
  %38 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %42 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UWB_NUM_MAS, align 4
  %45 = call i64 @bitmap_intersects(i32 %40, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %49 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %8, align 8
  %50 = getelementptr inbounds %struct.uwb_rc_evt_drp, %struct.uwb_rc_evt_drp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %53 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %54 = call i32 @handle_conflict_expanding(%struct.uwb_ie_drp* %48, i32 %51, %struct.uwb_rsv* %52, i32 1, %struct.uwb_mas_bm* %53)
  br label %55

55:                                               ; preds = %47, %36
  br label %56

56:                                               ; preds = %55, %28
  br label %77

57:                                               ; preds = %5
  %58 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %59 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %63 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @UWB_NUM_MAS, align 4
  %66 = call i64 @bitmap_intersects(i32 %61, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %57
  %69 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %9, align 8
  %70 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %8, align 8
  %71 = getelementptr inbounds %struct.uwb_rc_evt_drp, %struct.uwb_rc_evt_drp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %74 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %10, align 8
  %75 = call i32 @handle_conflict_normal(%struct.uwb_ie_drp* %69, i32 %72, %struct.uwb_rsv* %73, %struct.uwb_mas_bm* %74)
  br label %76

76:                                               ; preds = %68, %57
  br label %77

77:                                               ; preds = %76, %56
  ret void
}

declare dso_local i64 @uwb_rsv_has_two_drp_ies(%struct.uwb_rsv*) #1

declare dso_local i64 @bitmap_intersects(i32, i32, i32) #1

declare dso_local i32 @handle_conflict_expanding(%struct.uwb_ie_drp*, i32, %struct.uwb_rsv*, i32, %struct.uwb_mas_bm*) #1

declare dso_local i32 @handle_conflict_normal(%struct.uwb_ie_drp*, i32, %struct.uwb_rsv*, %struct.uwb_mas_bm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
