; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci230_private* }
%struct.pci230_private = type { i32, i32, i16, i32, i32, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }

@PCI230P2_DAC_TRIG_Z2CT1 = common dso_local global i16 0, align 2
@CR_INVERT = common dso_local global i32 0, align 4
@PCI230P2_DAC_TRIG_EXTP = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_EXTN = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_SW = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_NONE = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_MASK = common dso_local global i16 0, align 2
@PCI230_DACCON = common dso_local global i64 0, align 8
@PCI230_INT_ZCLK_CT1 = common dso_local global i32 0, align 4
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@GAT_VCC = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@pci230_ao_inttrig_scan_begin = common dso_local global i32 0, align 4
@PCI230P2_INT_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ao_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ao_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci230_private*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pci230_private*, %struct.pci230_private** %12, align 8
  store %struct.pci230_private* %13, %struct.pci230_private** %5, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %6, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %7, align 8
  %19 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %20 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %22 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %81

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %28 = call i32 @pci230_handle_ao_fifo(%struct.comedi_device* %26, %struct.comedi_subdevice* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = call i32 @comedi_handle_events(%struct.comedi_device* %29, %struct.comedi_subdevice* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %154

35:                                               ; preds = %25
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %55 [
    i32 128, label %39
    i32 130, label %41
    i32 129, label %53
  ]

39:                                               ; preds = %35
  %40 = load i16, i16* @PCI230P2_DAC_TRIG_Z2CT1, align 2
  store i16 %40, i16* %9, align 2
  br label %57

41:                                               ; preds = %35
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CR_INVERT, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i16, i16* @PCI230P2_DAC_TRIG_EXTP, align 2
  store i16 %49, i16* %9, align 2
  br label %52

50:                                               ; preds = %41
  %51 = load i16, i16* @PCI230P2_DAC_TRIG_EXTN, align 2
  store i16 %51, i16* %9, align 2
  br label %52

52:                                               ; preds = %50, %48
  br label %57

53:                                               ; preds = %35
  %54 = load i16, i16* @PCI230P2_DAC_TRIG_SW, align 2
  store i16 %54, i16* %9, align 2
  br label %57

55:                                               ; preds = %35
  %56 = load i16, i16* @PCI230P2_DAC_TRIG_NONE, align 2
  store i16 %56, i16* %9, align 2
  br label %57

57:                                               ; preds = %55, %53, %52, %39
  %58 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %59 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %58, i32 0, i32 2
  %60 = load i16, i16* %59, align 8
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @PCI230P2_DAC_TRIG_MASK, align 2
  %63 = zext i16 %62 to i32
  %64 = xor i32 %63, -1
  %65 = and i32 %61, %64
  %66 = load i16, i16* %9, align 2
  %67 = zext i16 %66 to i32
  %68 = or i32 %65, %67
  %69 = trunc i32 %68 to i16
  %70 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %71 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %70, i32 0, i32 2
  store i16 %69, i16* %71, align 8
  %72 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %73 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %72, i32 0, i32 2
  %74 = load i16, i16* %73, align 8
  %75 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %76 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI230_DACCON, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outw(i16 zeroext %74, i64 %79)
  br label %81

81:                                               ; preds = %57, %2
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %126 [
    i32 128, label %85
    i32 129, label %122
  ]

85:                                               ; preds = %81
  %86 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %87 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %92 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %91, i32 0, i32 3
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load i32, i32* @PCI230_INT_ZCLK_CT1, align 4
  %96 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %97 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %101 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PCI230_INT_SCE, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outb(i32 %102, i64 %107)
  %109 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %110 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %109, i32 0, i32 3
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %90, %85
  %114 = load i32, i32* @GAT_VCC, align 4
  %115 = call i32 @pci230_gat_config(i32 1, i32 %114)
  %116 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outb(i32 %115, i64 %120)
  br label %126

122:                                              ; preds = %81
  %123 = load i32, i32* @pci230_ao_inttrig_scan_begin, align 4
  %124 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %125 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %81, %122, %113
  %127 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %128 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %129, 2
  br i1 %130, label %131, label %154

131:                                              ; preds = %126
  %132 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %133 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %132, i32 0, i32 3
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @spin_lock_irqsave(i32* %133, i64 %134)
  %136 = load i32, i32* @PCI230P2_INT_DAC, align 4
  %137 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %138 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %142 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PCI230_INT_SCE, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outb(i32 %143, i64 %148)
  %150 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %151 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %150, i32 0, i32 3
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  br label %154

154:                                              ; preds = %34, %131, %126
  ret void
}

declare dso_local i32 @pci230_handle_ao_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci230_gat_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
