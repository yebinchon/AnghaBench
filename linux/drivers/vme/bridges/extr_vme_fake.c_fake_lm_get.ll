; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_lm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_lm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fake_driver* }
%struct.fake_driver = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i64*, i32*, i32*)* @fake_lm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_lm_get(%struct.vme_lm_resource* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.vme_lm_resource*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fake_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %11 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.fake_driver*, %struct.fake_driver** %13, align 8
  store %struct.fake_driver* %14, %struct.fake_driver** %9, align 8
  %15 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %16 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.fake_driver*, %struct.fake_driver** %9, align 8
  %19 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.fake_driver*, %struct.fake_driver** %9, align 8
  %23 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.fake_driver*, %struct.fake_driver** %9, align 8
  %27 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %5, align 8
  %31 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.fake_driver*, %struct.fake_driver** %9, align 8
  %34 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
