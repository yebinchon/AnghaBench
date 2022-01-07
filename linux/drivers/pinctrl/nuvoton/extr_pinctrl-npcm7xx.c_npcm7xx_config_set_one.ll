; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_config_set_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_config_set_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pinctrl = type { i32, %struct.npcm7xx_gpio* }
%struct.npcm7xx_gpio = type { i64, %struct.TYPE_5__, i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32)* }
%struct.TYPE_5__ = type { i32, i32 }

@NPCM7XX_GPIO_PER_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"param=%d %d[GPIO]\0A\00", align 1
@NPCM7XX_GP_N_PU = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_PD = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OEC = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OES = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OTYP = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_DBNC = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm7xx_pinctrl*, i32, i64)* @npcm7xx_config_set_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_config_set_one(%struct.npcm7xx_pinctrl* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.npcm7xx_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.npcm7xx_gpio*, align 8
  %11 = alloca i32, align 4
  store %struct.npcm7xx_pinctrl* %0, %struct.npcm7xx_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @pinconf_to_config_param(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @pinconf_to_config_argument(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %5, align 8
  %17 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NPCM7XX_GPIO_PER_BANK, align 4
  %21 = udiv i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %18, i64 %22
  store %struct.npcm7xx_gpio* %23, %struct.npcm7xx_gpio** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %26 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = urem i32 %24, %28
  %30 = call i32 @BIT(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %32 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %180 [
    i32 137, label %39
    i32 136, label %58
    i32 135, label %77
    i32 130, label %96
    i32 129, label %116
    i32 133, label %137
    i32 134, label %147
    i32 131, label %157
    i32 128, label %167
    i32 132, label %175
  ]

39:                                               ; preds = %3
  %40 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %41 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %40, i32 0, i32 1
  %42 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %43 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NPCM7XX_GP_N_PU, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @npcm_gpio_clr(%struct.TYPE_5__* %41, i64 %46, i32 %47)
  %49 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %50 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %49, i32 0, i32 1
  %51 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %52 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NPCM7XX_GP_N_PD, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @npcm_gpio_clr(%struct.TYPE_5__* %50, i64 %55, i32 %56)
  br label %183

58:                                               ; preds = %3
  %59 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %60 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %59, i32 0, i32 1
  %61 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %62 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NPCM7XX_GP_N_PU, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @npcm_gpio_clr(%struct.TYPE_5__* %60, i64 %65, i32 %66)
  %68 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %69 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %68, i32 0, i32 1
  %70 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %71 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NPCM7XX_GP_N_PD, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @npcm_gpio_set(%struct.TYPE_5__* %69, i64 %74, i32 %75)
  br label %183

77:                                               ; preds = %3
  %78 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %79 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %78, i32 0, i32 1
  %80 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %81 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NPCM7XX_GP_N_PD, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @npcm_gpio_clr(%struct.TYPE_5__* %79, i64 %84, i32 %85)
  %87 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %88 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %87, i32 0, i32 1
  %89 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %90 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NPCM7XX_GP_N_PU, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @npcm_gpio_set(%struct.TYPE_5__* %88, i64 %93, i32 %94)
  br label %183

96:                                               ; preds = %3
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %99 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NPCM7XX_GP_N_OEC, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @iowrite32(i32 %97, i64 %102)
  %104 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %105 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %104, i32 0, i32 3
  %106 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %105, align 8
  %107 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %108 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %107, i32 0, i32 1
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %111 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = urem i32 %109, %113
  %115 = call i32 %106(%struct.TYPE_5__* %108, i32 %114)
  br label %183

116:                                              ; preds = %3
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %119 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NPCM7XX_GP_N_OES, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @iowrite32(i32 %117, i64 %122)
  %124 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %125 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %124, i32 0, i32 2
  %126 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %125, align 8
  %127 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %128 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %127, i32 0, i32 1
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %131 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = urem i32 %129, %133
  %135 = load i32, i32* %9, align 4
  %136 = call i32 %126(%struct.TYPE_5__* %128, i32 %134, i32 %135)
  br label %183

137:                                              ; preds = %3
  %138 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %139 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %138, i32 0, i32 1
  %140 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %141 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @NPCM7XX_GP_N_OTYP, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @npcm_gpio_clr(%struct.TYPE_5__* %139, i64 %144, i32 %145)
  br label %183

147:                                              ; preds = %3
  %148 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %149 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %148, i32 0, i32 1
  %150 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %151 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @NPCM7XX_GP_N_OTYP, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @npcm_gpio_set(%struct.TYPE_5__* %149, i64 %154, i32 %155)
  br label %183

157:                                              ; preds = %3
  %158 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %159 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %158, i32 0, i32 1
  %160 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %161 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @NPCM7XX_GP_N_DBNC, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @npcm_gpio_set(%struct.TYPE_5__* %159, i64 %164, i32 %165)
  br label %183

167:                                              ; preds = %3
  %168 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %169 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %5, align 8
  %170 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @npcm7xx_set_slew_rate(%struct.npcm7xx_gpio* %168, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %4, align 4
  br label %184

175:                                              ; preds = %3
  %176 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @npcm7xx_set_drive_strength(%struct.npcm7xx_pinctrl* %176, i32 %177, i32 %178)
  store i32 %179, i32* %4, align 4
  br label %184

180:                                              ; preds = %3
  %181 = load i32, i32* @ENOTSUPP, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %4, align 4
  br label %184

183:                                              ; preds = %157, %147, %137, %116, %96, %77, %58, %39
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %183, %180, %175, %167
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @npcm_gpio_clr(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @npcm_gpio_set(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @npcm7xx_set_slew_rate(%struct.npcm7xx_gpio*, i32, i32, i32) #1

declare dso_local i32 @npcm7xx_set_drive_strength(%struct.npcm7xx_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
