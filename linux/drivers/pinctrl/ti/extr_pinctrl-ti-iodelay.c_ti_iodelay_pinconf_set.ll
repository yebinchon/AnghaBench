; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_iodelay_device = type { i32, %struct.device*, %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_data* }
%struct.device = type { i32 }
%struct.ti_iodelay_reg_values = type { i32, i32 }
%struct.ti_iodelay_reg_data = type { i32, i32, i32, i32, i32, i32 }
%struct.ti_iodelay_cfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Masking overflow of coarse elements %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Masking overflow of fine elements %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Set reg 0x%x Delay(a: %d g: %d), Elements(C=%d F=%d)0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_iodelay_device*, %struct.ti_iodelay_cfg*)* @ti_iodelay_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_pinconf_set(%struct.ti_iodelay_device* %0, %struct.ti_iodelay_cfg* %1) #0 {
  %3 = alloca %struct.ti_iodelay_device*, align 8
  %4 = alloca %struct.ti_iodelay_cfg*, align 8
  %5 = alloca %struct.ti_iodelay_reg_data*, align 8
  %6 = alloca %struct.ti_iodelay_reg_values*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ti_iodelay_device* %0, %struct.ti_iodelay_device** %3, align 8
  store %struct.ti_iodelay_cfg* %1, %struct.ti_iodelay_cfg** %4, align 8
  %19 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %3, align 8
  %20 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %19, i32 0, i32 3
  %21 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %20, align 8
  store %struct.ti_iodelay_reg_data* %21, %struct.ti_iodelay_reg_data** %5, align 8
  %22 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %3, align 8
  %23 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %22, i32 0, i32 2
  store %struct.ti_iodelay_reg_values* %23, %struct.ti_iodelay_reg_values** %6, align 8
  %24 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %3, align 8
  %25 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %24, i32 0, i32 1
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 920
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %33, 920
  %35 = mul nsw i32 %34, 10
  %36 = sdiv i32 %35, 60
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %41 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %45 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %48 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %46, %49
  %51 = mul nsw i32 %50, 10
  %52 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %53 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = sdiv i32 %61, 10
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %63, 22
  br i1 %64, label %65, label %91

65:                                               ; preds = %2
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %68 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %73 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = add nsw i32 %70, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %79 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %77, %80
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %84 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = srem i32 %82, %85
  %87 = load %struct.ti_iodelay_reg_values*, %struct.ti_iodelay_reg_values** %6, align 8
  %88 = getelementptr inbounds %struct.ti_iodelay_reg_values, %struct.ti_iodelay_reg_values* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %86, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %65, %2
  %92 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %93 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  %95 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %96 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %99 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @__ffs(i32 %100)
  %102 = shl i32 %97, %101
  store i32 %102, i32* %16, align 4
  %103 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %104 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %15, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %110 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @__ffs(i32 %111)
  %113 = shl i32 %108, %112
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %116 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %114, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %91
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %126 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %17, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %121, %91
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %16, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %16, align 4
  %134 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %135 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %141 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @__ffs(i32 %142)
  %144 = shl i32 %139, %143
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %147 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %145, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %130
  %153 = load %struct.device*, %struct.device** %7, align 8
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %157 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %17, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %17, align 4
  br label %161

161:                                              ; preds = %152, %130
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %16, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %16, align 4
  %165 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %166 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %15, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %171 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  %174 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @__ffs(i32 %175)
  %177 = shl i32 %172, %176
  %178 = load i32, i32* %16, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %16, align 4
  %180 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %3, align 8
  %181 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %184 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @regmap_update_bits(i32 %182, i32 %185, i32 %186, i32 %187)
  store i32 %188, i32* %18, align 4
  %189 = load %struct.device*, %struct.device** %7, align 8
  %190 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %191 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %194 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %4, align 8
  %197 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @dev_dbg(%struct.device* %189, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %192, i32 %195, i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %18, align 4
  ret i32 %203
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
