; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*, i8*)* @tegra_powergate_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_powergate_lookup(%struct.tegra_pmc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pmc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %8 = icmp ne %struct.tegra_pmc* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %9, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @tegra_powergate_is_valid(%struct.tegra_pmc* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %51

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.tegra_pmc*, %struct.tegra_pmc** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i8* %36, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %48, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @tegra_powergate_is_valid(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
