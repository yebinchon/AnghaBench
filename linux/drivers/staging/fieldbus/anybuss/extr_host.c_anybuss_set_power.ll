; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_client = type { %struct.anybuss_host* }
%struct.anybuss_host = type { i32, i32, i32, i32 }
%struct.ab_task = type { i32 }

@task_fn_power_on = common dso_local global i32 0, align 4
@task_fn_power_off = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anybuss_set_power(%struct.anybuss_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.anybuss_host*, align 8
  %7 = alloca %struct.ab_task*, align 8
  %8 = alloca i32, align 4
  store %struct.anybuss_client* %0, %struct.anybuss_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.anybuss_client*, %struct.anybuss_client** %4, align 8
  %10 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %9, i32 0, i32 0
  %11 = load %struct.anybuss_host*, %struct.anybuss_host** %10, align 8
  store %struct.anybuss_host* %11, %struct.anybuss_host** %6, align 8
  %12 = load %struct.anybuss_host*, %struct.anybuss_host** %6, align 8
  %13 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @task_fn_power_on, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @task_fn_power_off, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call %struct.ab_task* @ab_task_create_get(i32 %14, i32 %22)
  store %struct.ab_task* %23, %struct.ab_task** %7, align 8
  %24 = load %struct.ab_task*, %struct.ab_task** %7, align 8
  %25 = icmp ne %struct.ab_task* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %21
  %30 = load %struct.ab_task*, %struct.ab_task** %7, align 8
  %31 = load %struct.anybuss_host*, %struct.anybuss_host** %6, align 8
  %32 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.anybuss_host*, %struct.anybuss_host** %6, align 8
  %35 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %34, i32 0, i32 1
  %36 = load %struct.anybuss_host*, %struct.anybuss_host** %6, align 8
  %37 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %36, i32 0, i32 0
  %38 = call i32 @ab_task_enqueue_wait(%struct.ab_task* %30, i32 %33, i32* %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ab_task*, %struct.ab_task** %7, align 8
  %40 = call i32 @ab_task_put(%struct.ab_task* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ab_task* @ab_task_create_get(i32, i32) #1

declare dso_local i32 @ab_task_enqueue_wait(%struct.ab_task*, i32, i32*, i32*) #1

declare dso_local i32 @ab_task_put(%struct.ab_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
