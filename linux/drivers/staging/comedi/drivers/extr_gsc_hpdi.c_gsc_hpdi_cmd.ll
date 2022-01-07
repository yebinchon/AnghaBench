; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.hpdi_private* }
%struct.hpdi_private = type { i32, i32, i64, i64 }
%struct.comedi_subdevice = type { i64, %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RX_FIFO_RESET_BIT = common dso_local global i32 0, align 4
@BOARD_CONTROL_REG = common dso_local global i64 0, align 8
@PLX_REG_DMASIZ0 = common dso_local global i64 0, align 8
@PLX_REG_DMAPADR0 = common dso_local global i64 0, align 8
@PLX_REG_DMALADR0 = common dso_local global i64 0, align 8
@PLX_DMADPR_DESCPCI = common dso_local global i32 0, align 4
@PLX_DMADPR_TCINTR = common dso_local global i32 0, align 4
@PLX_DMADPR_XFERL2P = common dso_local global i32 0, align 4
@PLX_REG_DMADPR0 = common dso_local global i64 0, align 8
@PLX_DMACSR_ENABLE = common dso_local global i32 0, align 4
@PLX_DMACSR_START = common dso_local global i32 0, align 4
@PLX_DMACSR_CLEARINTR = common dso_local global i32 0, align 4
@PLX_REG_DMACSR0 = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@RX_UNDERRUN_BIT = common dso_local global i32 0, align 4
@RX_OVERRUN_BIT = common dso_local global i32 0, align 4
@BOARD_STATUS_REG = common dso_local global i64 0, align 8
@RX_FULL_INTR = common dso_local global i32 0, align 4
@INTERRUPT_CONTROL_REG = common dso_local global i64 0, align 8
@RX_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @gsc_hpdi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_hpdi_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.hpdi_private*, align 8
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 2
  %13 = load %struct.hpdi_private*, %struct.hpdi_private** %12, align 8
  store %struct.hpdi_private* %13, %struct.hpdi_private** %6, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 1
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %7, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 0
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %8, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %129

26:                                               ; preds = %2
  %27 = load i32, i32* @RX_FIFO_RESET_BIT, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BOARD_CONTROL_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = call i32 @gsc_hpdi_abort_dma(%struct.comedi_device* %34, i32 0)
  %36 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %37 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %39 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PLX_REG_DMASIZ0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 0, i64 %42)
  %44 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %45 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PLX_REG_DMAPADR0, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 0, i64 %48)
  %50 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %51 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PLX_REG_DMALADR0, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 0, i64 %54)
  %56 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %57 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PLX_DMADPR_DESCPCI, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PLX_DMADPR_TCINTR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PLX_DMADPR_XFERL2P, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %67 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PLX_REG_DMADPR0, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 1
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %77 = load i32, i32* @PLX_DMACSR_START, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PLX_DMACSR_CLEARINTR, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %82 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PLX_REG_DMACSR0, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writeb(i32 %80, i64 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 1
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TRIG_COUNT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %26
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %101 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %105

102:                                              ; preds = %26
  %103 = load %struct.hpdi_private*, %struct.hpdi_private** %6, align 8
  %104 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32, i32* @RX_UNDERRUN_BIT, align 4
  %107 = load i32, i32* @RX_OVERRUN_BIT, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BOARD_STATUS_REG, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  %115 = load i32, i32* @RX_FULL_INTR, align 4
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @INTERRUPT_CONTROL_REG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load i32, i32* @RX_ENABLE_BIT, align 4
  %123 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @BOARD_CONTROL_REG, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %105, %23
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gsc_hpdi_abort_dma(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
