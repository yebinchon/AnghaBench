; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_personalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd_personalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { %struct.ni_board_struct* }
%struct.ni_board_struct = type { i64 }
%struct.comedi_cmd = type { i32 }

@NISTC_RESET_AO_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_BC_SRC_SEL = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_UPDATE_PW = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_TMRDACWR_PW = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_FIFO_ENA = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_DMA_PIO_CTRL = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AO_CFG_END = common dso_local global i32 0, align 4
@NISTC_AO_PERSONAL_NUM_DAC = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @ni_ao_cmd_personalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_cmd_personalize(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.ni_board_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.ni_board_struct*, %struct.ni_board_struct** %8, align 8
  store %struct.ni_board_struct* %9, %struct.ni_board_struct** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = load i32, i32* @NISTC_RESET_AO_CFG_START, align 4
  %12 = load i32, i32* @NISTC_RESET_REG, align 4
  %13 = call i32 @ni_stc_writew(%struct.comedi_device* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @NISTC_AO_PERSONAL_BC_SRC_SEL, align 4
  %15 = load i32, i32* @NISTC_AO_PERSONAL_UPDATE_PW, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NISTC_AO_PERSONAL_TMRDACWR_PW, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ni_board_struct*, %struct.ni_board_struct** %5, align 8
  %20 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NISTC_AO_PERSONAL_FIFO_ENA, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @NISTC_AO_PERSONAL_DMA_PIO_CTRL, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = or i32 %18, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NISTC_AO_PERSONAL_REG, align 4
  %33 = call i32 @ni_stc_writew(%struct.comedi_device* %30, i32 %31, i32 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %35 = load i32, i32* @NISTC_RESET_AO_CFG_END, align 4
  %36 = load i32, i32* @NISTC_RESET_REG, align 4
  %37 = call i32 @ni_stc_writew(%struct.comedi_device* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
