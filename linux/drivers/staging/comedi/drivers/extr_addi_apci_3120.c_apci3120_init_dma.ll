; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_init_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci3120_private* }
%struct.apci3120_private = type { i64, i64 }
%struct.apci3120_dmabuf = type { i32, i32 }

@AGCSTS_TC_ENABLE = common dso_local global i32 0, align 4
@AGCSTS_RESET_A2P_FIFO = common dso_local global i32 0, align 4
@AMCC_OP_REG_AGCSTS = common dso_local global i64 0, align 8
@RESET_A2P_FLAGS = common dso_local global i32 0, align 4
@EN_A2P_TRANSFERS = common dso_local global i32 0, align 4
@AMCC_OP_REG_MCSR = common dso_local global i64 0, align 8
@AMCC_OP_REG_AMWAR = common dso_local global i64 0, align 8
@AMCC_OP_REG_AMWTC = common dso_local global i64 0, align 8
@APCI3120_FIFO_ADVANCE_ON_BYTE_2 = common dso_local global i32 0, align 4
@AINT_WRITE_COMPL = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@APCI3120_ADDON_CTRL_AMWEN_ENA = common dso_local global i32 0, align 4
@APCI3120_ADDON_CTRL_A2P_FIFO_ENA = common dso_local global i32 0, align 4
@APCI3120_ADDON_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.apci3120_dmabuf*)* @apci3120_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apci3120_init_dma(%struct.comedi_device* %0, %struct.apci3120_dmabuf* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.apci3120_dmabuf*, align 8
  %5 = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.apci3120_dmabuf* %1, %struct.apci3120_dmabuf** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  store %struct.apci3120_private* %8, %struct.apci3120_private** %5, align 8
  %9 = load i32, i32* @AGCSTS_TC_ENABLE, align 4
  %10 = load i32, i32* @AGCSTS_RESET_A2P_FIFO, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %13 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AMCC_OP_REG_AGCSTS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outl(i32 %11, i64 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = load i32, i32* @AGCSTS_TC_ENABLE, align 4
  %20 = load i32, i32* @AGCSTS_RESET_A2P_FIFO, align 4
  %21 = or i32 %19, %20
  %22 = load i64, i64* @AMCC_OP_REG_AGCSTS, align 8
  %23 = call i32 @apci3120_addon_write(%struct.comedi_device* %18, i32 %21, i64 %22)
  %24 = load i32, i32* @RESET_A2P_FLAGS, align 4
  %25 = load i32, i32* @EN_A2P_TRANSFERS, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %28 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outl(i32 %26, i64 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %4, align 8
  %35 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @AMCC_OP_REG_AMWAR, align 8
  %38 = call i32 @apci3120_addon_write(%struct.comedi_device* %33, i32 %36, i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %4, align 8
  %41 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @AMCC_OP_REG_AMWTC, align 8
  %44 = call i32 @apci3120_addon_write(%struct.comedi_device* %39, i32 %42, i64 %43)
  %45 = load i32, i32* @APCI3120_FIFO_ADVANCE_ON_BYTE_2, align 4
  %46 = load i32, i32* @AINT_WRITE_COMPL, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %49 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outl(i32 %47, i64 %52)
  %54 = load i32, i32* @APCI3120_ADDON_CTRL_AMWEN_ENA, align 4
  %55 = load i32, i32* @APCI3120_ADDON_CTRL_A2P_FIFO_ENA, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %58 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @APCI3120_ADDON_CTRL_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @apci3120_addon_write(%struct.comedi_device*, i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
