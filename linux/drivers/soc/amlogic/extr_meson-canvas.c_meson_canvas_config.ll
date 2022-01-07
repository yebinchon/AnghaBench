; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_canvas = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Endianness is not supported on this SoC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Trying to setup non allocated canvas %u\0A\00", align 1
@DMC_CAV_LUT_DATAL = common dso_local global i32 0, align 4
@CANVAS_WIDTH_LBIT = common dso_local global i32 0, align 4
@DMC_CAV_LUT_DATAH = common dso_local global i32 0, align 4
@CANVAS_WIDTH_LWID = common dso_local global i32 0, align 4
@CANVAS_WIDTH_HBIT = common dso_local global i32 0, align 4
@CANVAS_HEIGHT_BIT = common dso_local global i32 0, align 4
@CANVAS_WRAP_BIT = common dso_local global i32 0, align 4
@CANVAS_BLKMODE_BIT = common dso_local global i32 0, align 4
@CANVAS_ENDIAN_BIT = common dso_local global i32 0, align 4
@DMC_CAV_LUT_ADDR = common dso_local global i32 0, align 4
@CANVAS_LUT_WR_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_canvas_config(%struct.meson_canvas* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.meson_canvas*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.meson_canvas* %0, %struct.meson_canvas** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %17, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %8
  %22 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %23 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %28 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %111

33:                                               ; preds = %21, %8
  %34 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %35 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %34, i32 0, i32 0
  %36 = load i64, i64* %18, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %39 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %33
  %46 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %47 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %52 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %51, i32 0, i32 0
  %53 = load i64, i64* %18, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %111

57:                                               ; preds = %33
  %58 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %59 = load i32, i32* @DMC_CAV_LUT_DATAL, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 7
  %62 = ashr i32 %61, 3
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 7
  %65 = ashr i32 %64, 3
  %66 = load i32, i32* @CANVAS_WIDTH_LBIT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %62, %67
  %69 = sext i32 %68 to i64
  %70 = call i32 @canvas_write(%struct.meson_canvas* %58, i32 %59, i64 %69)
  %71 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %72 = load i32, i32* @DMC_CAV_LUT_DATAH, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 7
  %75 = ashr i32 %74, 3
  %76 = load i32, i32* @CANVAS_WIDTH_LWID, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* @CANVAS_WIDTH_HBIT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @CANVAS_HEIGHT_BIT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @CANVAS_WRAP_BIT, align 4
  %86 = shl i32 %84, %85
  %87 = or i32 %83, %86
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @CANVAS_BLKMODE_BIT, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %87, %90
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @CANVAS_ENDIAN_BIT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = zext i32 %95 to i64
  %97 = call i32 @canvas_write(%struct.meson_canvas* %71, i32 %72, i64 %96)
  %98 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %99 = load i32, i32* @DMC_CAV_LUT_ADDR, align 4
  %100 = load i64, i64* @CANVAS_LUT_WR_EN, align 8
  %101 = load i64, i64* %11, align 8
  %102 = or i64 %100, %101
  %103 = call i32 @canvas_write(%struct.meson_canvas* %98, i32 %99, i64 %102)
  %104 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %105 = load i32, i32* @DMC_CAV_LUT_DATAH, align 4
  %106 = call i32 @canvas_read(%struct.meson_canvas* %104, i32 %105)
  %107 = load %struct.meson_canvas*, %struct.meson_canvas** %10, align 8
  %108 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %107, i32 0, i32 0
  %109 = load i64, i64* %18, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %57, %45, %26
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @canvas_write(%struct.meson_canvas*, i32, i64) #1

declare dso_local i32 @canvas_read(%struct.meson_canvas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
