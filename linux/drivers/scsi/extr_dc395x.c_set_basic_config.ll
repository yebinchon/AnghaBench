; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_set_basic_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_set_basic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRM_S1040_SCSI_TIMEOUT = common dso_local global i32 0, align 4
@HCC_PARITY = common dso_local global i32 0, align 4
@PHASELATCH = common dso_local global i32 0, align 4
@INITIATOR = common dso_local global i32 0, align 4
@BLOCKRST = common dso_local global i32 0, align 4
@PARITYCHECK = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONFIG0 = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONFIG1 = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_HOSTID = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_OFFSET = common dso_local global i32 0, align 4
@TRM_S1040_GEN_CONTROL = common dso_local global i32 0, align 4
@TRM_S1040_DMA_CONFIG = common dso_local global i32 0, align 4
@DMA_FIFO_CTRL = common dso_local global i32 0, align 4
@DMA_FIFO_HALF_HALF = common dso_local global i32 0, align 4
@DMA_ENHANCE = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_INTSTATUS = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_INTEN = common dso_local global i32 0, align 4
@TRM_S1040_DMA_INTEN = common dso_local global i32 0, align 4
@EN_SCSIINTR = common dso_local global i32 0, align 4
@EN_DMAXFERERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @set_basic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_basic_config(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %5 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %6 = load i32, i32* @TRM_S1040_SCSI_TIMEOUT, align 4
  %7 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %5, i32 %6, i32 %9)
  %11 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %12 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HCC_PARITY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @PHASELATCH, align 4
  %19 = load i32, i32* @INITIATOR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @BLOCKRST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PARITYCHECK, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @PHASELATCH, align 4
  %27 = load i32, i32* @INITIATOR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BLOCKRST, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %17
  %32 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %33 = load i32, i32* @TRM_S1040_SCSI_CONFIG0, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %32, i32 %33, i32 %34)
  %36 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %37 = load i32, i32* @TRM_S1040_SCSI_CONFIG1, align 4
  %38 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %36, i32 %37, i32 3)
  %39 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %40 = load i32, i32* @TRM_S1040_SCSI_HOSTID, align 4
  %41 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %42 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %39, i32 %40, i32 %45)
  %47 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %48 = load i32, i32* @TRM_S1040_SCSI_OFFSET, align 4
  %49 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %47, i32 %48, i32 0)
  %50 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %51 = load i32, i32* @TRM_S1040_GEN_CONTROL, align 4
  %52 = call i32 @DC395x_read16(%struct.AdapterCtlBlk* %50, i32 %51)
  %53 = and i32 %52, 127
  store i32 %53, i32* %4, align 4
  %54 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %55 = load i32, i32* @TRM_S1040_GEN_CONTROL, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %54, i32 %55, i32 %56)
  %58 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %59 = load i32, i32* @TRM_S1040_DMA_CONFIG, align 4
  %60 = call i32 @DC395x_read16(%struct.AdapterCtlBlk* %58, i32 %59)
  %61 = load i32, i32* @DMA_FIFO_CTRL, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @DMA_FIFO_HALF_HALF, align 4
  %65 = load i32, i32* @DMA_ENHANCE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %70 = load i32, i32* @TRM_S1040_DMA_CONFIG, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %69, i32 %70, i32 %71)
  %73 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %74 = load i32, i32* @TRM_S1040_SCSI_INTSTATUS, align 4
  %75 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %73, i32 %74)
  %76 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %77 = load i32, i32* @TRM_S1040_SCSI_INTEN, align 4
  %78 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %76, i32 %77, i32 127)
  %79 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %80 = load i32, i32* @TRM_S1040_DMA_INTEN, align 4
  %81 = load i32, i32* @EN_SCSIINTR, align 4
  %82 = load i32, i32* @EN_DMAXFERERROR, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %79, i32 %80, i32 %83)
  ret void
}

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_read16(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
