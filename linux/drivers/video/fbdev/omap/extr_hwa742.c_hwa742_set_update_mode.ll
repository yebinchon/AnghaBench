; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_hwa742_set_update_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_hwa742.c_hwa742_set_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@hwa742 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"HWA742: setting update mode to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@OMAPFB_EVENT_DISABLED = common dso_local global i32 0, align 4
@OMAPFB_EVENT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hwa742_set_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwa742_set_update_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 129
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 130
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 128
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %9, %6, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %55

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 2), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 130
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %26 ], [ %31, %27 ]
  %34 = call i32 @dev_info(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  switch i32 %35, label %43 [
    i32 129, label %36
    i32 130, label %40
    i32 128, label %42
  ]

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 2), align 8
  %38 = load i32, i32* @OMAPFB_EVENT_DISABLED, align 4
  %39 = call i32 @omapfb_notify_clients(%struct.TYPE_3__* %37, i32 %38)
  br label %43

40:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 1), align 4
  %41 = call i32 @del_timer_sync(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 3))
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %32, %42, %40, %36
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 0), align 8
  %45 = call i32 (...) @hwa742_sync()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 1), align 4
  %46 = load i32, i32* %3, align 4
  switch i32 %46, label %54 [
    i32 129, label %47
    i32 130, label %51
    i32 128, label %53
  ]

47:                                               ; preds = %43
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hwa742, i32 0, i32 2), align 8
  %49 = load i32, i32* @OMAPFB_EVENT_READY, align 4
  %50 = call i32 @omapfb_notify_clients(%struct.TYPE_3__* %48, i32 %49)
  br label %54

51:                                               ; preds = %43
  %52 = call i32 @hwa742_update_window_auto(i32 0)
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %43, %53, %51, %47
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %19, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @omapfb_notify_clients(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @hwa742_sync(...) #1

declare dso_local i32 @hwa742_update_window_auto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
