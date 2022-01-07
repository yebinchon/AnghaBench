; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.comedi_subdevice*, i32, %struct.pci1710_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }
%struct.pci1710_private = type { i32, i32, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@PCI171X_STATUS_REG = common dso_local global i64 0, align 8
@PCI171X_STATUS_IRQ = common dso_local global i32 0, align 4
@PCI171X_CTRL_CNT0 = common dso_local global i32 0, align 4
@PCI171X_CTRL_SW = common dso_local global i32 0, align 4
@PCI171X_CTRL_REG = common dso_local global i64 0, align 8
@PCI171X_CLRFIFO_REG = common dso_local global i64 0, align 8
@PCI171X_CLRINT_REG = common dso_local global i64 0, align 8
@PCI171X_MUX_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci1710_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.pci1710_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.comedi_device*
  store %struct.comedi_device* %11, %struct.comedi_device** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 4
  %14 = load %struct.pci1710_private*, %struct.pci1710_private** %13, align 8
  store %struct.pci1710_private* %14, %struct.pci1710_private** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %127

21:                                               ; preds = %2
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 2
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %23, align 8
  store %struct.comedi_subdevice* %24, %struct.comedi_subdevice** %8, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.comedi_cmd* %28, %struct.comedi_cmd** %9, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCI171X_STATUS_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inw(i64 %33)
  %35 = load i32, i32* @PCI171X_STATUS_IRQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %127

40:                                               ; preds = %21
  %41 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %42 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %107

45:                                               ; preds = %40
  %46 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %47 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @PCI171X_CTRL_CNT0, align 4
  %49 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %50 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @PCI171X_CTRL_SW, align 4
  %54 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %55 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %59 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI171X_CTRL_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outw(i32 %60, i64 %65)
  %67 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %68 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %71 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCI171X_CLRFIFO_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb(i32 0, i64 %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCI171X_CLRINT_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 0, i64 %82)
  %84 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %85 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCI171X_MUX_REG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outw(i32 %86, i64 %91)
  %93 = load %struct.pci1710_private*, %struct.pci1710_private** %7, align 8
  %94 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PCI171X_CTRL_REG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @outw(i32 %95, i64 %100)
  %102 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @comedi_8254_pacer_enable(i32 %104, i32 1, i32 2, i32 1)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %3, align 4
  br label %127

107:                                              ; preds = %40
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %117 = call i32 @pci1710_handle_every_sample(%struct.comedi_device* %115, %struct.comedi_subdevice* %116)
  br label %122

118:                                              ; preds = %107
  %119 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %121 = call i32 @pci1710_handle_fifo(%struct.comedi_device* %119, %struct.comedi_subdevice* %120)
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %125 = call i32 @comedi_handle_events(%struct.comedi_device* %123, %struct.comedi_subdevice* %124)
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %122, %45, %38, %19
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @pci1710_handle_every_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci1710_handle_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
