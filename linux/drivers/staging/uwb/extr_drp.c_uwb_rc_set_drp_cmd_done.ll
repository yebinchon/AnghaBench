; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_rc_set_drp_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_rc_set_drp_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uwb_rceb = type { i32 }
%struct.uwb_rc_evt_set_drp_ie = type { i64 }

@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"SET-DRP-IE failed: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SET-DRP-IE: timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, i8*, %struct.uwb_rceb*, i32)* @uwb_rc_set_drp_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rc_set_drp_cmd_done(%struct.uwb_rc* %0, i8* %1, %struct.uwb_rceb* %2, i32 %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uwb_rceb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uwb_rc_evt_set_drp_ie*, align 8
  %10 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.uwb_rceb* %2, %struct.uwb_rceb** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.uwb_rceb*, %struct.uwb_rceb** %7, align 8
  %12 = bitcast %struct.uwb_rceb* %11 to %struct.uwb_rc_evt_set_drp_ie*
  store %struct.uwb_rc_evt_set_drp_ie* %12, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %13 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %14 = icmp ne %struct.uwb_rc_evt_set_drp_ie* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %17 = getelementptr inbounds %struct.uwb_rc_evt_set_drp_ie, %struct.uwb_rc_evt_set_drp_ie* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %23 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %26 = getelementptr inbounds %struct.uwb_rc_evt_set_drp_ie, %struct.uwb_rc_evt_set_drp_ie* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @uwb_rc_strerror(i64 %27)
  %29 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %30 = getelementptr inbounds %struct.uwb_rc_evt_set_drp_ie, %struct.uwb_rc_evt_set_drp_ie* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %21, %15
  br label %39

34:                                               ; preds = %4
  %35 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %36 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %33
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %41 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %40, i32 0, i32 1
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %45 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %50 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %52 = call i32 @uwb_rsv_queue_update(%struct.uwb_rc* %51)
  br label %56

53:                                               ; preds = %39
  %54 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %55 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %58 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %57, i32 0, i32 1
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @uwb_rc_strerror(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uwb_rsv_queue_update(%struct.uwb_rc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
