; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.npcm7xx_gpio = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"setirqtype: %u.%u = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"edge.rising\0A\00", align 1
@NPCM7XX_GP_N_EVBE = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_POL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"edge.falling\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"edge.both\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"level.low\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"level.high\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"invalid irq type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NPCM7XX_GP_N_EVTYP = common dso_local global i64 0, align 8
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @npcmgpio_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcmgpio_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.npcm7xx_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  %10 = call %struct.npcm7xx_gpio* @gpiochip_get_data(i32 %9)
  store %struct.npcm7xx_gpio* %10, %struct.npcm7xx_gpio** %6, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %125 [
    i32 130, label %27
    i32 131, label %52
    i32 132, label %77
    i32 128, label %93
    i32 129, label %109
  ]

27:                                               ; preds = %2
  %28 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %35 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %34, i32 0, i32 1
  %36 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %37 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NPCM7XX_GP_N_EVBE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @npcm_gpio_clr(i32* %35, i64 %40, i32 %41)
  %43 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %43, i32 0, i32 1
  %45 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %46 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NPCM7XX_GP_N_POL, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @npcm_gpio_clr(i32* %44, i64 %49, i32 %50)
  br label %134

52:                                               ; preds = %2
  %53 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %54 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %59, i32 0, i32 1
  %61 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %62 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NPCM7XX_GP_N_EVBE, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @npcm_gpio_clr(i32* %60, i64 %65, i32 %66)
  %68 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %69 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %68, i32 0, i32 1
  %70 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %71 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NPCM7XX_GP_N_POL, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @npcm_gpio_set(i32* %69, i64 %74, i32 %75)
  br label %134

77:                                               ; preds = %2
  %78 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %79 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %85 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %84, i32 0, i32 1
  %86 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %87 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NPCM7XX_GP_N_EVBE, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @npcm_gpio_set(i32* %85, i64 %90, i32 %91)
  br label %134

93:                                               ; preds = %2
  %94 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %95 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @dev_dbg(i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %101 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %100, i32 0, i32 1
  %102 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %103 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NPCM7XX_GP_N_POL, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @npcm_gpio_set(i32* %101, i64 %106, i32 %107)
  br label %134

109:                                              ; preds = %2
  %110 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %111 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %117 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %116, i32 0, i32 1
  %118 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %119 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NPCM7XX_GP_N_POL, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @npcm_gpio_clr(i32* %117, i64 %122, i32 %123)
  br label %134

125:                                              ; preds = %2
  %126 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %127 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @dev_dbg(i32 %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %170

134:                                              ; preds = %109, %93, %77, %52, %27
  %135 = load i32, i32* %5, align 4
  %136 = and i32 %135, 129
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %140 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %139, i32 0, i32 1
  %141 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %142 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NPCM7XX_GP_N_EVTYP, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @npcm_gpio_clr(i32* %140, i64 %145, i32 %146)
  %148 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %149 = load i32, i32* @handle_level_irq, align 4
  %150 = call i32 @irq_set_handler_locked(%struct.irq_data* %148, i32 %149)
  br label %169

151:                                              ; preds = %134
  %152 = load i32, i32* %5, align 4
  %153 = and i32 %152, 135
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %157 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %156, i32 0, i32 1
  %158 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %159 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NPCM7XX_GP_N_EVTYP, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @npcm_gpio_set(i32* %157, i64 %162, i32 %163)
  %165 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %166 = load i32, i32* @handle_edge_irq, align 4
  %167 = call i32 @irq_set_handler_locked(%struct.irq_data* %165, i32 %166)
  br label %168

168:                                              ; preds = %155, %151
  br label %169

169:                                              ; preds = %168, %138
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %125
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.npcm7xx_gpio* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @npcm_gpio_clr(i32*, i64, i32) #1

declare dso_local i32 @npcm_gpio_set(i32*, i64, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
