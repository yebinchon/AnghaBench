; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_timer_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_timer_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci3120_private* }
%struct.apci3120_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@CMDF_ROUND_DOWN = common dso_local global i32 0, align 4
@COMEDI_COUNTER_ARMED = common dso_local global i32 0, align 4
@COMEDI_COUNTER_COUNTING = common dso_local global i32 0, align 4
@COMEDI_COUNTER_TERMINAL_COUNT = common dso_local global i32 0, align 4
@APCI3120_STATUS_REG = common dso_local global i64 0, align 8
@APCI3120_STATUS_TIMER2_INT = common dso_local global i32 0, align 4
@APCI3120_MODE_TIMER2_AS_COUNTER = common dso_local global i32 0, align 4
@APCI3120_TIMER_MODE0 = common dso_local global i32 0, align 4
@APCI3120_MODE_TIMER2_AS_TIMER = common dso_local global i32 0, align 4
@APCI3120_TIMER_MODE2 = common dso_local global i32 0, align 4
@APCI3120_TIMER_MODE4 = common dso_local global i32 0, align 4
@APCI3120_MODE_TIMER2_AS_WDOG = common dso_local global i32 0, align 4
@APCI3120_TIMER_MODE5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@APCI3120_MODE_TIMER2_AS_MASK = common dso_local global i32 0, align 4
@APCI3120_MODE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_timer_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3120_timer_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.apci3120_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.apci3120_private*, %struct.apci3120_private** %16, align 8
  store %struct.apci3120_private* %17, %struct.apci3120_private** %10, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %138 [
    i32 131, label %21
    i32 130, label %35
    i32 129, label %40
    i32 128, label %91
  ]

21:                                               ; preds = %4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = call i32 @apci3120_clr_timer2_interrupt(%struct.comedi_device* %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CMDF_ROUND_DOWN, align 4
  %29 = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %24, i32 2, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @apci3120_timer_write(%struct.comedi_device* %30, i32 2, i32 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = call i32 @apci3120_timer_enable(%struct.comedi_device* %33, i32 2, i32 1)
  br label %141

35:                                               ; preds = %4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = call i32 @apci3120_timer_enable(%struct.comedi_device* %36, i32 2, i32 0)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = call i32 @apci3120_clr_timer2_interrupt(%struct.comedi_device* %38)
  br label %141

40:                                               ; preds = %4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %44 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.apci3120_private*, %struct.apci3120_private** %10, align 8
  %51 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @APCI3120_CTRL_GATE(i32 2)
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %40
  %57 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %56, %40
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @APCI3120_STATUS_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @inw(i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @APCI3120_STATUS_TIMER2_INT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %67
  %79 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %80 = xor i32 %79, -1
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %78, %67
  br label %141

91:                                               ; preds = %4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %107 [
    i32 135, label %95
    i32 134, label %98
    i32 133, label %101
    i32 132, label %104
  ]

95:                                               ; preds = %91
  %96 = load i32, i32* @APCI3120_MODE_TIMER2_AS_COUNTER, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* @APCI3120_TIMER_MODE0, align 4
  store i32 %97, i32* %14, align 4
  br label %110

98:                                               ; preds = %91
  %99 = load i32, i32* @APCI3120_MODE_TIMER2_AS_TIMER, align 4
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* @APCI3120_TIMER_MODE2, align 4
  store i32 %100, i32* %14, align 4
  br label %110

101:                                              ; preds = %91
  %102 = load i32, i32* @APCI3120_MODE_TIMER2_AS_TIMER, align 4
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* @APCI3120_TIMER_MODE4, align 4
  store i32 %103, i32* %14, align 4
  br label %110

104:                                              ; preds = %91
  %105 = load i32, i32* @APCI3120_MODE_TIMER2_AS_WDOG, align 4
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @APCI3120_TIMER_MODE5, align 4
  store i32 %106, i32* %14, align 4
  br label %110

107:                                              ; preds = %91
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %145

110:                                              ; preds = %104, %101, %98, %95
  %111 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %112 = call i32 @apci3120_timer_enable(%struct.comedi_device* %111, i32 2, i32 0)
  %113 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %114 = call i32 @apci3120_clr_timer2_interrupt(%struct.comedi_device* %113)
  %115 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @apci3120_timer_set_mode(%struct.comedi_device* %115, i32 2, i32 %116)
  %118 = load i32, i32* @APCI3120_MODE_TIMER2_AS_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.apci3120_private*, %struct.apci3120_private** %10, align 8
  %121 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.apci3120_private*, %struct.apci3120_private** %10, align 8
  %126 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.apci3120_private*, %struct.apci3120_private** %10, align 8
  %130 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @APCI3120_MODE_REG, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outb(i32 %131, i64 %136)
  br label %141

138:                                              ; preds = %4
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %145

141:                                              ; preds = %110, %90, %35, %21
  %142 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %143 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %141, %138, %107
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @apci3120_clr_timer2_interrupt(%struct.comedi_device*) #1

declare dso_local i32 @apci3120_ns_to_timer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @apci3120_timer_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @apci3120_timer_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @APCI3120_CTRL_GATE(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @apci3120_timer_set_mode(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
