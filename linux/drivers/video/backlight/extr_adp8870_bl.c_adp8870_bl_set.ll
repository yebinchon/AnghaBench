; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_bl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_bl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.adp8870_bl = type { i32, i32, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_client = type { i32 }

@ADP8870_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@ADP8870_MDCR = common dso_local global i32 0, align 4
@CMP_AUTOEN = common dso_local global i32 0, align 4
@ADP8870_BLMX1 = common dso_local global i32 0, align 4
@DIM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @adp8870_bl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8870_bl_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adp8870_bl*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %10 = call %struct.adp8870_bl* @bl_get_data(%struct.backlight_device* %9)
  store %struct.adp8870_bl* %10, %struct.adp8870_bl** %6, align 8
  %11 = load %struct.adp8870_bl*, %struct.adp8870_bl** %6, align 8
  %12 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %11, i32 0, i32 3
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.adp8870_bl*, %struct.adp8870_bl** %6, align 8
  %15 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ADP8870_MAX_BRIGHTNESS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %29 = load i32, i32* @ADP8870_MDCR, align 4
  %30 = load i32, i32* @CMP_AUTOEN, align 4
  %31 = call i32 @adp8870_clr_bits(%struct.i2c_client* %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %114

36:                                               ; preds = %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %38 = load i32, i32* @ADP8870_BLMX1, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @adp8870_write(%struct.i2c_client* %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %114

45:                                               ; preds = %36
  br label %67

46:                                               ; preds = %23, %20
  %47 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %48 = load i32, i32* @ADP8870_BLMX1, align 4
  %49 = load %struct.adp8870_bl*, %struct.adp8870_bl** %6, align 8
  %50 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @adp8870_write(%struct.i2c_client* %47, i32 %48, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %46
  %58 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %59 = load i32, i32* @ADP8870_MDCR, align 4
  %60 = load i32, i32* @CMP_AUTOEN, align 4
  %61 = call i32 @adp8870_set_bits(%struct.i2c_client* %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %45
  br label %78

68:                                               ; preds = %2
  %69 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %70 = load i32, i32* @ADP8870_BLMX1, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @adp8870_write(%struct.i2c_client* %69, i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %114

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %67
  %79 = load %struct.adp8870_bl*, %struct.adp8870_bl** %6, align 8
  %80 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %88 = load i32, i32* @ADP8870_MDCR, align 4
  %89 = load i32, i32* @DIM_EN, align 4
  %90 = call i32 @adp8870_set_bits(%struct.i2c_client* %87, i32 %88, i32 %89)
  store i32 %90, i32* %8, align 4
  br label %105

91:                                               ; preds = %83, %78
  %92 = load %struct.adp8870_bl*, %struct.adp8870_bl** %6, align 8
  %93 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %101 = load i32, i32* @ADP8870_MDCR, align 4
  %102 = load i32, i32* @DIM_EN, align 4
  %103 = call i32 @adp8870_clr_bits(%struct.i2c_client* %100, i32 %101, i32 %102)
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %99, %96, %91
  br label %105

105:                                              ; preds = %104, %86
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.adp8870_bl*, %struct.adp8870_bl** %6, align 8
  %111 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %75, %64, %55, %43, %34
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.adp8870_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @adp8870_clr_bits(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @adp8870_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @adp8870_set_bits(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
