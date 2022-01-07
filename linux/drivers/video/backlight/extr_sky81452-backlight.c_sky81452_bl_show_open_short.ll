; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_show_open_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_show_open_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@SKY81452_REG5 = common dso_local global i32 0, align 4
@SKY81452_REG4 = common dso_local global i32 0, align 4
@SKY81452_SHRT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sky81452_bl_show_open_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_bl_show_open_short(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @to_backlight_device(%struct.device* %14)
  %16 = call %struct.regmap* @bl_get_data(i32 %15)
  store %struct.regmap* %16, %struct.regmap** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @SKY81452_REG5, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @SKY81452_REG4, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %9, align 4
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @regmap_read(%struct.regmap* %29, i32 %30, i32* %10)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  br label %73

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SKY81452_SHRT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  store i8 0, i8* %42, align 1
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %61, %41
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 6
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %57 = call i32 @strcat(i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i32, i32* %10, align 4
  %60 = lshr i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcat(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %70

67:                                               ; preds = %36
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcpy(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strlen(i8* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %34
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.regmap* @bl_get_data(i32) #1

declare dso_local i32 @to_backlight_device(%struct.device*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
