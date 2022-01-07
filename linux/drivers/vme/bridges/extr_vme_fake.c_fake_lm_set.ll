; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_lm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_lm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_lm_resource = type { i32, i32, %struct.vme_bridge* }
%struct.vme_bridge = type { %struct.fake_driver* }
%struct.fake_driver = type { i64, i32, i32, i64* }

@.str = private unnamed_addr constant [49 x i8] c"Location monitor callback attached, can't reset\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_lm_resource*, i64, i32, i32)* @fake_lm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_lm_set(%struct.vme_lm_resource* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vme_lm_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vme_bridge*, align 8
  %12 = alloca %struct.fake_driver*, align 8
  store %struct.vme_lm_resource* %0, %struct.vme_lm_resource** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %14 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %13, i32 0, i32 2
  %15 = load %struct.vme_bridge*, %struct.vme_bridge** %14, align 8
  store %struct.vme_bridge* %15, %struct.vme_bridge** %11, align 8
  %16 = load %struct.vme_bridge*, %struct.vme_bridge** %11, align 8
  %17 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %16, i32 0, i32 0
  %18 = load %struct.fake_driver*, %struct.fake_driver** %17, align 8
  store %struct.fake_driver* %18, %struct.fake_driver** %12, align 8
  %19 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %20 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %45, %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %25 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.fake_driver*, %struct.fake_driver** %12, align 8
  %30 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %39 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %71

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %51 [
    i32 131, label %50
    i32 130, label %50
    i32 129, label %50
    i32 128, label %50
  ]

50:                                               ; preds = %48, %48, %48, %48
  br label %58

51:                                               ; preds = %48
  %52 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %53 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %71

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.fake_driver*, %struct.fake_driver** %12, align 8
  %61 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.fake_driver*, %struct.fake_driver** %12, align 8
  %64 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.fake_driver*, %struct.fake_driver** %12, align 8
  %67 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.vme_lm_resource*, %struct.vme_lm_resource** %6, align 8
  %69 = getelementptr inbounds %struct.vme_lm_resource, %struct.vme_lm_resource* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %58, %51, %37
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
