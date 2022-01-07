; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i32, i64, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@DAC_CONTROL0_REG = common dso_local global i64 0, align 8
@PLX_DMADPR_DESCPCI = common dso_local global i32 0, align 4
@PLX_DMADPR_TCINTR = common dso_local global i32 0, align 4
@ao_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcidas64_private*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.pcidas64_private*, %struct.pcidas64_private** %9, align 8
  store %struct.pcidas64_private* %10, %struct.pcidas64_private** %6, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = call i64 @external_ai_queue_in_use(%struct.comedi_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = call i32 @warn_external_queue(%struct.comedi_device* %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %25 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAC_CONTROL0_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writew(i32 0, i64 %28)
  %30 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %31 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = call i32 @set_dac_select_reg(%struct.comedi_device* %32, %struct.comedi_cmd* %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = call i32 @set_dac_interval_regs(%struct.comedi_device* %35, %struct.comedi_cmd* %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %40 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PLX_DMADPR_DESCPCI, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PLX_DMADPR_TCINTR, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @load_first_dma_descriptor(%struct.comedi_device* %38, i32 0, i32 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = call i32 @set_dac_control1_reg(%struct.comedi_device* %47, %struct.comedi_cmd* %48)
  %50 = load i32, i32* @ao_inttrig, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %23, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @external_ai_queue_in_use(%struct.comedi_device*) #1

declare dso_local i32 @warn_external_queue(%struct.comedi_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @set_dac_select_reg(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @set_dac_interval_regs(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @load_first_dma_descriptor(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @set_dac_control1_reg(%struct.comedi_device*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
