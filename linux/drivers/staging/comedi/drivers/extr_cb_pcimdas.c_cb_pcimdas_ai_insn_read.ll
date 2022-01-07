; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcimdas_private* }
%struct.cb_pcimdas_private = type { i64, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCIMDAS_PACER_REG = common dso_local global i64 0, align 8
@PCIMDAS_PACER_SRC_MASK = common dso_local global i32 0, align 4
@PCIMDAS_PACER_SRC_POLLED = common dso_local global i32 0, align 4
@PCIMDAS_BURST_CONV_EN = common dso_local global i32 0, align 4
@PCIMDAS_BURST_REG = common dso_local global i64 0, align 8
@PCIMDAS_GAIN_REG = common dso_local global i64 0, align 8
@PCIMDAS_MUX_REG = common dso_local global i64 0, align 8
@PCIMDAS_AI_SOFTTRIG_REG = common dso_local global i64 0, align 8
@cb_pcimdas_ai_eoc = common dso_local global i32 0, align 4
@PCIMDAS_AI_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcimdas_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcimdas_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cb_pcimdas_private*, align 8
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
  %18 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %17, align 8
  store %struct.cb_pcimdas_private* %18, %struct.cb_pcimdas_private** %10, align 8
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
  %27 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %28 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCIMDAS_PACER_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @PCIMDAS_PACER_SRC_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @PCIMDAS_PACER_SRC_POLLED, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %4
  %39 = load i32, i32* @PCIMDAS_PACER_SRC_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %14, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* @PCIMDAS_PACER_SRC_POLLED, align 4
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %48 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCIMDAS_PACER_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %46, i64 %51)
  br label %53

53:                                               ; preds = %38, %4
  %54 = load i32, i32* @PCIMDAS_BURST_CONV_EN, align 4
  %55 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %56 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PCIMDAS_BURST_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i32 %54, i64 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %63 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PCIMDAS_GAIN_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @PCIMDAS_MUX(i32 %68, i32 %69)
  %71 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %72 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PCIMDAS_MUX_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %70, i64 %75)
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %110, %53
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %80 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %85 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PCIMDAS_AI_SOFTTRIG_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outw(i32 0, i64 %88)
  %90 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %92 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %93 = load i32, i32* @cb_pcimdas_ai_eoc, align 4
  %94 = call i32 @comedi_timeout(%struct.comedi_device* %90, %struct.comedi_subdevice* %91, %struct.comedi_insn* %92, i32 %93, i32 0)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %5, align 4
  br label %115

99:                                               ; preds = %83
  %100 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %101 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCIMDAS_AI_REG, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @inw(i64 %104)
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %77

113:                                              ; preds = %77
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %97
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @PCIMDAS_MUX(i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
