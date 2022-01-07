; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rohm_regmap_dev = type { i32 }

@BD70528_REG_WAKE_EN = common dso_local global i32 0, align 4
@BD70528_MASK_WAKE_EN = common dso_local global i32 0, align 4
@BD70528_WAKE_STATE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rohm_regmap_dev*, i32, i32*)* @bd70528_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_set_wake(%struct.rohm_regmap_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rohm_regmap_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rohm_regmap_dev* %0, %struct.rohm_regmap_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %11 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BD70528_REG_WAKE_EN, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BD70528_MASK_WAKE_EN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @BD70528_WAKE_STATE_BIT, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @BD70528_WAKE_STATE_BIT, align 4
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BD70528_WAKE_STATE_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %72

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @BD70528_MASK_WAKE_EN, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @BD70528_MASK_WAKE_EN, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %67 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BD70528_REG_WAKE_EN, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @regmap_write(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %51, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
