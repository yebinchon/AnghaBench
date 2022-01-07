; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pcs_device = type { i32, i32 (i64)*, i64 }
%struct.pcs_function = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PIN_CONFIG_BIAS_DISABLE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @pcs_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pcs_device*, align 8
  %9 = alloca %struct.pcs_function*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.pcs_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.pcs_device* %17, %struct.pcs_device** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @pcs_get_function(%struct.pinctrl_dev* %18, i32 %19, %struct.pcs_function** %9)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %4, align 4
  br label %176

25:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %170, %25
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %29 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %173

32:                                               ; preds = %26
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pinconf_to_config_param(i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @pcs_pinconf_bias_disable(%struct.pinctrl_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64*, i64** %7, align 8
  store i64 0, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %176

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %176

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %52 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %50, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %170

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %65 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BITS_PER_BYTE, align 4
  %68 = udiv i32 %66, %67
  %69 = mul i32 %63, %68
  store i32 %69, i32* %11, align 4
  %70 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %71 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %70, i32 0, i32 1
  %72 = load i32 (i64)*, i32 (i64)** %71, align 8
  %73 = load %struct.pcs_device*, %struct.pcs_device** %8, align 8
  %74 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 %72(i64 %78)
  %80 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %81 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %79, %87
  store i32 %88, i32* %12, align 4
  %89 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %90 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %165 [
    i32 134, label %97
    i32 133, label %97
    i32 130, label %97
    i32 131, label %124
    i32 132, label %164
    i32 128, label %164
    i32 129, label %164
  ]

97:                                               ; preds = %62, %62, %62
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %100 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %98, %106
  br i1 %107, label %119, label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %111 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %109, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %108, %97
  %120 = load i32, i32* @ENOTSUPP, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %176

122:                                              ; preds = %108
  %123 = load i64*, i64** %7, align 8
  store i64 0, i64* %123, align 8
  br label %169

124:                                              ; preds = %62
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %157, %124
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %128 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %125
  %132 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %133 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %155 [
    i32 130, label %140
  ]

140:                                              ; preds = %131
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.pcs_function*, %struct.pcs_function** %9, align 8
  %143 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %141, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = load i32, i32* @ENOTSUPP, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %176

154:                                              ; preds = %140
  br label %156

155:                                              ; preds = %131
  br label %156

156:                                              ; preds = %155, %154
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %125

160:                                              ; preds = %125
  %161 = load i32, i32* %12, align 4
  %162 = zext i32 %161 to i64
  %163 = load i64*, i64** %7, align 8
  store i64 %162, i64* %163, align 8
  br label %169

164:                                              ; preds = %62, %62, %62
  br label %165

165:                                              ; preds = %62, %164
  %166 = load i32, i32* %12, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64*, i64** %7, align 8
  store i64 %167, i64* %168, align 8
  br label %169

169:                                              ; preds = %165, %160, %122
  store i32 0, i32* %4, align 4
  br label %176

170:                                              ; preds = %60
  %171 = load i32, i32* %13, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %26

173:                                              ; preds = %26
  %174 = load i32, i32* @ENOTSUPP, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %173, %169, %151, %119, %46, %44, %23
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.pcs_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pcs_get_function(%struct.pinctrl_dev*, i32, %struct.pcs_function**) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @pcs_pinconf_bias_disable(%struct.pinctrl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
