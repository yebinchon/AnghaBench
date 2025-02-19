; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.npcm7xx_gpio = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"-- module %d [gpio%d - %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"DIN :%.8x DOUT:%.8x IE  :%.8x OE\09 :%.8x\0A\00", align 1
@NPCM7XX_GP_N_DIN = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_DOUT = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_IEM = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"PU  :%.8x PD  :%.8x DB  :%.8x POL :%.8x\0A\00", align 1
@NPCM7XX_GP_N_PU = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_PD = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_DBNC = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_POL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"ETYP:%.8x EVBE:%.8x EVEN:%.8x EVST:%.8x\0A\00", align 1
@NPCM7XX_GP_N_EVTYP = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_EVBE = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_EVEN = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_EVST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"OTYP:%.8x OSRC:%.8x ODSC:%.8x\0A\00", align 1
@NPCM7XX_GP_N_OTYP = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OSRC = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_ODSC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"OBL0:%.8x OBL1:%.8x OBL2:%.8x OBL3:%.8x\0A\00", align 1
@NPCM7XX_GP_N_OBL0 = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OBL1 = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OBL2 = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OBL3 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"SLCK:%.8x MLCK:%.8x\0A\00", align 1
@NPCM7XX_GP_N_SPLCK = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_MPLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*)* @npcmgpio_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcmgpio_dbg_show(%struct.seq_file* %0, %struct.gpio_chip* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.npcm7xx_gpio*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %4, align 8
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %7 = call %struct.npcm7xx_gpio* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.npcm7xx_gpio* %7, %struct.npcm7xx_gpio** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %10 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %14 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %12, %16
  %18 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %19 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %27 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %25, %29
  %31 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %34 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NPCM7XX_GP_N_DIN, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread32(i64 %37)
  %39 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %40 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NPCM7XX_GP_N_DOUT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @ioread32(i64 %43)
  %45 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %46 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NPCM7XX_GP_N_IEM, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @ioread32(i64 %49)
  %51 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %52 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NPCM7XX_GP_N_OE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @ioread32(i64 %55)
  %57 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %44, i32 %50, i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %60 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NPCM7XX_GP_N_PU, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @ioread32(i64 %63)
  %65 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %66 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NPCM7XX_GP_N_PD, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @ioread32(i64 %69)
  %71 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %72 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NPCM7XX_GP_N_DBNC, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @ioread32(i64 %75)
  %77 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %78 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NPCM7XX_GP_N_POL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @ioread32(i64 %81)
  %83 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %70, i32 %76, i32 %82)
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %86 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NPCM7XX_GP_N_EVTYP, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @ioread32(i64 %89)
  %91 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %92 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NPCM7XX_GP_N_EVBE, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @ioread32(i64 %95)
  %97 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %98 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NPCM7XX_GP_N_EVEN, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @ioread32(i64 %101)
  %103 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %104 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NPCM7XX_GP_N_EVST, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @ioread32(i64 %107)
  %109 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %96, i32 %102, i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %112 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NPCM7XX_GP_N_OTYP, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @ioread32(i64 %115)
  %117 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %118 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NPCM7XX_GP_N_OSRC, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @ioread32(i64 %121)
  %123 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %124 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NPCM7XX_GP_N_ODSC, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @ioread32(i64 %127)
  %129 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %122, i32 %128)
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %132 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @NPCM7XX_GP_N_OBL0, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @ioread32(i64 %135)
  %137 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %138 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NPCM7XX_GP_N_OBL1, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @ioread32(i64 %141)
  %143 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %144 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @NPCM7XX_GP_N_OBL2, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @ioread32(i64 %147)
  %149 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %150 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NPCM7XX_GP_N_OBL3, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @ioread32(i64 %153)
  %155 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %136, i32 %142, i32 %148, i32 %154)
  %156 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %157 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %158 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NPCM7XX_GP_N_SPLCK, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @ioread32(i64 %161)
  %163 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %164 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @NPCM7XX_GP_N_MPLCK, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @ioread32(i64 %167)
  %169 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %162, i32 %168)
  ret void
}

declare dso_local %struct.npcm7xx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, ...) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
