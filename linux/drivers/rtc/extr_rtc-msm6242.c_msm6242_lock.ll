; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-msm6242.c_msm6242_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-msm6242.c_msm6242_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm6242_priv = type { i32 }

@MSM6242_CD_HOLD = common dso_local global i32 0, align 4
@MSM6242_CD = common dso_local global i32 0, align 4
@MSM6242_CD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timed out waiting for RTC (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm6242_priv*)* @msm6242_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm6242_lock(%struct.msm6242_priv* %0) #0 {
  %2 = alloca %struct.msm6242_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.msm6242_priv* %0, %struct.msm6242_priv** %2, align 8
  store i32 5, i32* %3, align 4
  %4 = load %struct.msm6242_priv*, %struct.msm6242_priv** %2, align 8
  %5 = load i32, i32* @MSM6242_CD_HOLD, align 4
  %6 = load i32, i32* @MSM6242_CD, align 4
  %7 = call i32 @msm6242_set(%struct.msm6242_priv* %4, i32 %5, i32 %6)
  br label %8

8:                                                ; preds = %20, %1
  %9 = load %struct.msm6242_priv*, %struct.msm6242_priv** %2, align 8
  %10 = load i32, i32* @MSM6242_CD, align 4
  %11 = call i32 @msm6242_read(%struct.msm6242_priv* %9, i32 %10)
  %12 = load i32, i32* @MSM6242_CD_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i1 [ false, %8 ], [ %17, %15 ]
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = load %struct.msm6242_priv*, %struct.msm6242_priv** %2, align 8
  %22 = load i32, i32* @MSM6242_CD_HOLD, align 4
  %23 = load i32, i32* @MSM6242_CD, align 4
  %24 = call i32 @msm6242_clear(%struct.msm6242_priv* %21, i32 %22, i32 %23)
  %25 = call i32 @udelay(i32 70)
  %26 = load %struct.msm6242_priv*, %struct.msm6242_priv** %2, align 8
  %27 = load i32, i32* @MSM6242_CD_HOLD, align 4
  %28 = load i32, i32* @MSM6242_CD, align 4
  %29 = call i32 @msm6242_set(%struct.msm6242_priv* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %18
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.msm6242_priv*, %struct.msm6242_priv** %2, align 8
  %37 = load i32, i32* @MSM6242_CD, align 4
  %38 = call i32 @msm6242_read(%struct.msm6242_priv* %36, i32 %37)
  %39 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @msm6242_set(%struct.msm6242_priv*, i32, i32) #1

declare dso_local i32 @msm6242_read(%struct.msm6242_priv*, i32) #1

declare dso_local i32 @msm6242_clear(%struct.msm6242_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
