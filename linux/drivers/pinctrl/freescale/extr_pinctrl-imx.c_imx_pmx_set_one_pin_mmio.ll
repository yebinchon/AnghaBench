; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pmx_set_one_pin_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pmx_set_one_pin_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_pinctrl = type { i32, i32, i32, %struct.imx_pin_reg*, %struct.imx_pinctrl_soc_info* }
%struct.imx_pin_reg = type { i32 }
%struct.imx_pinctrl_soc_info = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.imx_pin = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.imx_pin_mmio }
%struct.imx_pin_mmio = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Pin(%s) does not support mux function\0A\00", align 1
@SHARE_MUX_CONF_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"write: offset 0x%x val 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"==>select_input: offset 0x%x val 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_pinctrl*, %struct.imx_pin*)* @imx_pmx_set_one_pin_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pmx_set_one_pin_mmio(%struct.imx_pinctrl* %0, %struct.imx_pin* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_pinctrl*, align 8
  %5 = alloca %struct.imx_pin*, align 8
  %6 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %7 = alloca %struct.imx_pin_mmio*, align 8
  %8 = alloca %struct.imx_pin_reg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.imx_pinctrl* %0, %struct.imx_pinctrl** %4, align 8
  store %struct.imx_pin* %1, %struct.imx_pin** %5, align 8
  %16 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %17 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %16, i32 0, i32 4
  %18 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %17, align 8
  store %struct.imx_pinctrl_soc_info* %18, %struct.imx_pinctrl_soc_info** %6, align 8
  %19 = load %struct.imx_pin*, %struct.imx_pin** %5, align 8
  %20 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.imx_pin_mmio* %21, %struct.imx_pin_mmio** %7, align 8
  %22 = load %struct.imx_pin*, %struct.imx_pin** %5, align 8
  %23 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %25, i32 0, i32 3
  %27 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %27, i64 %29
  store %struct.imx_pin_reg* %30, %struct.imx_pin_reg** %8, align 8
  %31 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %8, align 8
  %32 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %48

35:                                               ; preds = %2
  %36 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %37 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %6, align 8
  %40 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %3, align 4
  br label %214

48:                                               ; preds = %2
  %49 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %6, align 8
  %50 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SHARE_MUX_CONF_REG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %48
  %56 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %57 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %8, align 8
  %60 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = call i32 @readl(i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %6, align 8
  %65 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %71 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %6, align 8
  %74 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %72, %75
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %81 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %8, align 8
  %84 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = call i32 @writel(i32 %79, i32 %86)
  %88 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %89 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %8, align 8
  %92 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %118

96:                                               ; preds = %48
  %97 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %98 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %101 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %8, align 8
  %104 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = call i32 @writel(i32 %99, i32 %106)
  %108 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %109 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %8, align 8
  %112 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %115 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %96, %55
  %119 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %120 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 24
  %123 = icmp eq i32 %122, 255
  br i1 %123, label %124, label %167

124:                                              ; preds = %118
  %125 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %126 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = and i32 %128, 255
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = ashr i32 %130, 8
  %132 = and i32 %131, 255
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %11, align 4
  %134 = ashr i32 %133, 16
  %135 = and i32 %134, 255
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = shl i32 1, %136
  %138 = sub nsw i32 %137, 1
  %139 = load i32, i32* %14, align 4
  %140 = shl i32 %138, %139
  store i32 %140, i32* %15, align 4
  %141 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %142 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %145 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = call i32 @readl(i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %15, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %14, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %160 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %163 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = call i32 @writel(i32 %158, i32 %165)
  br label %213

167:                                              ; preds = %118
  %168 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %169 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %167
  %173 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %174 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %179 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %182 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %185 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %183, %186
  %188 = call i32 @writel(i32 %180, i32 %187)
  br label %201

189:                                              ; preds = %172
  %190 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %191 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %194 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %197 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = call i32 @writel(i32 %192, i32 %199)
  br label %201

201:                                              ; preds = %189, %177
  %202 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %4, align 8
  %203 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %206 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.imx_pin_mmio*, %struct.imx_pin_mmio** %7, align 8
  %209 = getelementptr inbounds %struct.imx_pin_mmio, %struct.imx_pin_mmio* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %204, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %201, %167
  br label %213

213:                                              ; preds = %212, %124
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %213, %35
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
