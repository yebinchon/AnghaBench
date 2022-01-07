; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_active_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_active_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_hwstate = type { i32, i32 }

@DISPPLANE_PLANE_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_SEL_PIPE_SHIFT = common dso_local global i32 0, align 4
@PIPE_MASK = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_active_pipe(%struct.intelfb_hwstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intelfb_hwstate*, align 8
  %4 = alloca i32, align 4
  store %struct.intelfb_hwstate* %0, %struct.intelfb_hwstate** %3, align 8
  store i32 -1, i32* %4, align 4
  %5 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %3, align 8
  %6 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DISPPLANE_PLANE_ENABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %3, align 8
  %13 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @PIPE_MASK, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PIPE_A, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load i32, i32* @PIPE_A, align 4
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %3, align 8
  %31 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DISPPLANE_PLANE_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %3, align 8
  %38 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @PIPE_MASK, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PIPE_A, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @PIPE_A, align 4
  store i32 %52, i32* %2, align 4
  br label %68

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, -1
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, -1
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @PIPE_A, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %51, %26
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
