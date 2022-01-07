; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_create_area_reader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_create_area_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab_task = type { %struct.area_priv }
%struct.area_priv = type { i32, i64, i8*, i8* }
%struct.kmem_cache = type { i32 }

@task_fn_area = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ab_task* (%struct.kmem_cache*, i8*, i8*, i64)* @create_area_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ab_task* @create_area_reader(%struct.kmem_cache* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.ab_task*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ab_task*, align 8
  %11 = alloca %struct.area_priv*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %13 = load i32, i32* @task_fn_area, align 4
  %14 = call %struct.ab_task* @ab_task_create_get(%struct.kmem_cache* %12, i32 %13)
  store %struct.ab_task* %14, %struct.ab_task** %10, align 8
  %15 = load %struct.ab_task*, %struct.ab_task** %10, align 8
  %16 = icmp ne %struct.ab_task* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.ab_task* null, %struct.ab_task** %5, align 8
  br label %33

18:                                               ; preds = %4
  %19 = load %struct.ab_task*, %struct.ab_task** %10, align 8
  %20 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %19, i32 0, i32 0
  store %struct.area_priv* %20, %struct.area_priv** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.area_priv*, %struct.area_priv** %11, align 8
  %23 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.area_priv*, %struct.area_priv** %11, align 8
  %26 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.area_priv*, %struct.area_priv** %11, align 8
  %28 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.area_priv*, %struct.area_priv** %11, align 8
  %31 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ab_task*, %struct.ab_task** %10, align 8
  store %struct.ab_task* %32, %struct.ab_task** %5, align 8
  br label %33

33:                                               ; preds = %18, %17
  %34 = load %struct.ab_task*, %struct.ab_task** %5, align 8
  ret %struct.ab_task* %34
}

declare dso_local %struct.ab_task* @ab_task_create_get(%struct.kmem_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
