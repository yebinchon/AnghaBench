; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.pci230_private* }
%struct.comedi_subdevice = type { i32 }
%struct.pci230_private = type { i8, i32, i32, i32 }

@PCI230_INT_STAT = common dso_local global i64 0, align 8
@PCI230_INT_DISABLE = common dso_local global i8 0, align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@THISCPU = common dso_local global i32 0, align 4
@PCI230_INT_ZCLK_CT1 = common dso_local global i8 0, align 1
@PCI230P2_INT_DAC = common dso_local global i8 0, align 1
@PCI230_INT_ADC = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci230_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca %struct.pci230_private*, align 8
  %11 = alloca %struct.comedi_subdevice*, align 8
  %12 = alloca %struct.comedi_subdevice*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 3
  %18 = load %struct.pci230_private*, %struct.pci230_private** %17, align 8
  store %struct.pci230_private* %18, %struct.pci230_private** %10, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 2
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %20, align 8
  store %struct.comedi_subdevice* %21, %struct.comedi_subdevice** %11, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 1
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %23, align 8
  store %struct.comedi_subdevice* %24, %struct.comedi_subdevice** %12, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI230_INT_STAT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call zeroext i8 @inb(i64 %29)
  store i8 %30, i8* %6, align 1
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @PCI230_INT_DISABLE, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %148

38:                                               ; preds = %2
  %39 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %40 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %39, i32 0, i32 2
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %44 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 4
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %7, align 1
  %51 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %52 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %8, align 1
  %60 = load i8, i8* %8, align 1
  %61 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI230_INT_SCE, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i8 zeroext %60, i64 %65)
  %67 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %68 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* @THISCPU, align 4
  %70 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %71 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %73 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %72, i32 0, i32 2
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i8, i8* %7, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @PCI230_INT_ZCLK_CT1, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %38
  %83 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %85 = call i32 @pci230_handle_ao_nofifo(%struct.comedi_device* %83, %struct.comedi_subdevice* %84)
  br label %86

86:                                               ; preds = %82, %38
  %87 = load i8, i8* %7, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @PCI230P2_INT_DAC, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %96 = call i32 @pci230_handle_ao_fifo(%struct.comedi_device* %94, %struct.comedi_subdevice* %95)
  br label %97

97:                                               ; preds = %93, %86
  %98 = load i8, i8* %7, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* @PCI230_INT_ADC, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %107 = call i32 @pci230_handle_ai(%struct.comedi_device* %105, %struct.comedi_subdevice* %106)
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %110 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %109, i32 0, i32 2
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %114 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %113, i32 0, i32 0
  %115 = load i8, i8* %114, align 4
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* %8, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %108
  %121 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %122 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %121, i32 0, i32 0
  %123 = load i8, i8* %122, align 4
  %124 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PCI230_INT_SCE, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outb(i8 zeroext %123, i64 %128)
  br label %130

130:                                              ; preds = %120, %108
  %131 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %132 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  %134 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %133, i32 0, i32 2
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %138 = icmp ne %struct.comedi_subdevice* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %141 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %142 = call i32 @comedi_handle_events(%struct.comedi_device* %140, %struct.comedi_subdevice* %141)
  br label %143

143:                                              ; preds = %139, %130
  %144 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %146 = call i32 @comedi_handle_events(%struct.comedi_device* %144, %struct.comedi_subdevice* %145)
  %147 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %143, %36
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci230_handle_ao_nofifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci230_handle_ao_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci230_handle_ai(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
