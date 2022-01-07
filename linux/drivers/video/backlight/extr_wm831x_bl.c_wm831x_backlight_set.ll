; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_wm831x_bl.c_wm831x_backlight_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_wm831x_bl.c_wm831x_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.wm831x_backlight_data = type { i32, i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_CS1_ENA = common dso_local global i32 0, align 4
@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@WM831X_DC4_ENA = common dso_local global i32 0, align 4
@WM831X_CS1_DRIVE = common dso_local global i32 0, align 4
@WM831X_CS1_ISEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @wm831x_backlight_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_backlight_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x_backlight_data*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %12 = call %struct.wm831x_backlight_data* @bl_get_data(%struct.backlight_device* %11)
  store %struct.wm831x_backlight_data* %12, %struct.wm831x_backlight_data** %6, align 8
  %13 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %14 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %13, i32 0, i32 2
  %15 = load %struct.wm831x*, %struct.wm831x** %14, align 8
  store %struct.wm831x* %15, %struct.wm831x** %7, align 8
  %16 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %17 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i1 [ false, %2 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %27 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i1 [ false, %23 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %41 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %42 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WM831X_CS1_ENA, align 4
  %45 = load i32, i32* @WM831X_CS1_ENA, align 4
  %46 = call i32 @wm831x_set_bits(%struct.wm831x* %40, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %115

50:                                               ; preds = %39
  %51 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %52 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %53 = load i32, i32* @WM831X_DC4_ENA, align 4
  %54 = load i32, i32* @WM831X_DC4_ENA, align 4
  %55 = call i32 @wm831x_set_bits(%struct.wm831x* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %115

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %65 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %66 = load i32, i32* @WM831X_DC4_ENA, align 4
  %67 = call i32 @wm831x_set_bits(%struct.wm831x* %64, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %115

71:                                               ; preds = %63
  %72 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %73 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %74 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @WM831X_CS1_DRIVE, align 4
  %77 = load i32, i32* @WM831X_CS1_ENA, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @wm831x_set_bits(%struct.wm831x* %72, i32 %75, i32 %78, i32 0)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %115

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %86 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %87 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @WM831X_CS1_ISEL_MASK, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @wm831x_set_bits(%struct.wm831x* %85, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %115

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %100 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %101 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @WM831X_CS1_DRIVE, align 4
  %104 = load i32, i32* @WM831X_CS1_DRIVE, align 4
  %105 = call i32 @wm831x_set_bits(%struct.wm831x* %99, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %134

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %95
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %114 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %134

115:                                              ; preds = %94, %82, %70, %58, %49
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118, %115
  %122 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %123 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %124 = load i32, i32* @WM831X_DC4_ENA, align 4
  %125 = call i32 @wm831x_set_bits(%struct.wm831x* %122, i32 %123, i32 %124, i32 0)
  %126 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %127 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %6, align 8
  %128 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WM831X_CS1_ENA, align 4
  %131 = call i32 @wm831x_set_bits(%struct.wm831x* %126, i32 %129, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %121, %118
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %111, %108
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.wm831x_backlight_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
