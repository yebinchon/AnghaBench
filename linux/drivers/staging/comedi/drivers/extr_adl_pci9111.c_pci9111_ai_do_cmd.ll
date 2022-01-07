; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_do_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci9111_private_data* }
%struct.pci9111_private_data = type { i32, i32, i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32, i32, i32* }

@PCI9111_AI_TRIG_CTRL_ASCAN = common dso_local global i32 0, align 4
@PCI9111_AI_CHANNEL_REG = common dso_local global i64 0, align 8
@PCI9111_AI_RANGE_STAT_REG = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@PCI9111_AI_TRIG_CTRL_TPST = common dso_local global i32 0, align 4
@irq_on_fifo_half_full = common dso_local global i32 0, align 4
@irq_on_timer_tick = common dso_local global i32 0, align 4
@PCI9111_AI_TRIG_CTRL_ETIS = common dso_local global i32 0, align 4
@PCI9111_AI_TRIG_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9111_ai_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9111_ai_do_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci9111_private_data*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %11, align 8
  store %struct.pci9111_private_data* %12, %struct.pci9111_private_data** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %6, align 8
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_CHAN(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_RANGE(i32 %32)
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @PCI9111_AI_TRIG_CTRL_ASCAN, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %2
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI9111_AI_CHANNEL_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb(i32 %43, i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @PCI9111_AI_RANGE(i32 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCI9111_AI_RANGE_STAT_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %51, i64 %56)
  %58 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %59 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TRIG_TIMER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %42
  %66 = load i32, i32* @PCI9111_AI_TRIG_CTRL_TPST, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @comedi_8254_update_divisors(i32 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @comedi_8254_pacer_enable(i32 %75, i32 1, i32 2, i32 1)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %78 = call i32 @pci9111_fifo_reset(%struct.comedi_device* %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = load i32, i32* @irq_on_fifo_half_full, align 4
  %81 = load i32, i32* @irq_on_timer_tick, align 4
  %82 = call i32 @pci9111_interrupt_source_set(%struct.comedi_device* %79, i32 %80, i32 %81)
  %83 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %84 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @plx9050_interrupt_control(i32 %85, i32 1, i32 1, i32 0, i32 1, i32 1)
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TRIG_TIMER, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %65
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %97 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = sdiv i32 %95, %102
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %106 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %92, %65
  br label %122

108:                                              ; preds = %42
  %109 = load i32, i32* @PCI9111_AI_TRIG_CTRL_ETIS, align 4
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %113 = call i32 @pci9111_fifo_reset(%struct.comedi_device* %112)
  %114 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %115 = load i32, i32* @irq_on_fifo_half_full, align 4
  %116 = load i32, i32* @irq_on_timer_tick, align 4
  %117 = call i32 @pci9111_interrupt_source_set(%struct.comedi_device* %114, i32 %115, i32 %116)
  %118 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %119 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @plx9050_interrupt_control(i32 %120, i32 1, i32 1, i32 0, i32 1, i32 1)
  br label %122

122:                                              ; preds = %108, %107
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PCI9111_AI_TRIG_CTRL_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outb(i32 %123, i64 %128)
  %130 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %131 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %136 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 1, %137
  %139 = mul nsw i32 %134, %138
  %140 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %141 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  ret i32 0
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @PCI9111_AI_RANGE(i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @pci9111_fifo_reset(%struct.comedi_device*) #1

declare dso_local i32 @pci9111_interrupt_source_set(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @plx9050_interrupt_control(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
