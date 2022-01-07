; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_arm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_rc_neh = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@UWB_RC_CMD_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rc_neh_arm(%struct.uwb_rc* %0, %struct.uwb_rc_neh* %1) #0 {
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_rc_neh*, align 8
  %5 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store %struct.uwb_rc_neh* %1, %struct.uwb_rc_neh** %4, align 8
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %4, align 8
  %11 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %4, align 8
  %16 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %15, i32 0, i32 0
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* @UWB_RC_CMD_TIMEOUT_MS, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @mod_timer(i32* %16, i64 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
