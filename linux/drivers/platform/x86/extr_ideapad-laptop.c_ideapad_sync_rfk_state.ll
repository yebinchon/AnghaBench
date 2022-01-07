; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_sync_rfk_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_sync_rfk_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { i64*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@VPCCMD_R_RF = common dso_local global i32 0, align 4
@IDEAPAD_RFKILL_DEV_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ideapad_private*)* @ideapad_sync_rfk_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ideapad_sync_rfk_state(%struct.ideapad_private* %0) #0 {
  %2 = alloca %struct.ideapad_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ideapad_private* %0, %struct.ideapad_private** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %6 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %11 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VPCCMD_R_RF, align 4
  %16 = call i64 @read_ec_data(i32 %14, i32 %15, i64* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %53

19:                                               ; preds = %9
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %19, %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IDEAPAD_RFKILL_DEV_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %32 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %41 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @rfkill_set_hw_state(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %39, %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %26

53:                                               ; preds = %18, %26
  ret void
}

declare dso_local i64 @read_ec_data(i32, i32, i64*) #1

declare dso_local i32 @rfkill_set_hw_state(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
