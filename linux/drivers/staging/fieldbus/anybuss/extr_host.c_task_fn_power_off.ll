; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_task_fn_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32, %struct.anybuss_client* }
%struct.anybuss_client = type { i32 (%struct.anybuss_client*, i32)* }
%struct.ab_task = type { i32 }

@IND_AB_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, %struct.ab_task*)* @task_fn_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_fn_power_off(%struct.anybuss_host* %0, %struct.ab_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca %struct.anybuss_client*, align 8
  store %struct.anybuss_host* %0, %struct.anybuss_host** %4, align 8
  store %struct.ab_task* %1, %struct.ab_task** %5, align 8
  %7 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %8 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %7, i32 0, i32 3
  %9 = load %struct.anybuss_client*, %struct.anybuss_client** %8, align 8
  store %struct.anybuss_client* %9, %struct.anybuss_client** %6, align 8
  %10 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %11 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %17 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @disable_irq(i32 %18)
  %20 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %21 = call i32 @reset_assert(%struct.anybuss_host* %20)
  %22 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %23 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %22, i32 0, i32 1
  %24 = load i32, i32* @IND_AB_UPDATED, align 4
  %25 = call i32 @atomic_set(i32* %23, i32 %24)
  %26 = load %struct.anybuss_client*, %struct.anybuss_client** %6, align 8
  %27 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %26, i32 0, i32 0
  %28 = load i32 (%struct.anybuss_client*, i32)*, i32 (%struct.anybuss_client*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.anybuss_client*, i32)* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %15
  %31 = load %struct.anybuss_client*, %struct.anybuss_client** %6, align 8
  %32 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %31, i32 0, i32 0
  %33 = load i32 (%struct.anybuss_client*, i32)*, i32 (%struct.anybuss_client*, i32)** %32, align 8
  %34 = load %struct.anybuss_client*, %struct.anybuss_client** %6, align 8
  %35 = call i32 %33(%struct.anybuss_client* %34, i32 0)
  br label %36

36:                                               ; preds = %30, %15
  %37 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %38 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @reset_assert(%struct.anybuss_host*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
