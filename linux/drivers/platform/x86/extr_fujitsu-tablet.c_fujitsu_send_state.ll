; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_fujitsu_send_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_fujitsu_send_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@fujitsu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@INVERT_DOCK_STATE_BIT = common dso_local global i32 0, align 4
@FORCE_TABLET_MODE_IF_UNDOCK = common dso_local global i32 0, align 4
@INVERT_TABLET_MODE_BIT = common dso_local global i32 0, align 4
@SW_DOCK = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fujitsu_send_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fujitsu_send_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @fujitsu_read_register(i32 221)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, 2
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fujitsu, i32 0, i32 1, i32 0), align 4
  %8 = load i32, i32* @INVERT_DOCK_STATE_BIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %0
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fujitsu, i32 0, i32 1, i32 0), align 4
  %18 = load i32, i32* @FORCE_TABLET_MODE_IF_UNDOCK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %38

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %1, align 4
  %27 = and i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fujitsu, i32 0, i32 1, i32 0), align 4
  %29 = load i32, i32* @INVERT_TABLET_MODE_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fujitsu, i32 0, i32 0), align 4
  %40 = load i32, i32* @SW_DOCK, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @input_report_switch(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fujitsu, i32 0, i32 0), align 4
  %44 = load i32, i32* @SW_TABLET_MODE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @input_report_switch(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fujitsu, i32 0, i32 0), align 4
  %48 = call i32 @input_sync(i32 %47)
  ret void
}

declare dso_local i32 @fujitsu_read_register(i32) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
