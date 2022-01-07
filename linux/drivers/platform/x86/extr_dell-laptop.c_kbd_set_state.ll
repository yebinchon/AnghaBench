; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_state = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.calling_interface_buffer = type { i32 }

@CLASS_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@SELECT_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbd_state*)* @kbd_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_set_state(%struct.kbd_state* %0) #0 {
  %2 = alloca %struct.kbd_state*, align 8
  %3 = alloca %struct.calling_interface_buffer, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kbd_state* %0, %struct.kbd_state** %2, align 8
  %7 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %8 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = and i32 %10, 65535
  store i32 %11, i32* %5, align 4
  %12 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %13 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  %16 = shl i32 %15, 16
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %20 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 63
  %23 = shl i32 %22, 24
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %27 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 3
  %30 = shl i32 %29, 30
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %34 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %6, align 4
  %37 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %38 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %45 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 63
  %48 = shl i32 %47, 24
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.kbd_state*, %struct.kbd_state** %2, align 8
  %52 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 3
  %55 = shl i32 %54, 30
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %3, i32 2, i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* @CLASS_KBD_BACKLIGHT, align 4
  %62 = load i32, i32* @SELECT_KBD_BACKLIGHT, align 4
  %63 = call i32 @dell_send_request(%struct.calling_interface_buffer* %3, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
