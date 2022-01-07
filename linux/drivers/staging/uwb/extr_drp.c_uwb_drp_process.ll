; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_rc_evt_drp = type { i32 }
%struct.uwb_dev = type { i32 }
%struct.uwb_ie_drp = type { i32 }

@UWB_DRP_TYPE_ALIEN_BP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rc_evt_drp*, %struct.uwb_dev*, %struct.uwb_ie_drp*)* @uwb_drp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_process(%struct.uwb_rc* %0, %struct.uwb_rc_evt_drp* %1, %struct.uwb_dev* %2, %struct.uwb_ie_drp* %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca %struct.uwb_rc_evt_drp*, align 8
  %7 = alloca %struct.uwb_dev*, align 8
  %8 = alloca %struct.uwb_ie_drp*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store %struct.uwb_rc_evt_drp* %1, %struct.uwb_rc_evt_drp** %6, align 8
  store %struct.uwb_dev* %2, %struct.uwb_dev** %7, align 8
  store %struct.uwb_ie_drp* %3, %struct.uwb_ie_drp** %8, align 8
  %9 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %10 = call i64 @uwb_ie_drp_type(%struct.uwb_ie_drp* %9)
  %11 = load i64, i64* @UWB_DRP_TYPE_ALIEN_BP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %15 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %16 = call i32 @uwb_drp_handle_alien_drp(%struct.uwb_rc* %14, %struct.uwb_ie_drp* %15)
  br label %34

17:                                               ; preds = %4
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %19 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %20 = call i64 @uwb_drp_involves_us(%struct.uwb_rc* %18, %struct.uwb_ie_drp* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %24 = load %struct.uwb_dev*, %struct.uwb_dev** %7, align 8
  %25 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %6, align 8
  %26 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %27 = call i32 @uwb_drp_process_involved(%struct.uwb_rc* %23, %struct.uwb_dev* %24, %struct.uwb_rc_evt_drp* %25, %struct.uwb_ie_drp* %26)
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %30 = load %struct.uwb_rc_evt_drp*, %struct.uwb_rc_evt_drp** %6, align 8
  %31 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %8, align 8
  %32 = call i32 @uwb_drp_process_not_involved(%struct.uwb_rc* %29, %struct.uwb_rc_evt_drp* %30, %struct.uwb_ie_drp* %31)
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33, %13
  ret void
}

declare dso_local i64 @uwb_ie_drp_type(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_handle_alien_drp(%struct.uwb_rc*, %struct.uwb_ie_drp*) #1

declare dso_local i64 @uwb_drp_involves_us(%struct.uwb_rc*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_process_involved(%struct.uwb_rc*, %struct.uwb_dev*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_drp_process_not_involved(%struct.uwb_rc*, %struct.uwb_rc_evt_drp*, %struct.uwb_ie_drp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
