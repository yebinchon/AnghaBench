; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.zx_pinctrl = type { i32, i32, i32, %struct.zx_pinctrl_soc_info* }
%struct.zx_pinctrl_soc_info = type { %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, %struct.zx_pin_data* }
%struct.zx_pin_data = type { i32, i32, i32, i64, %struct.zx_mux_desc* }
%struct.zx_mux_desc = type { i32, i64 }
%struct.function_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AON_MUX_FLAG = common dso_local global i32 0, align 4
@NONAON_MVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @zx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zx_pinctrl*, align 8
  %9 = alloca %struct.zx_pinctrl_soc_info*, align 8
  %10 = alloca %struct.pinctrl_pin_desc*, align 8
  %11 = alloca %struct.zx_pin_data*, align 8
  %12 = alloca %struct.zx_mux_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.function_desc*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %23 = call %struct.zx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %22)
  store %struct.zx_pinctrl* %23, %struct.zx_pinctrl** %8, align 8
  %24 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %25 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %24, i32 0, i32 3
  %26 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %25, align 8
  store %struct.zx_pinctrl_soc_info* %26, %struct.zx_pinctrl_soc_info** %9, align 8
  %27 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %9, align 8
  %28 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %27, i32 0, i32 0
  %29 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %29, i64 %31
  store %struct.pinctrl_pin_desc* %32, %struct.pinctrl_pin_desc** %10, align 8
  %33 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %34 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %33, i32 0, i32 1
  %35 = load %struct.zx_pin_data*, %struct.zx_pin_data** %34, align 8
  store %struct.zx_pin_data* %35, %struct.zx_pin_data** %11, align 8
  %36 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %37 = icmp ne %struct.zx_pin_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %218

41:                                               ; preds = %3
  %42 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %43 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %42, i32 0, i32 4
  %44 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %43, align 8
  store %struct.zx_mux_desc* %44, %struct.zx_mux_desc** %12, align 8
  %45 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %46 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  %50 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %51 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %54 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %15, align 4
  %56 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev* %56, i32 %57)
  store %struct.function_desc* %58, %struct.function_desc** %16, align 8
  %59 = load %struct.function_desc*, %struct.function_desc** %16, align 8
  %60 = icmp ne %struct.function_desc* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %41
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %218

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %80, %64
  %66 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %12, align 8
  %67 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %12, align 8
  %72 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.function_desc*, %struct.function_desc** %16, align 8
  %75 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @strcmp(i64 %73, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %83

80:                                               ; preds = %70
  %81 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %12, align 8
  %82 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %81, i32 1
  store %struct.zx_mux_desc* %82, %struct.zx_mux_desc** %12, align 8
  br label %65

83:                                               ; preds = %79, %65
  %84 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %12, align 8
  %85 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %19, align 4
  %87 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %88 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %87, i32 0, i32 2
  %89 = load i64, i64* %17, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.zx_pin_data*, %struct.zx_pin_data** %11, align 8
  %92 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %186

95:                                               ; preds = %83
  %96 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %97 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 16
  %100 = mul nsw i32 %99, 4
  store i32 %100, i32* %20, align 4
  %101 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %102 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = srem i32 %103, 16
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* @AON_MUX_FLAG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %95
  %111 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %112 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @readl(i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %21, align 4
  %118 = shl i32 3, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %18, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = and i32 %122, 3
  %124 = load i32, i32* %21, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* %18, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %130 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @writel(i32 %128, i32 %133)
  br label %185

135:                                              ; preds = %95
  %136 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %137 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @readl(i32 %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %15, align 4
  %144 = shl i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %18, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %13, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* %15, align 4
  %152 = shl i32 %150, %151
  %153 = load i32, i32* %18, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %157 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @writel(i32 %155, i32 %160)
  %162 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %163 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @readl(i32 %166)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %21, align 4
  %169 = shl i32 3, %168
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %18, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* @NONAON_MVAL, align 4
  %174 = load i32, i32* %21, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* %18, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %18, align 4
  %179 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %180 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %181, %182
  %184 = call i32 @writel(i32 %178, i32 %183)
  br label %185

185:                                              ; preds = %135, %110
  br label %213

186:                                              ; preds = %83
  %187 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %188 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %189, %190
  %192 = call i32 @readl(i32 %191)
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %15, align 4
  %195 = shl i32 %193, %194
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %18, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %13, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* %15, align 4
  %203 = shl i32 %201, %202
  %204 = load i32, i32* %18, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %18, align 4
  %207 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %208 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 @writel(i32 %206, i32 %211)
  br label %213

213:                                              ; preds = %186, %185
  %214 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %8, align 8
  %215 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %214, i32 0, i32 2
  %216 = load i64, i64* %17, align 8
  %217 = call i32 @spin_unlock_irqrestore(i32* %215, i64 %216)
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %213, %61, %38
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local %struct.zx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.function_desc* @pinmux_generic_get_function(%struct.pinctrl_dev*, i32) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
