; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_stroke_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_stroke_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i64, i32, i64 }

@UWB_MAX_LOST_BEACONS = common dso_local global i32 0, align 4
@UWB_RSV_STATE_NONE = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_INITIATED = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_MOVE_EXPANDING = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_MOVE_COMBINING = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_MOVE_REDUCING = common dso_local global i64 0, align 8
@UWB_RSV_STATE_O_ESTABLISHED = common dso_local global i64 0, align 8
@UWB_SUPERFRAME_LENGTH_US = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv*)* @uwb_rsv_stroke_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rsv_stroke_timer(%struct.uwb_rsv* %0) #0 {
  %2 = alloca %struct.uwb_rsv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %2, align 8
  %5 = load i32, i32* @UWB_MAX_LOST_BEACONS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UWB_RSV_STATE_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %19 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UWB_RSV_STATE_O_INITIATED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %25 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UWB_RSV_STATE_O_MOVE_EXPANDING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %31 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UWB_RSV_STATE_O_MOVE_COMBINING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %37 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UWB_RSV_STATE_O_MOVE_REDUCING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29, %23, %17
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %44 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UWB_RSV_STATE_O_ESTABLISHED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %12
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i32, i32* %3, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 2
  %57 = load i32, i32* @UWB_SUPERFRAME_LENGTH_US, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %60 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %59, i32 0, i32 1
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @usecs_to_jiffies(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @mod_timer(i32* %60, i64 %64)
  br label %70

66:                                               ; preds = %51
  %67 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %68 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %67, i32 0, i32 1
  %69 = call i32 @del_timer(i32* %68)
  br label %70

70:                                               ; preds = %66, %54
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
