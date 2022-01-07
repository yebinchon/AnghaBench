; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.a2150_private* }
%struct.a2150_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@FIFO_RESET_REG = common dso_local global i64 0, align 8
@AC0_BIT = common dso_local global i32 0, align 4
@AC1_BIT = common dso_local global i32 0, align 4
@CONFIG_REG = common dso_local global i64 0, align 8
@DMA_INTR_EN_BIT = common dso_local global i32 0, align 4
@DMA_EN_BIT = common dso_local global i32 0, align 4
@IRQ_DMA_CNTRL_REG = common dso_local global i64 0, align 8
@TRIGGER_REG = common dso_local global i64 0, align 8
@FIFO_START_REG = common dso_local global i64 0, align 8
@a2150_ai_eoc = common dso_local global i32 0, align 4
@FIFO_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @a2150_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.a2150_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.a2150_private*, %struct.a2150_private** %14, align 8
  store %struct.a2150_private* %15, %struct.a2150_private** %10, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FIFO_RESET_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outw(i32 0, i64 %20)
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_CHAN(i32 %25)
  %27 = call i64 @a2150_set_chanlist(%struct.comedi_device* %22, i32 %26, i32 1)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %150

30:                                               ; preds = %4
  %31 = load i32, i32* @AC0_BIT, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.a2150_private*, %struct.a2150_private** %10, align 8
  %34 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @AC1_BIT, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.a2150_private*, %struct.a2150_private** %10, align 8
  %40 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.a2150_private*, %struct.a2150_private** %10, align 8
  %44 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CONFIG_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outw(i32 %45, i64 %50)
  %52 = load i32, i32* @DMA_INTR_EN_BIT, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* @DMA_EN_BIT, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load %struct.a2150_private*, %struct.a2150_private** %10, align 8
  %58 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.a2150_private*, %struct.a2150_private** %10, align 8
  %62 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IRQ_DMA_CNTRL_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outw(i32 %63, i64 %68)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TRIGGER_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outw(i32 0, i64 %74)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FIFO_START_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outw(i32 0, i64 %80)
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %102, %30
  %83 = load i32, i32* %11, align 4
  %84 = icmp ult i32 %83, 36
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %88 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %89 = load i32, i32* @a2150_ai_eoc, align 4
  %90 = call i32 @comedi_timeout(%struct.comedi_device* %86, %struct.comedi_subdevice* %87, %struct.comedi_insn* %88, i32 %89, i32 0)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %5, align 4
  br label %150

95:                                               ; preds = %85
  %96 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @FIFO_DATA_REG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @inw(i64 %100)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %82

105:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %139, %105
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %109 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %106
  %113 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %115 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %116 = load i32, i32* @a2150_ai_eoc, align 4
  %117 = call i32 @comedi_timeout(%struct.comedi_device* %113, %struct.comedi_subdevice* %114, %struct.comedi_insn* %115, i32 %116, i32 0)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %5, align 4
  br label %150

122:                                              ; preds = %112
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @FIFO_DATA_REG, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @inw(i64 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %11, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %137, 32768
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %11, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %106

142:                                              ; preds = %106
  %143 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @FIFO_RESET_REG, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @outw(i32 0, i64 %147)
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %142, %120, %93, %29
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @a2150_set_chanlist(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
