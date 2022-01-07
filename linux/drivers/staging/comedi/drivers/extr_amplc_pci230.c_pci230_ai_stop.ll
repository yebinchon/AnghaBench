; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci230_private* }
%struct.pci230_private = type { i32, i64, i32, i64, i32, i32, i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }

@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@PCI230_INT_ADC = common dso_local global i32 0, align 4
@THISCPU = common dso_local global i64 0, align 8
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@PCI230_ADC_IR_MASK = common dso_local global i32 0, align 4
@PCI230_ADC_IM_MASK = common dso_local global i32 0, align 4
@PCI230_ADC_TRIG_NONE = common dso_local global i32 0, align 4
@PCI230_ADC_FIFO_RESET = common dso_local global i32 0, align 4
@PCI230_ADCCON = common dso_local global i64 0, align 8
@OWNER_AICMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ai_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ai_stop(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci230_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  store %struct.pci230_private* %11, %struct.pci230_private** %5, align 8
  %12 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %13 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %12, i32 0, i32 7
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %17 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %20 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %22 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %21, i32 0, i32 7
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %122

28:                                               ; preds = %2
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.comedi_cmd* %32, %struct.comedi_cmd** %7, align 8
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TRIG_TIMER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = call i32 @pci230_cancel_ct(%struct.comedi_device* %39, i32 2)
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TRIG_FOLLOW, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = call i32 @pci230_cancel_ct(%struct.comedi_device* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %52 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %51, i32 0, i32 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load i32, i32* @PCI230_INT_ADC, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %58 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %74, %50
  %62 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %63 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %68 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @THISCPU, align 8
  %71 = icmp ne i64 %69, %70
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i1 [ false, %61 ], [ %71, %66 ]
  br i1 %73, label %74, label %83

74:                                               ; preds = %72
  %75 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %76 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %75, i32 0, i32 4
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %80 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %79, i32 0, i32 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  br label %61

83:                                               ; preds = %72
  %84 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %85 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCI230_INT_SCE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outb(i32 %86, i64 %91)
  %93 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %94 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %93, i32 0, i32 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %98 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PCI230_ADC_IR_MASK, align 4
  %101 = load i32, i32* @PCI230_ADC_IM_MASK, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = load i32, i32* @PCI230_ADC_TRIG_NONE, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %107 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %109 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PCI230_ADC_FIFO_RESET, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %114 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PCI230_ADCCON, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outw(i32 %112, i64 %117)
  %119 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %120 = load i32, i32* @OWNER_AICMD, align 4
  %121 = call i32 @pci230_release_all_resources(%struct.comedi_device* %119, i32 %120)
  br label %122

122:                                              ; preds = %83, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci230_cancel_ct(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pci230_release_all_resources(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
