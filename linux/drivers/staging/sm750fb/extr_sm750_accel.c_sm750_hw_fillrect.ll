; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynx_accel = type { i64 (...)* }

@.str = private unnamed_addr constant [23 x i8] c"De engine always busy\0A\00", align 1
@DE_WINDOW_DESTINATION_BASE = common dso_local global i32 0, align 4
@DE_PITCH = common dso_local global i32 0, align 4
@DE_PITCH_DESTINATION_SHIFT = common dso_local global i32 0, align 4
@DE_PITCH_DESTINATION_MASK = common dso_local global i32 0, align 4
@DE_PITCH_SOURCE_MASK = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH_DST_SHIFT = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH_DST_MASK = common dso_local global i32 0, align 4
@DE_WINDOW_WIDTH_SRC_MASK = common dso_local global i32 0, align 4
@DE_FOREGROUND = common dso_local global i32 0, align 4
@DE_DESTINATION = common dso_local global i32 0, align 4
@DE_DESTINATION_X_SHIFT = common dso_local global i32 0, align 4
@DE_DESTINATION_X_MASK = common dso_local global i32 0, align 4
@DE_DESTINATION_Y_MASK = common dso_local global i32 0, align 4
@DE_DIMENSION = common dso_local global i32 0, align 4
@DE_DIMENSION_X_SHIFT = common dso_local global i32 0, align 4
@DE_DIMENSION_X_MASK = common dso_local global i32 0, align 4
@DE_DIMENSION_Y_ET_MASK = common dso_local global i32 0, align 4
@DE_CONTROL_STATUS = common dso_local global i32 0, align 4
@DE_CONTROL_LAST_PIXEL = common dso_local global i32 0, align 4
@DE_CONTROL_COMMAND_RECTANGLE_FILL = common dso_local global i32 0, align 4
@DE_CONTROL_ROP_SELECT = common dso_local global i32 0, align 4
@DE_CONTROL_ROP_MASK = common dso_local global i32 0, align 4
@DE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm750_hw_fillrect(%struct.lynx_accel* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.lynx_accel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.lynx_accel* %0, %struct.lynx_accel** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %23 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %24 = getelementptr inbounds %struct.lynx_accel, %struct.lynx_accel* %23, i32 0, i32 0
  %25 = load i64 (...)*, i64 (...)** %24, align 8
  %26 = call i64 (...) %25()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %10
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %110

30:                                               ; preds = %10
  %31 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %32 = load i32, i32* @DE_WINDOW_DESTINATION_BASE, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @write_dpr(%struct.lynx_accel* %31, i32 %32, i32 %33)
  %35 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %36 = load i32, i32* @DE_PITCH, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = sdiv i32 %37, %38
  %40 = load i32, i32* @DE_PITCH_DESTINATION_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @DE_PITCH_DESTINATION_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i32, i32* @DE_PITCH_SOURCE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %43, %48
  %50 = call i32 @write_dpr(%struct.lynx_accel* %35, i32 %36, i32 %49)
  %51 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %52 = load i32, i32* @DE_WINDOW_WIDTH, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* @DE_WINDOW_WIDTH_DST_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @DE_WINDOW_WIDTH_DST_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32, i32* @DE_WINDOW_WIDTH_SRC_MASK, align 4
  %64 = and i32 %62, %63
  %65 = or i32 %59, %64
  %66 = call i32 @write_dpr(%struct.lynx_accel* %51, i32 %52, i32 %65)
  %67 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %68 = load i32, i32* @DE_FOREGROUND, align 4
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @write_dpr(%struct.lynx_accel* %67, i32 %68, i32 %69)
  %71 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %72 = load i32, i32* @DE_DESTINATION, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @DE_DESTINATION_X_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* @DE_DESTINATION_X_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @DE_DESTINATION_Y_MASK, align 4
  %80 = and i32 %78, %79
  %81 = or i32 %77, %80
  %82 = call i32 @write_dpr(%struct.lynx_accel* %71, i32 %72, i32 %81)
  %83 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %84 = load i32, i32* @DE_DIMENSION, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @DE_DIMENSION_X_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* @DE_DIMENSION_X_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* @DE_DIMENSION_Y_ET_MASK, align 4
  %92 = and i32 %90, %91
  %93 = or i32 %89, %92
  %94 = call i32 @write_dpr(%struct.lynx_accel* %83, i32 %84, i32 %93)
  %95 = load i32, i32* @DE_CONTROL_STATUS, align 4
  %96 = load i32, i32* @DE_CONTROL_LAST_PIXEL, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @DE_CONTROL_COMMAND_RECTANGLE_FILL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @DE_CONTROL_ROP_SELECT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* @DE_CONTROL_ROP_MASK, align 4
  %104 = and i32 %102, %103
  %105 = or i32 %101, %104
  store i32 %105, i32* %22, align 4
  %106 = load %struct.lynx_accel*, %struct.lynx_accel** %12, align 8
  %107 = load i32, i32* @DE_CONTROL, align 4
  %108 = load i32, i32* %22, align 4
  %109 = call i32 @write_dpr(%struct.lynx_accel* %106, i32 %107, i32 %108)
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %30, %28
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @write_dpr(%struct.lynx_accel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
