; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwb-debug.c_uwb_dbg_rsv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwb-debug.c_uwb_dbg_rsv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i64, i32, %struct.uwb_dbg* }
%struct.uwb_dbg = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@UWB_RSV_STATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv*)* @uwb_dbg_rsv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_dbg_rsv_cb(%struct.uwb_rsv* %0) #0 {
  %2 = alloca %struct.uwb_rsv*, align 8
  %3 = alloca %struct.uwb_dbg*, align 8
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %2, align 8
  %4 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %5 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %4, i32 0, i32 2
  %6 = load %struct.uwb_dbg*, %struct.uwb_dbg** %5, align 8
  store %struct.uwb_dbg* %6, %struct.uwb_dbg** %3, align 8
  %7 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %8 = call i32 @uwb_rsv_dump(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.uwb_rsv* %7)
  %9 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %10 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UWB_RSV_STATE_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.uwb_dbg*, %struct.uwb_dbg** %3, align 8
  %16 = getelementptr inbounds %struct.uwb_dbg, %struct.uwb_dbg* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %19 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.uwb_dbg*, %struct.uwb_dbg** %3, align 8
  %22 = getelementptr inbounds %struct.uwb_dbg, %struct.uwb_dbg* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %25 = call i32 @uwb_rsv_destroy(%struct.uwb_rsv* %24)
  br label %26

26:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @uwb_rsv_dump(i8*, %struct.uwb_rsv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @uwb_rsv_destroy(%struct.uwb_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
