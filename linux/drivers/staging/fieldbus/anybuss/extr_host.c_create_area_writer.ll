; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_create_area_writer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_create_area_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab_task = type { %struct.area_priv }
%struct.area_priv = type { i32, i64, i32, i8*, i8* }
%struct.kmem_cache = type { i32 }

@task_fn_area = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ab_task* (%struct.kmem_cache*, i8*, i8*, i8*, i64)* @create_area_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ab_task* @create_area_writer(%struct.kmem_cache* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ab_task*, align 8
  %7 = alloca %struct.kmem_cache*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ab_task*, align 8
  %13 = alloca %struct.area_priv*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %15 = load i32, i32* @task_fn_area, align 4
  %16 = call %struct.ab_task* @ab_task_create_get(%struct.kmem_cache* %14, i32 %15)
  store %struct.ab_task* %16, %struct.ab_task** %12, align 8
  %17 = load %struct.ab_task*, %struct.ab_task** %12, align 8
  %18 = icmp ne %struct.ab_task* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.ab_task* null, %struct.ab_task** %6, align 8
  br label %41

20:                                               ; preds = %5
  %21 = load %struct.ab_task*, %struct.ab_task** %12, align 8
  %22 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %21, i32 0, i32 0
  store %struct.area_priv* %22, %struct.area_priv** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.area_priv*, %struct.area_priv** %13, align 8
  %25 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.area_priv*, %struct.area_priv** %13, align 8
  %28 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.area_priv*, %struct.area_priv** %13, align 8
  %30 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.area_priv*, %struct.area_priv** %13, align 8
  %33 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.area_priv*, %struct.area_priv** %13, align 8
  %35 = getelementptr inbounds %struct.area_priv, %struct.area_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @memcpy(i32 %36, i8* %37, i64 %38)
  %40 = load %struct.ab_task*, %struct.ab_task** %12, align 8
  store %struct.ab_task* %40, %struct.ab_task** %6, align 8
  br label %41

41:                                               ; preds = %20, %19
  %42 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  ret %struct.ab_task* %42
}

declare dso_local %struct.ab_task* @ab_task_create_get(%struct.kmem_cache*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
