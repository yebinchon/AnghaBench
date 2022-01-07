; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_counter_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_counter_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci1564_private* }
%struct.apci1564_private = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@ADDI_TCW_CTRL_REG = common dso_local global i32 0, align 4
@ADDI_TCW_CTRL_IRQ_ENA = common dso_local global i32 0, align 4
@ADDI_TCW_CTRL_CNTR_ENA = common dso_local global i32 0, align 4
@ADDI_TCW_RELOAD_REG = common dso_local global i32 0, align 4
@COMEDI_COUNTER_ARMED = common dso_local global i32 0, align 4
@COMEDI_COUNTER_COUNTING = common dso_local global i32 0, align 4
@ADDI_TCW_STATUS_REG = common dso_local global i32 0, align 4
@ADDI_TCW_STATUS_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_COUNTER_TERMINAL_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_counter_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1564_counter_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.apci1564_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.apci1564_private*, %struct.apci1564_private** %15, align 8
  store %struct.apci1564_private* %16, %struct.apci1564_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %22 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @APCI1564_COUNTER(i32 %24)
  %26 = add i64 %23, %25
  store i64 %26, i64* %12, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %143 [
    i32 131, label %30
    i32 130, label %58
    i32 128, label %78
    i32 129, label %88
  ]

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* @ADDI_TCW_CTRL_REG, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @inl(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* @ADDI_TCW_CTRL_IRQ_ENA, align 4
  %38 = load i32, i32* @ADDI_TCW_CTRL_CNTR_ENA, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @ADDI_TCW_RELOAD_REG, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @outl(i32 %44, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* @ADDI_TCW_CTRL_REG, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @outl(i32 %51, i32 %56)
  br label %146

58:                                               ; preds = %4
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* @ADDI_TCW_CTRL_REG, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @inl(i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* @ADDI_TCW_CTRL_IRQ_ENA, align 4
  %66 = load i32, i32* @ADDI_TCW_CTRL_CNTR_ENA, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* @ADDI_TCW_CTRL_REG, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @outl(i32 %71, i32 %76)
  br label %146

78:                                               ; preds = %4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* @ADDI_TCW_CTRL_REG, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @outl(i32 %81, i32 %86)
  br label %146

88:                                               ; preds = %4
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 0, i32* %90, align 4
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* @ADDI_TCW_CTRL_REG, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %91, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @inl(i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @ADDI_TCW_CTRL_IRQ_ENA, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %88
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @ADDI_TCW_CTRL_CNTR_ENA, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i64, i64* %12, align 8
  %120 = load i32, i32* @ADDI_TCW_STATUS_REG, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %119, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @inl(i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @ADDI_TCW_STATUS_OVERFLOW, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %118
  %130 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %118
  %136 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %137 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %140 = or i32 %138, %139
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 %140, i32* %142, align 4
  br label %146

143:                                              ; preds = %4
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %150

146:                                              ; preds = %135, %78, %58, %30
  %147 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %148 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @APCI1564_COUNTER(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
