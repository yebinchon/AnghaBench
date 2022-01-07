; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_show_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_show_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.regmap = type { i32 }

@SKY81452_REG4 = common dso_local global i32 0, align 4
@SKY81452_OCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"over-current \00", align 1
@SKY81452_OTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"over-temperature\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sky81452_bl_show_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_bl_show_fault(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @to_backlight_device(%struct.device* %11)
  %13 = call %struct.regmap* @bl_get_data(i32 %12)
  store %struct.regmap* %13, %struct.regmap** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.regmap*, %struct.regmap** %8, align 8
  %15 = load i32, i32* @SKY81452_REG4, align 4
  %16 = call i32 @regmap_read(%struct.regmap* %14, i32 %15, i32* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SKY81452_OCP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SKY81452_OTMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcat(i8* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strcat(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.regmap* @bl_get_data(i32) #1

declare dso_local i32 @to_backlight_device(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
