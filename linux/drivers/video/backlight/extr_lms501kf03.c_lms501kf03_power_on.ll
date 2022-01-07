; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms501kf03.c_lms501kf03_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lms501kf03 = type { i32, i32, %struct.lcd_platform_data* }
%struct.lcd_platform_data = type { i32, i32 (i32)*, i32, i32 (i32, i32)* }

@.str = private unnamed_addr constant [19 x i8] c"power_on is NULL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"reset is NULL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to initialize ldi.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to enable ldi.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lms501kf03*)* @lms501kf03_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lms501kf03_power_on(%struct.lms501kf03* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lms501kf03*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcd_platform_data*, align 8
  store %struct.lms501kf03* %0, %struct.lms501kf03** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %7 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %6, i32 0, i32 2
  %8 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %7, align 8
  store %struct.lcd_platform_data* %8, %struct.lcd_platform_data** %5, align 8
  %9 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %10 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %9, i32 0, i32 3
  %11 = load i32 (i32, i32)*, i32 (i32, i32)** %10, align 8
  %12 = icmp ne i32 (i32, i32)* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %15 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %21, i32 0, i32 3
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %25 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %23(i32 %26, i32 1)
  %28 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %29 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @msleep(i32 %30)
  %32 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %32, i32 0, i32 1
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = icmp ne i32 (i32)* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %20
  %37 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %38 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %77

43:                                               ; preds = %20
  %44 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %44, i32 0, i32 1
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %48 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %46(i32 %49)
  %51 = load %struct.lcd_platform_data*, %struct.lcd_platform_data** %5, align 8
  %52 = getelementptr inbounds %struct.lcd_platform_data, %struct.lcd_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @msleep(i32 %53)
  %55 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %56 = call i32 @lms501kf03_ldi_init(%struct.lms501kf03* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %61 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %77

65:                                               ; preds = %43
  %66 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %67 = call i32 @lms501kf03_ldi_enable(%struct.lms501kf03* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.lms501kf03*, %struct.lms501kf03** %3, align 8
  %72 = getelementptr inbounds %struct.lms501kf03, %struct.lms501kf03* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %70, %59, %36, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lms501kf03_ldi_init(%struct.lms501kf03*) #1

declare dso_local i32 @lms501kf03_ldi_enable(%struct.lms501kf03*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
