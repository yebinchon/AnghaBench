; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32 }
%struct.ab_task = type { i32, %struct.area_priv }
%struct.area_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@REG_IND_AP = common dso_local global i32 0, align 4
@IND_AP_ABITS = common dso_local global i32 0, align 4
@IND_AP_ACTION = common dso_local global i32 0, align 4
@IND_AP_LOCK = common dso_local global i32 0, align 4
@task_fn_area_2 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_area(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca %struct.area_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %9 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %10 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %9, i32 0, i32 1
  store %struct.area_priv* %10, %struct.area_priv** %6, align 8
  %11 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %12 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %20 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REG_IND_AP, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %7)
  %24 = load i32, i32* @IND_AP_ABITS, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.area_priv*, %struct.area_priv** %6, align 8
  %29 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IND_AP_ACTION, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IND_AP_LOCK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %38 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @write_ind_ap(i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %18
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %18
  %47 = load i32, i32* @task_fn_area_2, align 4
  %48 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %49 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EINPROGRESS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %44, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @write_ind_ap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
