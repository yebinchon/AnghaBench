; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_max8925_bl.c_max8925_backlight_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_max8925_bl.c_max8925_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.max8925_backlight_data = type { i8, i32, i32, %struct.max8925_chip* }
%struct.max8925_chip = type { i32, i32 }

@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"set brightness %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"set brightness %d failure with return value:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @max8925_backlight_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_backlight_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8925_backlight_data*, align 8
  %7 = alloca %struct.max8925_chip*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %11 = call %struct.max8925_backlight_data* @bl_get_data(%struct.backlight_device* %10)
  store %struct.max8925_backlight_data* %11, %struct.max8925_backlight_data** %6, align 8
  %12 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %13 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %12, i32 0, i32 3
  %14 = load %struct.max8925_chip*, %struct.max8925_chip** %13, align 8
  store %struct.max8925_chip* %14, %struct.max8925_chip** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %8, align 1
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %8, align 1
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.max8925_chip*, %struct.max8925_chip** %7, align 8
  %26 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %29 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i8, i8* %8, align 1
  %32 = call i32 @max8925_reg_write(i32 %27, i32 %30, i8 zeroext %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %77

36:                                               ; preds = %24
  %37 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %38 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.max8925_chip*, %struct.max8925_chip** %7, align 8
  %46 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %49 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @max8925_set_bits(i32 %47, i32 %50, i32 1, i32 1)
  store i32 %51, i32* %9, align 4
  br label %64

52:                                               ; preds = %41, %36
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.max8925_chip*, %struct.max8925_chip** %7, align 8
  %57 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %60 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @max8925_set_bits(i32 %58, i32 %61, i32 1, i32 0)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %55, %52
  br label %64

64:                                               ; preds = %63, %44
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %77

68:                                               ; preds = %64
  %69 = load %struct.max8925_chip*, %struct.max8925_chip** %7, align 8
  %70 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8, i8* %8, align 1
  %73 = call i32 (i32, i8*, i8, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 zeroext %72)
  %74 = load i8, i8* %8, align 1
  %75 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %76 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %75, i32 0, i32 0
  store i8 %74, i8* %76, align 8
  store i32 0, i32* %3, align 4
  br label %85

77:                                               ; preds = %67, %35
  %78 = load %struct.max8925_chip*, %struct.max8925_chip** %7, align 8
  %79 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8, i8* %8, align 1
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i32, i8*, i8, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %68
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.max8925_backlight_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @max8925_reg_write(i32, i32, i8 zeroext) #1

declare dso_local i32 @max8925_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
