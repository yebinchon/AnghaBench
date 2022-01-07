; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_radio.c_uwb_radio_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_radio.c_uwb_radio_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_pal = type { i64, %struct.uwb_rc* }
%struct.uwb_rc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_radio_stop(%struct.uwb_pal* %0) #0 {
  %2 = alloca %struct.uwb_pal*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  store %struct.uwb_pal* %0, %struct.uwb_pal** %2, align 8
  %4 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %5 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %4, i32 0, i32 1
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  store %struct.uwb_rc* %6, %struct.uwb_rc** %3, align 8
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %8 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %12 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %17 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %22 = call i32 @uwb_radio_select_channel(%struct.uwb_rc* %21)
  %23 = call i32 @uwb_radio_change_channel(%struct.uwb_rc* %20, i32 %22)
  %24 = load %struct.uwb_pal*, %struct.uwb_pal** %2, align 8
  %25 = getelementptr inbounds %struct.uwb_pal, %struct.uwb_pal* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %28 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uwb_radio_change_channel(%struct.uwb_rc*, i32) #1

declare dso_local i32 @uwb_radio_select_channel(%struct.uwb_rc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
