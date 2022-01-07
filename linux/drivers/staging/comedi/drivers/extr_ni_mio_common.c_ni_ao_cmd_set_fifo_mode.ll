; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_fifo_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_fifo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32 }

@NISTC_RESET_AO_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_FIFO_MODE_MASK = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_FIFO_MODE_HF = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_FIFO_REXMIT_ENA = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_REG = common dso_local global i32 0, align 4
@NISTC_AO_START_AOFREQ_ENA = common dso_local global i32 0, align 4
@NISTC_AO_START_SEL_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i32 0, align 4
@NISTC_AO_MODE2_FIFO_MODE_HF_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_ao_cmd_set_fifo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_cmd_set_fifo_mode(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  store %struct.ni_private* %6, %struct.ni_private** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = load i32, i32* @NISTC_RESET_AO_CFG_START, align 4
  %9 = load i32, i32* @NISTC_RESET_REG, align 4
  %10 = call i32 @ni_stc_writew(%struct.comedi_device* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @NISTC_AO_MODE2_FIFO_MODE_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %14 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @NISTC_AO_MODE2_FIFO_MODE_HF, align 4
  %18 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @NISTC_AO_MODE2_FIFO_REXMIT_ENA, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %25 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NISTC_AO_MODE2_REG, align 4
  %33 = call i32 @ni_stc_writew(%struct.comedi_device* %28, i32 %31, i32 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = load i32, i32* @NISTC_AO_START_AOFREQ_ENA, align 4
  %36 = load i32, i32* @NISTC_AO_START_SEL_REG, align 4
  %37 = call i32 @ni_stc_writew(%struct.comedi_device* %34, i32 %35, i32 %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = load i32, i32* @NISTC_RESET_AO_CFG_END, align 4
  %40 = load i32, i32* @NISTC_RESET_REG, align 4
  %41 = call i32 @ni_stc_writew(%struct.comedi_device* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
