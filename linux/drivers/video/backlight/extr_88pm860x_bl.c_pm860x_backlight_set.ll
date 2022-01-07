; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_88pm860x_bl.c_pm860x_backlight_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_88pm860x_bl.c_pm860x_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.pm860x_backlight_data = type { i8, i32, i32, i32, i64, i64, i32, i32, %struct.pm860x_chip* }
%struct.pm860x_chip = type { i32 }

@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@CURRENT_BITMASK = common dso_local global i64 0, align 8
@PM8606_PWM = common dso_local global i32 0, align 4
@PM8606_PWM_FREQ_MASK = common dso_local global i64 0, align 8
@PM8606_WLED_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"set brightness %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"set brightness %d failure with return value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @pm860x_backlight_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_backlight_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pm860x_backlight_data*, align 8
  %7 = alloca %struct.pm860x_chip*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %11 = call %struct.pm860x_backlight_data* @bl_get_data(%struct.backlight_device* %10)
  store %struct.pm860x_backlight_data* %11, %struct.pm860x_backlight_data** %6, align 8
  %12 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %13 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %12, i32 0, i32 8
  %14 = load %struct.pm860x_chip*, %struct.pm860x_chip** %13, align 8
  store %struct.pm860x_chip* %14, %struct.pm860x_chip** %7, align 8
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
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.pm860x_chip*, %struct.pm860x_chip** %7, align 8
  %29 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %30 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @backlight_power_set(%struct.pm860x_chip* %28, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %35 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %38 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load i8, i8* %8, align 1
  %41 = call i32 @pm860x_reg_write(i32 %36, i32 %39, i8 zeroext %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %155

45:                                               ; preds = %33
  %46 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %47 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %109

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %51
  %55 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %56 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %61 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %64 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @CURRENT_BITMASK, align 8
  %67 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %68 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @pm860x_set_bits(i32 %62, i32 %65, i64 %66, i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %155

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %54
  %76 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %77 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %82 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PM8606_PWM, align 4
  %85 = load i64, i64* @PM8606_PWM_FREQ_MASK, align 8
  %86 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %87 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @pm860x_set_bits(i32 %83, i32 %84, i64 %85, i64 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %155

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %75
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %100 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %103 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* @PM8606_WLED_ON, align 8
  %106 = load i64, i64* @PM8606_WLED_ON, align 8
  %107 = call i32 @pm860x_set_bits(i32 %101, i32 %104, i64 %105, i64 %106)
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %98, %94
  br label %133

109:                                              ; preds = %51, %45
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %115 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %118 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* @PM8606_WLED_ON, align 8
  %121 = load i64, i64* @PM8606_WLED_ON, align 8
  %122 = call i32 @pm860x_set_bits(i32 %116, i32 %119, i64 %120, i64 %121)
  store i32 %122, i32* %9, align 4
  br label %132

123:                                              ; preds = %109
  %124 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %125 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %128 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* @PM8606_WLED_ON, align 8
  %131 = call i32 @pm860x_set_bits(i32 %126, i32 %129, i64 %130, i64 0)
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %123, %113
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %155

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.pm860x_chip*, %struct.pm860x_chip** %7, align 8
  %142 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %143 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @backlight_power_set(%struct.pm860x_chip* %141, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %140, %137
  %147 = load %struct.pm860x_chip*, %struct.pm860x_chip** %7, align 8
  %148 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i8, i8* %8, align 1
  %151 = call i32 (i32, i8*, i8, ...) @dev_dbg(i32 %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 zeroext %150)
  %152 = load i8, i8* %8, align 1
  %153 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %6, align 8
  %154 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %153, i32 0, i32 0
  store i8 %152, i8* %154, align 8
  store i32 0, i32* %3, align 4
  br label %163

155:                                              ; preds = %136, %92, %73, %44
  %156 = load %struct.pm860x_chip*, %struct.pm860x_chip** %7, align 8
  %157 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i8, i8* %8, align 1
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (i32, i8*, i8, ...) @dev_dbg(i32 %158, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %159, i32 %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %155, %146
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.pm860x_backlight_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @backlight_power_set(%struct.pm860x_chip*, i32, i32) #1

declare dso_local i32 @pm860x_reg_write(i32, i32, i8 zeroext) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
