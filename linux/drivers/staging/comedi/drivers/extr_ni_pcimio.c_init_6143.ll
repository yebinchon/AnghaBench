; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_init_6143.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_init_6143.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32, i64 }
%struct.ni_board_struct = type { i32 }

@NISTC_INT_CTRL_REG = common dso_local global i32 0, align 4
@NI6143_MAGIC_REG = common dso_local global i32 0, align 4
@NI6143_PIPELINE_DELAY_REG = common dso_local global i32 0, align 4
@NI6143_EOC_SET_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_FLAG_REG = common dso_local global i32 0, align 4
@NI6143_CALIB_CHAN_RELAY_OFF = common dso_local global i32 0, align 4
@NI6143_CALIB_CHAN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @init_6143 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_6143(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_board_struct*, align 8
  %4 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.ni_board_struct*, %struct.ni_board_struct** %6, align 8
  store %struct.ni_board_struct* %7, %struct.ni_board_struct** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = load i32, i32* @NISTC_INT_CTRL_REG, align 4
  %13 = call i32 @ni_stc_writew(%struct.comedi_device* %11, i32 0, i32 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = load i32, i32* @NI6143_MAGIC_REG, align 4
  %16 = call i32 @ni_writeb(%struct.comedi_device* %14, i32 0, i32 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = load i32, i32* @NI6143_PIPELINE_DELAY_REG, align 4
  %19 = call i32 @ni_writeb(%struct.comedi_device* %17, i32 128, i32 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = load i32, i32* @NI6143_EOC_SET_REG, align 4
  %22 = call i32 @ni_writeb(%struct.comedi_device* %20, i32 0, i32 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = load %struct.ni_board_struct*, %struct.ni_board_struct** %3, align 8
  %25 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  %28 = load i32, i32* @NI6143_AI_FIFO_FLAG_REG, align 4
  %29 = call i32 @ni_writel(%struct.comedi_device* %23, i32 %27, i32 %28)
  %30 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %31 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %34 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NI6143_CALIB_CHAN_RELAY_OFF, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NI6143_CALIB_CHAN_REG, align 4
  %39 = call i32 @ni_writew(%struct.comedi_device* %32, i32 %37, i32 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = load %struct.ni_private*, %struct.ni_private** %4, align 8
  %42 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NI6143_CALIB_CHAN_REG, align 4
  %45 = call i32 @ni_writew(%struct.comedi_device* %40, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
