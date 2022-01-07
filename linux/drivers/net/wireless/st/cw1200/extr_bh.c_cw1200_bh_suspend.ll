; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_bh_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"[BH] suspend.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"BH error -- can't suspend\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CW1200_BH_SUSPEND = common dso_local global i32 0, align 4
@CW1200_BH_SUSPENDED = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_bh_suspend(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  %4 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %6 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %11 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wiphy_warn(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 0
  %21 = load i32, i32* @CW1200_BH_SUSPEND, align 4
  %22 = call i32 @atomic_set(i32* %20, i32 %21)
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 3
  %25 = call i32 @wake_up(i32* %24)
  %26 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %27 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %18
  %34 = load i64, i64* @CW1200_BH_SUSPENDED, align 8
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 0
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp eq i64 %34, %37
  br label %39

39:                                               ; preds = %33, %18
  %40 = phi i1 [ true, %18 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 1, %42
  %44 = call i64 @wait_event_timeout(i32 %28, i32 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 0, %46 ], [ %49, %47 ]
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wiphy_warn(i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
