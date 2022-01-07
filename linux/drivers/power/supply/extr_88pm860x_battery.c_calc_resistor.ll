; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_calc_resistor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_calc_resistor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32 }

@OCV_MODE_ACTIVE = common dso_local global i32 0, align 4
@VBATT_RESISTOR_MIN = common dso_local global i32 0, align 4
@VBATT_RESISTOR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_battery_info*)* @calc_resistor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_resistor(%struct.pm860x_battery_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm860x_battery_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %3, align 8
  %12 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %13 = call i32 @measure_current(%struct.pm860x_battery_info* %12, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %1
  br label %189

20:                                               ; preds = %16
  %21 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %22 = load i32, i32* @OCV_MODE_ACTIVE, align 4
  %23 = call i32 @measure_vbatt(%struct.pm860x_battery_info* %21, i32 %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %189

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @VBATT_RESISTOR_MIN, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @VBATT_RESISTOR_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  br label %189

36:                                               ; preds = %31
  %37 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %38 = call i64 @set_charger_current(%struct.pm860x_battery_info* %37, i32 500, i32* %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %189

41:                                               ; preds = %36
  %42 = call i32 @msleep(i32 500)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %74, %41
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %48 = load i32, i32* @OCV_MODE_ACTIVE, align 4
  %49 = call i32 @measure_vbatt(%struct.pm860x_battery_info* %47, i32 %48, i32* %9)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %185

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %58 = call i32 @measure_current(%struct.pm860x_battery_info* %57, i32* %9)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %185

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %7, align 4
  br label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %43

77:                                               ; preds = %43
  %78 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %79 = call i64 @set_charger_current(%struct.pm860x_battery_info* %78, i32 100, i32* %10)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %185

82:                                               ; preds = %77
  %83 = call i32 @msleep(i32 500)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %115, %82
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 10
  br i1 %86, label %87, label %118

87:                                               ; preds = %84
  %88 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %89 = load i32, i32* @OCV_MODE_ACTIVE, align 4
  %90 = call i32 @measure_vbatt(%struct.pm860x_battery_info* %88, i32 %89, i32* %9)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %185

94:                                               ; preds = %87
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %99 = call i32 @measure_current(%struct.pm860x_battery_info* %98, i32* %9)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %185

103:                                              ; preds = %94
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %8, align 4
  br label %114

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %84

118:                                              ; preds = %84
  %119 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @set_charger_current(%struct.pm860x_battery_info* %119, i32 %120, i32* %10)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %185

124:                                              ; preds = %118
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %184

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %184

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %184

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = sub nsw i32 %136, %137
  %139 = mul nsw i32 1000, %138
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sdiv i32 %139, %142
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %146 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %144, %147
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %135
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %153 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %151, %154
  %156 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %157 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %150
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %163 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %150, %135
  %165 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %166 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %167, %168
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %164
  %172 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %173 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %182 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %171, %164
  br label %184

184:                                              ; preds = %183, %132, %128, %124
  store i32 0, i32* %2, align 4
  br label %192

185:                                              ; preds = %123, %102, %93, %81, %61, %52
  %186 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i64 @set_charger_current(%struct.pm860x_battery_info* %186, i32 %187, i32* %10)
  br label %189

189:                                              ; preds = %185, %40, %35, %26, %19
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @measure_current(%struct.pm860x_battery_info*, i32*) #1

declare dso_local i32 @measure_vbatt(%struct.pm860x_battery_info*, i32, i32*) #1

declare dso_local i64 @set_charger_current(%struct.pm860x_battery_info*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
