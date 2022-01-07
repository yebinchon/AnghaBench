; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32, i64 }
%struct.ab_task = type { i32 }

@REG_IND_AB = common dso_local global i32 0, align 4
@task_fn_power_on_2 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_power_on(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %7 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %8 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %14 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @REG_IND_AB, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %6)
  %18 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %19 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %18, i32 0, i32 1
  %20 = call i32 @reinit_completion(i32* %19)
  %21 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %22 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @enable_irq(i32 %23)
  %25 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %26 = call i32 @reset_deassert(%struct.anybuss_host* %25)
  %27 = load i32, i32* @task_fn_power_on_2, align 4
  %28 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  %29 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @EINPROGRESS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %12, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @reset_deassert(%struct.anybuss_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
