; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_uwb_rc_rm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_uwb_rc_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, %struct.TYPE_2__, i32*, i32*, i32 (%struct.uwb_rc*)*, i64 }
%struct.TYPE_2__ = type { i32 }

@uwb_dev_offair_helper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rc_rm(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %3 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %4 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  %5 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %6 = call i32 @uwb_dbg_del_rc(%struct.uwb_rc* %5)
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %8 = call i32 @uwb_rsv_remove_all(%struct.uwb_rc* %7)
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %10 = call i32 @uwb_radio_shutdown(%struct.uwb_rc* %9)
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 4
  %13 = load i32 (%struct.uwb_rc*)*, i32 (%struct.uwb_rc*)** %12, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %15 = call i32 %13(%struct.uwb_rc* %14)
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %17 = call i32 @uwbd_stop(%struct.uwb_rc* %16)
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %19 = call i32 @uwb_rc_neh_destroy(%struct.uwb_rc* %18)
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %21 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %20, i32 0, i32 0
  %22 = call i32 @uwb_dev_lock(i32* %21)
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %26 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %28 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %27, i32 0, i32 0
  %29 = call i32 @uwb_dev_unlock(i32* %28)
  %30 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %31 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %35 = load i32, i32* @uwb_dev_offair_helper, align 4
  %36 = call i32 @uwb_dev_for_each(%struct.uwb_rc* %34, i32 %35, i32* null)
  %37 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %38 = call i32 @__uwb_rc_sys_rm(%struct.uwb_rc* %37)
  %39 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %40 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %44 = call i32 @uwb_rsv_cleanup(%struct.uwb_rc* %43)
  %45 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %46 = call i32 @uwb_beca_release(%struct.uwb_rc* %45)
  %47 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %48 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %47, i32 0, i32 0
  %49 = call i32 @uwb_dev_rm(i32* %48)
  ret void
}

declare dso_local i32 @uwb_dbg_del_rc(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rsv_remove_all(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_radio_shutdown(%struct.uwb_rc*) #1

declare dso_local i32 @uwbd_stop(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rc_neh_destroy(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_dev_lock(i32*) #1

declare dso_local i32 @uwb_dev_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uwb_dev_for_each(%struct.uwb_rc*, i32, i32*) #1

declare dso_local i32 @__uwb_rc_sys_rm(%struct.uwb_rc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @uwb_rsv_cleanup(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_beca_release(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_dev_rm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
