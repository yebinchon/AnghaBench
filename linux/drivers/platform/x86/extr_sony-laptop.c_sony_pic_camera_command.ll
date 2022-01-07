; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_camera_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_camera_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@camera = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@spic_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SONYPI_CAMERA_BRIGHTNESS = common dso_local global i32 0, align 4
@ITERATIONS_SHORT = common dso_local global i32 0, align 4
@SONYPI_CAMERA_CONTRAST = common dso_local global i32 0, align 4
@SONYPI_CAMERA_HUE = common dso_local global i32 0, align 4
@SONYPI_CAMERA_COLOR = common dso_local global i32 0, align 4
@SONYPI_CAMERA_SHARPNESS = common dso_local global i32 0, align 4
@SONYPI_CAMERA_PICTURE = common dso_local global i32 0, align 4
@SONYPI_CAMERA_AGC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sony_pic_camera_command invalid: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sony_pic_camera_command(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @camera, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %69

11:                                               ; preds = %2
  %12 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0))
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %64 [
    i32 135, label %14
    i32 133, label %22
    i32 131, label %28
    i32 130, label %34
    i32 132, label %40
    i32 128, label %46
    i32 129, label %52
    i32 134, label %58
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @__sony_pic_camera_on()
  br label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @__sony_pic_camera_off()
  br label %21

21:                                               ; preds = %19, %17
  br label %67

22:                                               ; preds = %11
  %23 = load i32, i32* @SONYPI_CAMERA_BRIGHTNESS, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sony_pic_call3(i32 144, i32 %23, i32 %24)
  %26 = load i32, i32* @ITERATIONS_SHORT, align 4
  %27 = call i32 @wait_on_command(i32 %25, i32 %26)
  br label %67

28:                                               ; preds = %11
  %29 = load i32, i32* @SONYPI_CAMERA_CONTRAST, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @sony_pic_call3(i32 144, i32 %29, i32 %30)
  %32 = load i32, i32* @ITERATIONS_SHORT, align 4
  %33 = call i32 @wait_on_command(i32 %31, i32 %32)
  br label %67

34:                                               ; preds = %11
  %35 = load i32, i32* @SONYPI_CAMERA_HUE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @sony_pic_call3(i32 144, i32 %35, i32 %36)
  %38 = load i32, i32* @ITERATIONS_SHORT, align 4
  %39 = call i32 @wait_on_command(i32 %37, i32 %38)
  br label %67

40:                                               ; preds = %11
  %41 = load i32, i32* @SONYPI_CAMERA_COLOR, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @sony_pic_call3(i32 144, i32 %41, i32 %42)
  %44 = load i32, i32* @ITERATIONS_SHORT, align 4
  %45 = call i32 @wait_on_command(i32 %43, i32 %44)
  br label %67

46:                                               ; preds = %11
  %47 = load i32, i32* @SONYPI_CAMERA_SHARPNESS, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @sony_pic_call3(i32 144, i32 %47, i32 %48)
  %50 = load i32, i32* @ITERATIONS_SHORT, align 4
  %51 = call i32 @wait_on_command(i32 %49, i32 %50)
  br label %67

52:                                               ; preds = %11
  %53 = load i32, i32* @SONYPI_CAMERA_PICTURE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @sony_pic_call3(i32 144, i32 %53, i32 %54)
  %56 = load i32, i32* @ITERATIONS_SHORT, align 4
  %57 = call i32 @wait_on_command(i32 %55, i32 %56)
  br label %67

58:                                               ; preds = %11
  %59 = load i32, i32* @SONYPI_CAMERA_AGC, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @sony_pic_call3(i32 144, i32 %59, i32 %60)
  %62 = load i32, i32* @ITERATIONS_SHORT, align 4
  %63 = call i32 @wait_on_command(i32 %61, i32 %62)
  br label %67

64:                                               ; preds = %11
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %58, %52, %46, %40, %34, %28, %22, %21
  %68 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %8
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sony_pic_camera_on(...) #1

declare dso_local i32 @__sony_pic_camera_off(...) #1

declare dso_local i32 @wait_on_command(i32, i32) #1

declare dso_local i32 @sony_pic_call3(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
