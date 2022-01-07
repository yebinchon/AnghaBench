; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.sky81452_bl_platform_data = type { i32, i32, i64, i64, i64 }

@SKY81452_IGPW = common dso_local global i32 0, align 4
@SKY81452_PWMMD = common dso_local global i32 0, align 4
@SKY81452_PHASE = common dso_local global i32 0, align 4
@SKY81452_ILIM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SKY81452_VSHRT = common dso_local global i32 0, align 4
@SKY81452_REG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.sky81452_bl_platform_data*)* @sky81452_bl_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_bl_init_device(%struct.regmap* %0, %struct.sky81452_bl_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.sky81452_bl_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store %struct.sky81452_bl_platform_data* %1, %struct.sky81452_bl_platform_data** %5, align 8
  %7 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %8 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SKY81452_IGPW, align 4
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %17 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @SKY81452_PWMMD, align 4
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @SKY81452_PHASE, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %39 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2300
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @SKY81452_ILIM, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %48 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 2750
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %82

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %57 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %62 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 7
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %60
  %69 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 7, %71
  %73 = load i32, i32* @SKY81452_VSHRT, align 4
  %74 = call i32 @CTZ(i32 %73)
  %75 = shl i32 %72, %74
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.regmap*, %struct.regmap** %4, align 8
  %79 = load i32, i32* @SKY81452_REG2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @regmap_write(%struct.regmap* %78, i32 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %68, %65, %51
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @CTZ(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
