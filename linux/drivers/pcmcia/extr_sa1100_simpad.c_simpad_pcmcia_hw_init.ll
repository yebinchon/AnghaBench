; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_simpad.c_simpad_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_simpad.c_simpad_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@VCC_3V_EN = common dso_local global i32 0, align 4
@VCC_5V_EN = common dso_local global i32 0, align 4
@EN0 = common dso_local global i32 0, align 4
@EN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cf-detect\00", align 1
@SOC_STAT_CD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"cf-ready\00", align 1
@SOC_STAT_RDY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @simpad_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simpad_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %3 = load i32, i32* @VCC_3V_EN, align 4
  %4 = load i32, i32* @VCC_5V_EN, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @EN0, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @EN1, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @simpad_clear_cs3_bit(i32 %9)
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %12 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @SOC_STAT_CD, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %18 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @SOC_STAT_RDY, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %24 = call i32 @soc_pcmcia_request_gpiods(%struct.soc_pcmcia_socket* %23)
  ret i32 %24
}

declare dso_local i32 @simpad_clear_cs3_bit(i32) #1

declare dso_local i32 @soc_pcmcia_request_gpiods(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
