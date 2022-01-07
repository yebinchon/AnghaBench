; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_mask_and_disable_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_mask_and_disable_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_wdt = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@QUIRK_HAS_PMU_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to update reg(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2410_wdt*, i32)* @s3c2410wdt_mask_and_disable_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410wdt_mask_and_disable_reset(%struct.s3c2410_wdt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c2410_wdt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s3c2410_wdt* %0, %struct.s3c2410_wdt** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %10 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %16 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QUIRK_HAS_PMU_CONFIG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %31 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %34 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regmap_update_bits(i32 %32, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %56

44:                                               ; preds = %29
  %45 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %46 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %49 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @regmap_update_bits(i32 %47, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %44, %43
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %4, align 8
  %61 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
