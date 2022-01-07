; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, i32, i32, %struct.comedi_subdevice*, %struct.pci9111_private_data* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.pci9111_private_data = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@PLX9052_INTCSR = common dso_local global i64 0, align 8
@PLX9052_INTCSR_PCIENAB = common dso_local global i8 0, align 1
@PCI9111_LI1_ACTIVE = common dso_local global i8 0, align 1
@PCI9111_LI2_ACTIVE = common dso_local global i8 0, align 1
@PCI9111_AI_RANGE_STAT_REG = common dso_local global i64 0, align 8
@PCI9111_AI_STAT_FF_FF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fifo overflow\0A\00", align 1
@PCI9111_INT_CLR_REG = common dso_local global i64 0, align 8
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCI9111_AI_STAT_FF_HF = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci9111_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9111_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.pci9111_private_data*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %6, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 5
  %18 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %17, align 8
  store %struct.pci9111_private_data* %18, %struct.pci9111_private_data** %7, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %20, align 8
  store %struct.comedi_subdevice* %21, %struct.comedi_subdevice** %8, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %165

28:                                               ; preds = %2
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  %31 = load %struct.comedi_async*, %struct.comedi_async** %30, align 8
  store %struct.comedi_async* %31, %struct.comedi_async** %9, align 8
  %32 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %33 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %32, i32 0, i32 2
  store %struct.comedi_cmd* %33, %struct.comedi_cmd** %10, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %7, align 8
  %39 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PLX9052_INTCSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i8* @inb(i64 %42)
  %44 = ptrtoint i8* %43 to i8
  store i8 %44, i8* %13, align 1
  %45 = load i8, i8* %13, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @PLX9052_INTCSR_PCIENAB, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %28
  %52 = load i8, i8* %13, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @PCI9111_LI1_ACTIVE, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = load i8, i8* @PCI9111_LI1_ACTIVE, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %51
  %61 = load i8, i8* %13, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @PCI9111_LI2_ACTIVE, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = load i8, i8* @PCI9111_LI2_ACTIVE, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %60, %28
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* @IRQ_NONE, align 4
  store i32 %74, i32* %3, align 4
  br label %165

75:                                               ; preds = %60, %51
  %76 = load i8, i8* %13, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @PCI9111_LI1_ACTIVE, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = load i8, i8* @PCI9111_LI1_ACTIVE, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %130

84:                                               ; preds = %75
  %85 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PCI9111_AI_RANGE_STAT_REG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i8* @inb(i64 %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @PCI9111_AI_STAT_FF_FF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %84
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PCI9111_INT_CLR_REG, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outb(i32 0, i64 %109)
  %111 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %112 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %113 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %118 = call i32 @comedi_handle_events(%struct.comedi_device* %116, %struct.comedi_subdevice* %117)
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %165

120:                                              ; preds = %84
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @PCI9111_AI_STAT_FF_HF, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %128 = call i32 @pci9111_handle_fifo_half_full(%struct.comedi_device* %126, %struct.comedi_subdevice* %127)
  br label %129

129:                                              ; preds = %125, %120
  br label %130

130:                                              ; preds = %129, %75
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TRIG_COUNT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %130
  %137 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %138 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load i32, i32* @COMEDI_CB_EOA, align 4
  %146 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %147 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %136, %130
  %151 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %152 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PCI9111_INT_CLR_REG, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @outb(i32 0, i64 %155)
  %157 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %157, i32 0, i32 0
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %162 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %163 = call i32 @comedi_handle_events(%struct.comedi_device* %161, %struct.comedi_subdevice* %162)
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %150, %96, %69, %26
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci9111_handle_fifo_half_full(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
