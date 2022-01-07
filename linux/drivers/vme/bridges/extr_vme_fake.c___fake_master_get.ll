; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c___fake_master_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c___fake_master_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.fake_driver* }
%struct.fake_driver = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32*, i64*, i64*, i32*, i32*, i32*)* @__fake_master_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fake_master_get(%struct.vme_master_resource* %0, i32* %1, i64* %2, i64* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.vme_master_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fake_driver*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %18 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  store %struct.fake_driver* %21, %struct.fake_driver** %16, align 8
  %22 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %23 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %26 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %15, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %35 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %10, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %44 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %11, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %53 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %62 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %71 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %14, align 8
  store i32 %77, i32* %78, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
