; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci230_private* }
%struct.pci230_private = type { i32, i32, i8, i64, i32, i64, i32, i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@TRIG_TIMER = common dso_local global i64 0, align 8
@PCI230_INT_ZCLK_CT1 = common dso_local global i8 0, align 1
@PCI230P2_INT_DAC = common dso_local global i8 0, align 1
@THISCPU = common dso_local global i64 0, align 8
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@PCI230_DAC_OR_MASK = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_RESET = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_UNDERRUN_CLEAR = common dso_local global i32 0, align 4
@PCI230_DACCON = common dso_local global i64 0, align 8
@OWNER_AOCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ao_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ao_stop(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci230_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.pci230_private*, %struct.pci230_private** %11, align 8
  store %struct.pci230_private* %12, %struct.pci230_private** %5, align 8
  %13 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %14 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %13, i32 0, i32 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %18 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %21 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %23 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %22, i32 0, i32 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %128

29:                                               ; preds = %2
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.comedi_cmd* %33, %struct.comedi_cmd** %9, align 8
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TRIG_TIMER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = call i32 @pci230_cancel_ct(%struct.comedi_device* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %44 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i8, i8* @PCI230_INT_ZCLK_CT1, align 1
  store i8 %48, i8* %7, align 1
  br label %51

49:                                               ; preds = %42
  %50 = load i8, i8* @PCI230P2_INT_DAC, align 1
  store i8 %50, i8* %7, align 1
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %53 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %52, i32 0, i32 6
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = xor i32 %57, -1
  %59 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %60 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %59, i32 0, i32 2
  %61 = load i8, i8* %60, align 8
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, %58
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %60, align 8
  br label %65

65:                                               ; preds = %78, %51
  %66 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %67 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %72 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @THISCPU, align 8
  %75 = icmp ne i64 %73, %74
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i1 [ false, %65 ], [ %75, %70 ]
  br i1 %77, label %78, label %87

78:                                               ; preds = %76
  %79 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %80 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %79, i32 0, i32 6
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %84 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %83, i32 0, i32 6
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  br label %65

87:                                               ; preds = %76
  %88 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %89 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %88, i32 0, i32 2
  %90 = load i8, i8* %89, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PCI230_INT_SCE, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i8 zeroext %90, i64 %95)
  %97 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %98 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %97, i32 0, i32 6
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %102 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %103, 2
  br i1 %104, label %105, label %124

105:                                              ; preds = %87
  %106 = load i32, i32* @PCI230_DAC_OR_MASK, align 4
  %107 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %108 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %112 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PCI230P2_DAC_FIFO_RESET, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @PCI230P2_DAC_FIFO_UNDERRUN_CLEAR, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %119 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PCI230_DACCON, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outw(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %105, %87
  %125 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %126 = load i32, i32* @OWNER_AOCMD, align 4
  %127 = call i32 @pci230_release_all_resources(%struct.comedi_device* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci230_cancel_ct(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pci230_release_all_resources(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
