; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_bl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_bl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.adp8860_bl = type { i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADP8860_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@ADP8860_MDCR = common dso_local global i32 0, align 4
@CMP_AUTOEN = common dso_local global i32 0, align 4
@ADP8860_BLMX1 = common dso_local global i32 0, align 4
@DIM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @adp8860_bl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_bl_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adp8860_bl*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.adp8860_bl* @bl_get_data(%struct.backlight_device* %8)
  store %struct.adp8860_bl* %9, %struct.adp8860_bl** %5, align 8
  %10 = load %struct.adp8860_bl*, %struct.adp8860_bl** %5, align 8
  %11 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.adp8860_bl*, %struct.adp8860_bl** %5, align 8
  %14 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ADP8860_MAX_BRIGHTNESS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = load i32, i32* @ADP8860_MDCR, align 4
  %27 = load i32, i32* @CMP_AUTOEN, align 4
  %28 = call i32 @adp8860_clr_bits(%struct.i2c_client* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* @ADP8860_BLMX1, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @adp8860_write(%struct.i2c_client* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %52

37:                                               ; preds = %20, %17
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = load i32, i32* @ADP8860_BLMX1, align 4
  %40 = load %struct.adp8860_bl*, %struct.adp8860_bl** %5, align 8
  %41 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @adp8860_write(%struct.i2c_client* %38, i32 %39, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = load i32, i32* @ADP8860_MDCR, align 4
  %48 = load i32, i32* @CMP_AUTOEN, align 4
  %49 = call i32 @adp8860_set_bits(%struct.i2c_client* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %37, %24
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = load i32, i32* @ADP8860_BLMX1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @adp8860_write(%struct.i2c_client* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load %struct.adp8860_bl*, %struct.adp8860_bl** %5, align 8
  %62 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %70 = load i32, i32* @ADP8860_MDCR, align 4
  %71 = load i32, i32* @DIM_EN, align 4
  %72 = call i32 @adp8860_set_bits(%struct.i2c_client* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %91

75:                                               ; preds = %65, %60
  %76 = load %struct.adp8860_bl*, %struct.adp8860_bl** %5, align 8
  %77 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %85 = load i32, i32* @ADP8860_MDCR, align 4
  %86 = load i32, i32* @DIM_EN, align 4
  %87 = call i32 @adp8860_clr_bits(%struct.i2c_client* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %83, %80, %75
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.adp8860_bl*, %struct.adp8860_bl** %5, align 8
  %97 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local %struct.adp8860_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @adp8860_clr_bits(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @adp8860_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @adp8860_set_bits(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
