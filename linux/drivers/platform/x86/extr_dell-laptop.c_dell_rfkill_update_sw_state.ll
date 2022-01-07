; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_dell_rfkill_update_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_dell_rfkill_update_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.calling_interface_buffer = type { i32 }

@CLASS_INFO = common dso_local global i32 0, align 4
@SELECT_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*, i32, i32)* @dell_rfkill_update_sw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dell_rfkill_update_sw_state(%struct.rfkill* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rfkill*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.calling_interface_buffer, align 4
  %8 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @BIT(i32 0)
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %15 = call i32 @rfkill_blocked(%struct.rfkill* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 8
  %18 = or i32 1, %17
  %19 = load i32, i32* %8, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %18, %20
  %22 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %7, i32 %21, i32 0, i32 0, i32 0)
  %23 = load i32, i32* @CLASS_INFO, align 4
  %24 = load i32, i32* @SELECT_RFKILL, align 4
  %25 = call i32 @dell_send_request(%struct.calling_interface_buffer* %7, i32 %23, i32 %24)
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 16
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @rfkill_set_sw_state(%struct.rfkill* %27, i32 %36)
  br label %38

38:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rfkill_blocked(%struct.rfkill*) #1

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

declare dso_local i32 @rfkill_set_sw_state(%struct.rfkill*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
