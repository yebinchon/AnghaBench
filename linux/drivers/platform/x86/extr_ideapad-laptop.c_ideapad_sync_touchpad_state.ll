; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_sync_touchpad_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_sync_touchpad_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VPCCMD_R_TOUCHPAD = common dso_local global i32 0, align 4
@I8042_CMD_AUX_ENABLE = common dso_local global i32 0, align 4
@I8042_CMD_AUX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ideapad_private*)* @ideapad_sync_touchpad_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ideapad_sync_touchpad_state(%struct.ideapad_private* %0) #0 {
  %2 = alloca %struct.ideapad_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store %struct.ideapad_private* %0, %struct.ideapad_private** %2, align 8
  %5 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %6 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VPCCMD_R_TOUCHPAD, align 4
  %11 = call i32 @read_ec_data(i32 %9, i32 %10, i64* %3)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @I8042_CMD_AUX_ENABLE, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @I8042_CMD_AUX_DISABLE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @i8042_command(i8* %4, i32 %21)
  %23 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 67, i32 66
  %28 = call i32 @ideapad_input_report(%struct.ideapad_private* %23, i32 %27)
  br label %29

29:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @read_ec_data(i32, i32, i64*) #1

declare dso_local i32 @i8042_command(i8*, i32) #1

declare dso_local i32 @ideapad_input_report(%struct.ideapad_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
