; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci3120_private* }
%struct.apci3120_private = type { i32, i64, i64, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i32, i32, i32, i32 }

@APCI3120_MODE_TIMER2_CLK_OSC = common dso_local global i32 0, align 4
@APCI3120_MODE_TIMER2_AS_TIMER = common dso_local global i32 0, align 4
@AINT_WT_COMPLETE = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@APCI3120_TIMER_MODE2 = common dso_local global i32 0, align 4
@APCI3120_MODE_EOS_IRQ_ENA = common dso_local global i32 0, align 4
@APCI3120_MODE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3120_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3120_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.apci3120_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %9, align 8
  store %struct.apci3120_private* %10, %struct.apci3120_private** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %6, align 8
  %15 = load i32, i32* @APCI3120_MODE_TIMER2_CLK_OSC, align 4
  %16 = load i32, i32* @APCI3120_MODE_TIMER2_AS_TIMER, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %19 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @AINT_WT_COMPLETE, align 4
  %21 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %22 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outl(i32 %20, i64 %25)
  %27 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %28 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @apci3120_set_chanlist(%struct.comedi_device* %29, %struct.comedi_subdevice* %30, i32 %33, i32 %36)
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TRIG_EXT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = call i32 @apci3120_exttrig_enable(%struct.comedi_device* %44, i32 1)
  br label %46

46:                                               ; preds = %43, %2
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TRIG_TIMER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %53, i32 1, i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = load i32, i32* @APCI3120_TIMER_MODE2, align 4
  %63 = call i32 @apci3120_timer_set_mode(%struct.comedi_device* %61, i32 1, i32 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @apci3120_timer_write(%struct.comedi_device* %64, i32 1, i32 %65)
  br label %67

67:                                               ; preds = %52, %46
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %68, i32 0, i32 %71, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = load i32, i32* @APCI3120_TIMER_MODE2, align 4
  %78 = call i32 @apci3120_timer_set_mode(%struct.comedi_device* %76, i32 0, i32 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @apci3120_timer_write(%struct.comedi_device* %79, i32 0, i32 %80)
  %82 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %83 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %67
  %87 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %89 = call i32 @apci3120_setup_dma(%struct.comedi_device* %87, %struct.comedi_subdevice* %88)
  br label %96

90:                                               ; preds = %67
  %91 = load i32, i32* @APCI3120_MODE_EOS_IRQ_ENA, align 4
  %92 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %93 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %86
  %97 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %98 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @APCI3120_MODE_REG, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 %99, i64 %104)
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TRIG_TIMER, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %96
  %112 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %113 = call i32 @apci3120_timer_enable(%struct.comedi_device* %112, i32 1, i32 1)
  br label %114

114:                                              ; preds = %111, %96
  %115 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %116 = call i32 @apci3120_timer_enable(%struct.comedi_device* %115, i32 0, i32 1)
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @apci3120_set_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @apci3120_exttrig_enable(%struct.comedi_device*, i32) #1

declare dso_local i32 @apci3120_ns_to_timer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @apci3120_timer_set_mode(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @apci3120_timer_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @apci3120_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @apci3120_timer_enable(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
