; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pcs_device = type { i32, i32 (i64)*, i64, i32 (i32, i64)* }
%struct.pcs_function = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @pcs_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcs_device*, align 8
  %11 = alloca %struct.pcs_function*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %20 = call %struct.pcs_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %19)
  store %struct.pcs_device* %20, %struct.pcs_device** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pcs_get_function(%struct.pinctrl_dev* %21, i32 %22, %struct.pcs_function** %11)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %5, align 4
  br label %206

28:                                               ; preds = %4
  store i32 0, i32* %18, align 4
  br label %29

29:                                               ; preds = %202, %28
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %205

33:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %189, %33
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %37 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %192

40:                                               ; preds = %34
  %41 = load i64*, i64** %8, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pinconf_to_config_param(i64 %45)
  %47 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %48 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %46, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %189

57:                                               ; preds = %40
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.pcs_device*, %struct.pcs_device** %10, align 8
  %60 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BITS_PER_BYTE, align 4
  %63 = udiv i32 %61, %62
  %64 = mul i32 %58, %63
  store i32 %64, i32* %12, align 4
  %65 = load %struct.pcs_device*, %struct.pcs_device** %10, align 8
  %66 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %65, i32 0, i32 1
  %67 = load i32 (i64)*, i32 (i64)** %66, align 8
  %68 = load %struct.pcs_device*, %struct.pcs_device** %10, align 8
  %69 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 %67(i64 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i64*, i64** %8, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @pinconf_to_config_argument(i64 %79)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %82 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %174 [
    i32 131, label %89
    i32 132, label %89
    i32 128, label %89
    i32 129, label %89
    i32 135, label %125
    i32 134, label %129
    i32 133, label %129
    i32 130, label %137
  ]

89:                                               ; preds = %57, %57, %57, %57
  %90 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %91 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ffs(i32 %97)
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %101 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %15, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 %111, %112
  %114 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %115 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %113, %121
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %15, align 4
  br label %177

125:                                              ; preds = %57
  %126 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @pcs_pinconf_clear_bias(%struct.pinctrl_dev* %126, i32 %127)
  br label %177

129:                                              ; preds = %57, %57
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @pcs_pinconf_clear_bias(%struct.pinctrl_dev* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %129
  br label %137

137:                                              ; preds = %57, %136
  %138 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %139 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %15, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %137
  %152 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %153 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %15, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %15, align 4
  br label %173

162:                                              ; preds = %137
  %163 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %164 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %15, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %162, %151
  br label %177

174:                                              ; preds = %57
  %175 = load i32, i32* @ENOTSUPP, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %5, align 4
  br label %206

177:                                              ; preds = %173, %125, %89
  %178 = load %struct.pcs_device*, %struct.pcs_device** %10, align 8
  %179 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %178, i32 0, i32 3
  %180 = load i32 (i32, i64)*, i32 (i32, i64)** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.pcs_device*, %struct.pcs_device** %10, align 8
  %183 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = zext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = call i32 %180(i32 %181, i64 %187)
  br label %192

189:                                              ; preds = %56
  %190 = load i32, i32* %14, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %34

192:                                              ; preds = %177, %34
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.pcs_function*, %struct.pcs_function** %11, align 8
  %195 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp uge i32 %193, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i32, i32* @ENOTSUPP, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %5, align 4
  br label %206

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %29

205:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %205, %198, %174, %26
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local %struct.pcs_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pcs_get_function(%struct.pinctrl_dev*, i32, %struct.pcs_function**) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pcs_pinconf_clear_bias(%struct.pinctrl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
