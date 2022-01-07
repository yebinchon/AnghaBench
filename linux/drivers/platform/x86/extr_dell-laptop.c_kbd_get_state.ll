; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.calling_interface_buffer = type { i32* }

@CLASS_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@SELECT_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbd_state*)* @kbd_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_get_state(%struct.kbd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kbd_state*, align 8
  %4 = alloca %struct.calling_interface_buffer, align 8
  %5 = alloca i32, align 4
  store %struct.kbd_state* %0, %struct.kbd_state** %3, align 8
  %6 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %4, i32 1, i32 0, i32 0, i32 0)
  %7 = load i32, i32* @CLASS_KBD_BACKLIGHT, align 4
  %8 = load i32, i32* @SELECT_KBD_BACKLIGHT, align 4
  %9 = call i32 @dell_send_request(%struct.calling_interface_buffer* %4, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %97

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 65535
  %20 = call i32 @ffs(i32 %19)
  %21 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %22 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %24 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %29 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %14
  %33 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %40 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 24
  %46 = and i32 %45, 63
  %47 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %48 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 30
  %54 = and i32 %53, 3
  %55 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %56 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 255
  %62 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %63 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %71 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %79 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 24
  %85 = and i32 %84, 63
  %86 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %87 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 30
  %93 = and i32 %92, 3
  %94 = load %struct.kbd_state*, %struct.kbd_state** %3, align 8
  %95 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %32, %12
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
