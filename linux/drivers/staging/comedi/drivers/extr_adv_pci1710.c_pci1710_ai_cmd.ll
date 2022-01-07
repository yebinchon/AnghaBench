; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci1710_private* }
%struct.pci1710_private = type { i32, i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32, i32 }

@PCI171X_CLRFIFO_REG = common dso_local global i64 0, align 8
@PCI171X_CLRINT_REG = common dso_local global i64 0, align 8
@PCI171X_CTRL_CNT0 = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@PCI171X_CTRL_ONEFH = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@PCI171X_CTRL_PACER = common dso_local global i32 0, align 4
@PCI171X_CTRL_IRQEN = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@PCI171X_CTRL_GATE = common dso_local global i32 0, align 4
@PCI171X_CTRL_EXT = common dso_local global i32 0, align 4
@PCI171X_CTRL_REG = common dso_local global i64 0, align 8
@TRIG_NOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci1710_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci1710_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load %struct.pci1710_private*, %struct.pci1710_private** %8, align 8
  store %struct.pci1710_private* %9, %struct.pci1710_private** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.comedi_cmd* %13, %struct.comedi_cmd** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %23 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci1710_ai_setup_chanlist(%struct.comedi_device* %14, %struct.comedi_subdevice* %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI171X_CLRFIFO_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 0, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCI171X_CLRINT_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 0, i64 %36)
  %38 = load i32, i32* @PCI171X_CTRL_CNT0, align 4
  %39 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %40 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %2
  %50 = load i32, i32* @PCI171X_CTRL_ONEFH, align 4
  %51 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %52 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %2
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TRIG_TIMER, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %125

61:                                               ; preds = %55
  %62 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @comedi_8254_update_divisors(i32 %64)
  %66 = load i32, i32* @PCI171X_CTRL_PACER, align 4
  %67 = load i32, i32* @PCI171X_CTRL_IRQEN, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %70 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TRIG_EXT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %61
  %79 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %80 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %83 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @PCI171X_CTRL_PACER, align 4
  %85 = load i32, i32* @PCI171X_CTRL_ONEFH, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PCI171X_CTRL_GATE, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %91 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @PCI171X_CTRL_EXT, align 4
  %95 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %96 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %100 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %99, i32 0, i32 2
  store i32 1, i32* %100, align 4
  br label %104

101:                                              ; preds = %61
  %102 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %103 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %102, i32 0, i32 2
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %78
  %105 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %106 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PCI171X_CTRL_REG, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @outw(i32 %107, i64 %112)
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TRIG_NOW, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %104
  %120 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @comedi_8254_pacer_enable(i32 %122, i32 1, i32 2, i32 1)
  br label %124

124:                                              ; preds = %119, %104
  br label %142

125:                                              ; preds = %55
  %126 = load i32, i32* @PCI171X_CTRL_EXT, align 4
  %127 = load i32, i32* @PCI171X_CTRL_IRQEN, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %130 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %134 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PCI171X_CTRL_REG, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @outw(i32 %135, i64 %140)
  br label %142

142:                                              ; preds = %125, %124
  ret i32 0
}

declare dso_local i32 @pci1710_ai_setup_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
