; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da9052_bl.c_da9052_adjust_wled_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da9052_bl.c_da9052_adjust_wled_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_bl = type { i64, i64, i8, i32 }

@DA9052_WLEDS_OFF = common dso_local global i64 0, align 8
@DA9052_BOOST_REG = common dso_local global i32 0, align 4
@DA9052_LED_CONT_REG = common dso_local global i32 0, align 4
@wled_bank = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_bl*)* @da9052_adjust_wled_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_adjust_wled_brightness(%struct.da9052_bl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9052_bl*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.da9052_bl* %0, %struct.da9052_bl** %3, align 8
  store i8 63, i8* %4, align 1
  store i8 -1, i8* %5, align 1
  %7 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %8 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DA9052_WLEDS_OFF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  br label %13

13:                                               ; preds = %12, %1
  %14 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %15 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DA9052_BOOST_REG, align 4
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = call i32 @da9052_reg_write(i32 %16, i32 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %13
  %26 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %27 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DA9052_LED_CONT_REG, align 4
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 @da9052_reg_write(i32 %28, i32 %29, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %79

37:                                               ; preds = %25
  %38 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %39 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** @wled_bank, align 8
  %42 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %43 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @da9052_reg_write(i32 %40, i32 %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %79

52:                                               ; preds = %37
  %53 = call i32 @usleep_range(i32 10000, i32 11000)
  %54 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %55 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %54, i32 0, i32 2
  %56 = load i8, i8* %55, align 8
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %60 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @wled_bank, align 8
  %63 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %64 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.da9052_bl*, %struct.da9052_bl** %3, align 8
  %69 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %68, i32 0, i32 2
  %70 = load i8, i8* %69, align 8
  %71 = sext i8 %70 to i32
  %72 = call i32 @da9052_reg_write(i32 %61, i32 %67, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %58
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %52
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %75, %50, %35, %23
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @da9052_reg_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
