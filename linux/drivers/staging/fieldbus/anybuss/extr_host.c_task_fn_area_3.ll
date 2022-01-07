; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_area_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_area_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32 }
%struct.ab_task = type { i64, %struct.area_priv }
%struct.area_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_area_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_area_3(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca %struct.area_priv*, align 8
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %7 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %8 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %7, i32 0, i32 1
  store %struct.area_priv* %8, %struct.area_priv** %6, align 8
  %9 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %10 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %18 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %17, i32 0, i32 0
  %19 = call i32 @atomic_read(i32* %18)
  %20 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %21 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %28 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TIMEOUT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @time_after(i32 %26, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @EINPROGRESS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37, %34, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
