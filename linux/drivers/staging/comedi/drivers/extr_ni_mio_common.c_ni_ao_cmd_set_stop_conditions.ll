; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_stop_conditions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_set_stop_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32 }
%struct.comedi_cmd = type { i32 }

@NISTC_RESET_AO_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_AO_MODE3_STOP_ON_OVERRUN_ERR = common dso_local global i32 0, align 4
@NISTC_AO_MODE3_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @ni_ao_cmd_set_stop_conditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_cmd_set_stop_conditions(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  store %struct.ni_private* %8, %struct.ni_private** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = load i32, i32* @NISTC_RESET_AO_CFG_START, align 4
  %11 = load i32, i32* @NISTC_RESET_REG, align 4
  %12 = call i32 @ni_stc_writew(%struct.comedi_device* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @NISTC_AO_MODE3_STOP_ON_OVERRUN_ERR, align 4
  %14 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %15 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %20 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NISTC_AO_MODE3_REG, align 4
  %23 = call i32 @ni_stc_writew(%struct.comedi_device* %18, i32 %21, i32 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = load i32, i32* @NISTC_RESET_AO_CFG_END, align 4
  %26 = load i32, i32* @NISTC_RESET_REG, align 4
  %27 = call i32 @ni_stc_writew(%struct.comedi_device* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
