; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_intr_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_intr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@NI_65XX_CLR_EDGE_INT = common dso_local global i32 0, align 4
@NI_65XX_CLR_OVERFLOW_INT = common dso_local global i32 0, align 4
@NI_65XX_CLR_REG = common dso_local global i64 0, align 8
@NI_65XX_CTRL_FALL_EDGE_ENA = common dso_local global i32 0, align 4
@NI_65XX_CTRL_RISE_EDGE_ENA = common dso_local global i32 0, align 4
@NI_65XX_CTRL_INT_ENA = common dso_local global i32 0, align 4
@NI_65XX_CTRL_EDGE_ENA = common dso_local global i32 0, align 4
@NI_65XX_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_65xx_intr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_intr_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load i32, i32* @NI_65XX_CLR_EDGE_INT, align 4
  %6 = load i32, i32* @NI_65XX_CLR_OVERFLOW_INT, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NI_65XX_CLR_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writeb(i32 %7, i64 %12)
  %14 = load i32, i32* @NI_65XX_CTRL_FALL_EDGE_ENA, align 4
  %15 = load i32, i32* @NI_65XX_CTRL_RISE_EDGE_ENA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NI_65XX_CTRL_INT_ENA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NI_65XX_CTRL_EDGE_ENA, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NI_65XX_CTRL_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writeb(i32 %20, i64 %25)
  ret i32 0
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
