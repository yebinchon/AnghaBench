; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_timer_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_timer_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci1564_private* }
%struct.apci1564_private = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADDI_TCW_RELOAD_REG = common dso_local global i64 0, align 8
@ADDI_TCW_CTRL_IRQ_ENA = common dso_local global i32 0, align 4
@ADDI_TCW_CTRL_TIMER_ENA = common dso_local global i32 0, align 4
@ADDI_TCW_CTRL_REG = common dso_local global i64 0, align 8
@COMEDI_COUNTER_ARMED = common dso_local global i32 0, align 4
@COMEDI_COUNTER_COUNTING = common dso_local global i32 0, align 4
@ADDI_TCW_STATUS_REG = common dso_local global i64 0, align 8
@ADDI_TCW_STATUS_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_COUNTER_TERMINAL_COUNT = common dso_local global i32 0, align 4
@ADDI_TCW_TIMEBASE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_timer_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1564_timer_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.apci1564_private*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.apci1564_private*, %struct.apci1564_private** %13, align 8
  store %struct.apci1564_private* %14, %struct.apci1564_private** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %157 [
    i32 132, label %18
    i32 131, label %48
    i32 129, label %55
    i32 128, label %110
    i32 130, label %140
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %164

29:                                               ; preds = %18
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %34 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ADDI_TCW_RELOAD_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outl(i32 %32, i64 %37)
  %39 = load i32, i32* @ADDI_TCW_CTRL_IRQ_ENA, align 4
  %40 = load i32, i32* @ADDI_TCW_CTRL_TIMER_ENA, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %43 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outl(i32 %41, i64 %46)
  br label %160

48:                                               ; preds = %4
  %49 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %50 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outl(i32 0, i64 %53)
  br label %160

55:                                               ; preds = %4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %59 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inl(i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @ADDI_TCW_CTRL_IRQ_ENA, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %55
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @ADDI_TCW_CTRL_TIMER_ENA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %87 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ADDI_TCW_STATUS_REG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @inl(i64 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @ADDI_TCW_STATUS_OVERFLOW, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %85
  %103 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %104 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %107 = or i32 %105, %106
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 %107, i32* %109, align 4
  br label %160

110:                                              ; preds = %4
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ugt i32 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %164

121:                                              ; preds = %110
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %126 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ADDI_TCW_TIMEBASE_REG, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outl(i32 %124, i64 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %135 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ADDI_TCW_RELOAD_REG, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @outl(i32 %133, i64 %138)
  br label %160

140:                                              ; preds = %4
  %141 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %142 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ADDI_TCW_TIMEBASE_REG, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @inl(i64 %145)
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.apci1564_private*, %struct.apci1564_private** %10, align 8
  %150 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ADDI_TCW_RELOAD_REG, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @inl(i64 %153)
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32 %154, i32* %156, align 4
  br label %160

157:                                              ; preds = %4
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %5, align 4
  br label %164

160:                                              ; preds = %140, %121, %102, %48, %29
  %161 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %162 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %157, %118, %26
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
