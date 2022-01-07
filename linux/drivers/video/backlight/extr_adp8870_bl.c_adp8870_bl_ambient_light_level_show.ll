; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_bl_ambient_light_level_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_bl_ambient_light_level_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adp8870_bl = type { i32, i32 }

@ADP8870_PH1LEVL = common dso_local global i32 0, align 4
@ADP8870_PH1LEVH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adp8870_bl_ambient_light_level_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8870_bl_ambient_light_level_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adp8870_bl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.adp8870_bl* @dev_get_drvdata(%struct.device* %12)
  store %struct.adp8870_bl* %13, %struct.adp8870_bl** %8, align 8
  %14 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %15 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %18 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ADP8870_PH1LEVL, align 4
  %21 = call i32 @adp8870_read(i32 %19, i32 %20, i32* %10)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %26 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %32 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ADP8870_PH1LEVH, align 4
  %35 = call i32 @adp8870_read(i32 %33, i32 %34, i32* %10)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %37 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %29
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 31
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %41, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.adp8870_bl* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adp8870_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
