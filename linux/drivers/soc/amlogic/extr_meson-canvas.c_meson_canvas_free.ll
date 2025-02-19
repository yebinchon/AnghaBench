; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_canvas = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Trying to free unused canvas %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_canvas_free(%struct.meson_canvas* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.meson_canvas*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.meson_canvas* %0, %struct.meson_canvas** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.meson_canvas*, %struct.meson_canvas** %4, align 8
  %8 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.meson_canvas*, %struct.meson_canvas** %4, align 8
  %12 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.meson_canvas*, %struct.meson_canvas** %4, align 8
  %20 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.meson_canvas*, %struct.meson_canvas** %4, align 8
  %25 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.meson_canvas*, %struct.meson_canvas** %4, align 8
  %32 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.meson_canvas*, %struct.meson_canvas** %4, align 8
  %37 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
