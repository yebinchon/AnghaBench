; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.npcm7xx_pinctrl = type { i32, %struct.npcm7xx_gpio* }
%struct.npcm7xx_gpio = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NPCM7XX_GPIO_PER_BANK = common dso_local global i32 0, align 4
@NPCM7XX_GP_N_PU = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_PD = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_IEM = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OE = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OTYP = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_DBNC = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @npcm7xx_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.npcm7xx_pinctrl*, align 8
  %10 = alloca %struct.npcm7xx_gpio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %22 = call %struct.npcm7xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %21)
  store %struct.npcm7xx_pinctrl* %22, %struct.npcm7xx_pinctrl** %9, align 8
  %23 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %9, align 8
  %24 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %23, i32 0, i32 1
  %25 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NPCM7XX_GPIO_PER_BANK, align 4
  %28 = udiv i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %25, i64 %29
  store %struct.npcm7xx_gpio* %30, %struct.npcm7xx_gpio** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %33 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = urem i32 %31, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @BIT(i32 %37)
  store i64 %38, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %199 [
    i32 137, label %40
    i32 135, label %40
    i32 136, label %40
    i32 129, label %97
    i32 130, label %97
    i32 133, label %140
    i32 134, label %152
    i32 131, label %162
    i32 132, label %172
    i32 128, label %184
  ]

40:                                               ; preds = %3, %3, %3
  %41 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %42 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NPCM7XX_GP_N_PU, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i64 @ioread32(i64 %45)
  %47 = load i64, i64* %12, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %15, align 8
  %49 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %50 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NPCM7XX_GP_N_PD, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @ioread32(i64 %53)
  %55 = load i64, i64* %12, align 8
  %56 = and i64 %54, %55
  store i64 %56, i64* %16, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 137
  br i1 %58, label %59, label %69

59:                                               ; preds = %40
  %60 = load i64, i64* %15, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %17, align 4
  br label %96

69:                                               ; preds = %40
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 135
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* %16, align 8
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %17, align 4
  br label %95

82:                                               ; preds = %69
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 136
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i64, i64* %15, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %91, %82
  br label %95

95:                                               ; preds = %94, %79
  br label %96

96:                                               ; preds = %95, %66
  br label %202

97:                                               ; preds = %3, %3
  %98 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %99 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NPCM7XX_GP_N_IEM, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i64 @ioread32(i64 %102)
  %104 = load i64, i64* %12, align 8
  %105 = and i64 %103, %104
  store i64 %105, i64* %13, align 8
  %106 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %107 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NPCM7XX_GP_N_OE, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i64 @ioread32(i64 %110)
  %112 = load i64, i64* %12, align 8
  %113 = and i64 %111, %112
  store i64 %113, i64* %14, align 8
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 130
  br i1 %115, label %116, label %126

116:                                              ; preds = %97
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i64, i64* %14, align 8
  %121 = icmp ne i64 %120, 0
  %122 = xor i1 %121, true
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i1 [ false, %116 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %17, align 4
  br label %139

126:                                              ; preds = %97
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 129
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i64, i64* %13, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %14, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i1 [ false, %129 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %135, %126
  br label %139

139:                                              ; preds = %138, %123
  br label %202

140:                                              ; preds = %3
  %141 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %142 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NPCM7XX_GP_N_OTYP, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i64 @ioread32(i64 %145)
  %147 = load i64, i64* %12, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %17, align 4
  br label %202

152:                                              ; preds = %3
  %153 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %154 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NPCM7XX_GP_N_OTYP, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i64 @ioread32(i64 %157)
  %159 = load i64, i64* %12, align 8
  %160 = and i64 %158, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %17, align 4
  br label %202

162:                                              ; preds = %3
  %163 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %164 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @NPCM7XX_GP_N_DBNC, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i64 @ioread32(i64 %167)
  %169 = load i64, i64* %12, align 8
  %170 = and i64 %168, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %17, align 4
  br label %202

172:                                              ; preds = %3
  %173 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @npcm7xx_get_drive_strength(%struct.pinctrl_dev* %173, i32 %174)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %17, align 4
  %181 = call i64 @pinconf_to_config_packed(i32 %179, i32 %180)
  %182 = load i64*, i64** %7, align 8
  store i64 %181, i64* %182, align 8
  br label %183

183:                                              ; preds = %178, %172
  br label %202

184:                                              ; preds = %3
  %185 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %186 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %9, align 8
  %187 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @npcm7xx_get_slew_rate(%struct.npcm7xx_gpio* %185, i32 %188, i32 %189)
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %17, align 4
  %196 = call i64 @pinconf_to_config_packed(i32 %194, i32 %195)
  %197 = load i64*, i64** %7, align 8
  store i64 %196, i64* %197, align 8
  br label %198

198:                                              ; preds = %193, %184
  br label %202

199:                                              ; preds = %3
  %200 = load i32, i32* @ENOTSUPP, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %209

202:                                              ; preds = %198, %183, %162, %152, %140, %139, %96
  %203 = load i32, i32* %17, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %4, align 4
  br label %209

208:                                              ; preds = %202
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %208, %205, %199
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local %struct.npcm7xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @npcm7xx_get_drive_strength(%struct.pinctrl_dev*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

declare dso_local i32 @npcm7xx_get_slew_rate(%struct.npcm7xx_gpio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
