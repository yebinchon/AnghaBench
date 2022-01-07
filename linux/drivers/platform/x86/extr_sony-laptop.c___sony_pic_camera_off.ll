; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___sony_pic_camera_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___sony_pic_camera_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@camera = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"camera control not enabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SONYPI_CAMERA_PICTURE = common dso_local global i32 0, align 4
@SONYPI_CAMERA_MUTE_MASK = common dso_local global i32 0, align 4
@ITERATIONS_SHORT = common dso_local global i32 0, align 4
@spic_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__sony_pic_camera_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sony_pic_camera_off() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @camera, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = load i32, i32* @SONYPI_CAMERA_PICTURE, align 4
  %10 = load i32, i32* @SONYPI_CAMERA_MUTE_MASK, align 4
  %11 = call i32 @sony_pic_call3(i32 144, i32 %9, i32 %10)
  %12 = load i32, i32* @ITERATIONS_SHORT, align 4
  %13 = call i32 @wait_on_command(i32 %11, i32 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @sony_pic_call2(i32 145, i32 0)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0), align 8
  br label %18

18:                                               ; preds = %16, %8
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @wait_on_command(i32, i32) #1

declare dso_local i32 @sony_pic_call3(i32, i32, i32) #1

declare dso_local i32 @sony_pic_call2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
