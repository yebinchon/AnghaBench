; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_lm_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_lm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fake_driver* }
%struct.fake_driver = type { i64, i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i32)* @fake_lm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_lm_detach(%struct.vme_lm_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.vme_lm_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fake_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %9 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.fake_driver*, %struct.fake_driver** %11, align 8
  store %struct.fake_driver* %12, %struct.fake_driver** %7, align 8
  %13 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %14 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.fake_driver*, %struct.fake_driver** %7, align 8
  %17 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  store i32* null, i32** %21, align 8
  %22 = load %struct.fake_driver*, %struct.fake_driver** %7, align 8
  %23 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %22, i32 0, i32 2
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* null, i32** %27, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %45, %2
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %31 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.fake_driver*, %struct.fake_driver** %7, align 8
  %36 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.fake_driver*, %struct.fake_driver** %7, align 8
  %53 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %3, align 8
  %56 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
