; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___sony_pic_camera_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___sony_pic_camera_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@camera = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"camera control not enabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@spic_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to power on camera\0A\00", align 1
@SONYPI_CAMERA_CONTROL = common dso_local global i32 0, align 4
@ITERATIONS_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__sony_pic_camera_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sony_pic_camera_on() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @camera, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %67

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %67

15:                                               ; preds = %11
  store i32 5, i32* %3, align 4
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 100
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i64 @sony_pic_call2(i32 145, i32 1)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = call i32 @msleep(i32 10)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %20

33:                                               ; preds = %26
  %34 = call i32 @sony_pic_call1(i32 147)
  store i32 400, i32* %2, align 4
  br label %35

35:                                               ; preds = %44, %33
  %36 = load i32, i32* %2, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = call i64 (...) @__sony_pic_camera_ready()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %47

42:                                               ; preds = %38
  %43 = call i32 @msleep(i32 10)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %2, align 4
  br label %35

47:                                               ; preds = %41, %35
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %3, align 4
  br label %16

55:                                               ; preds = %50, %16
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %1, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @SONYPI_CAMERA_CONTROL, align 4
  %64 = call i32 @sony_pic_call3(i32 144, i32 %63, i32 90)
  %65 = load i32, i32* @ITERATIONS_SHORT, align 4
  %66 = call i32 @wait_on_command(i32 %64, i32 %65)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0), align 4
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %62, %58, %14, %7
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @sony_pic_call2(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sony_pic_call1(i32) #1

declare dso_local i64 @__sony_pic_camera_ready(...) #1

declare dso_local i32 @wait_on_command(i32, i32) #1

declare dso_local i32 @sony_pic_call3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
