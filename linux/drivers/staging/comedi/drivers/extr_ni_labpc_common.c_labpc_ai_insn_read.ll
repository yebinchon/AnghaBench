; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)*, i32 }
%struct.comedi_device.0 = type opaque
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MODE_SINGLE_CHAN = common dso_local global i32 0, align 4
@fifo_not_empty_transfer = common dso_local global i32 0, align 4
@CMD4_ECLKRCV = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@CMD4_SEDIFF = common dso_local global i32 0, align 4
@CMD4_REG = common dso_local global i32 0, align 4
@I8254_MODE2 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@ADC_START_CONVERT_REG = common dso_local global i32 0, align 4
@labpc_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @labpc_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.labpc_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.labpc_private*, %struct.labpc_private** %17, align 8
  store %struct.labpc_private* %18, %struct.labpc_private** %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_RANGE(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CR_AREF(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %33 = call i32 @labpc_cancel(%struct.comedi_device* %31, %struct.comedi_subdevice* %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %35 = load i32, i32* @MODE_SINGLE_CHAN, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @labpc_ai_set_chan_and_gain(%struct.comedi_device* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %42 = load i32, i32* @MODE_SINGLE_CHAN, align 4
  %43 = load i32, i32* @fifo_not_empty_transfer, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @labpc_setup_cmd6_reg(%struct.comedi_device* %40, %struct.comedi_subdevice* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %48 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load i32, i32* @CMD4_ECLKRCV, align 4
  %50 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %51 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @AREF_DIFF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %4
  %58 = load i32, i32* @CMD4_SEDIFF, align 4
  %59 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %60 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %4
  %64 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %65 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %64, i32 0, i32 1
  %66 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = bitcast %struct.comedi_device* %67 to %struct.comedi_device.0*
  %69 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %70 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CMD4_REG, align 4
  %73 = call i32 %66(%struct.comedi_device.0* %68, i32 %71, i32 %72)
  %74 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %75 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @I8254_MODE2, align 4
  %78 = load i32, i32* @I8254_BINARY, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @comedi_8254_set_mode(i32 %76, i32 0, i32 %79)
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = call i32 @labpc_clear_adc_fifo(%struct.comedi_device* %81)
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %113, %63
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %86 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %83
  %90 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  %91 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %90, i32 0, i32 1
  %92 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %91, align 8
  %93 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %94 = bitcast %struct.comedi_device* %93 to %struct.comedi_device.0*
  %95 = load i32, i32* @ADC_START_CONVERT_REG, align 4
  %96 = call i32 %92(%struct.comedi_device.0* %94, i32 1, i32 %95)
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %99 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %100 = load i32, i32* @labpc_ai_eoc, align 4
  %101 = call i32 @comedi_timeout(%struct.comedi_device* %97, %struct.comedi_subdevice* %98, %struct.comedi_insn* %99, i32 %100, i32 0)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %5, align 4
  br label %120

106:                                              ; preds = %89
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = call i32 @labpc_read_adc_fifo(%struct.comedi_device* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %83

116:                                              ; preds = %83
  %117 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %118 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %104
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @labpc_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @labpc_ai_set_chan_and_gain(%struct.comedi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @labpc_setup_cmd6_reg(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @comedi_8254_set_mode(i32, i32, i32) #1

declare dso_local i32 @labpc_clear_adc_fifo(%struct.comedi_device*) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @labpc_read_adc_fifo(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
