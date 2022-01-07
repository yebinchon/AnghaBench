; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci3120_private* }
%struct.apci3120_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@APCI3120_MODE_TIMER2_CLK_OSC = common dso_local global i32 0, align 4
@APCI3120_MODE_TIMER2_AS_TIMER = common dso_local global i32 0, align 4
@APCI3120_MODE_REG = common dso_local global i64 0, align 8
@APCI3120_TIMER_MODE4 = common dso_local global i32 0, align 4
@CMDF_ROUND_NEAREST = common dso_local global i32 0, align 4
@apci3120_ai_eoc = common dso_local global i32 0, align 4
@APCI3120_AI_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3120_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.apci3120_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.apci3120_private*, %struct.apci3120_private** %15, align 8
  store %struct.apci3120_private* %16, %struct.apci3120_private** %10, align 8
  %17 = load i32, i32* @APCI3120_MODE_TIMER2_CLK_OSC, align 4
  %18 = load i32, i32* @APCI3120_MODE_TIMER2_AS_TIMER, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.apci3120_private*, %struct.apci3120_private** %10, align 8
  %21 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.apci3120_private*, %struct.apci3120_private** %10, align 8
  %23 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @APCI3120_MODE_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %24, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 1
  %35 = call i32 @apci3120_set_chanlist(%struct.comedi_device* %31, %struct.comedi_subdevice* %32, i32 1, i32* %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = load i32, i32* @APCI3120_TIMER_MODE4, align 4
  %38 = call i32 @apci3120_timer_set_mode(%struct.comedi_device* %36, i32 0, i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = call i32 @apci3120_timer_enable(%struct.comedi_device* %39, i32 0, i32 1)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %43 = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %41, i32 0, i32 10000, i32 %42)
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %74, %4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %47 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @apci3120_timer_write(%struct.comedi_device* %51, i32 0, i32 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %57 = load i32, i32* @apci3120_ai_eoc, align 4
  %58 = call i32 @comedi_timeout(%struct.comedi_device* %54, %struct.comedi_subdevice* %55, %struct.comedi_insn* %56, i32 %57, i32 0)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %81

63:                                               ; preds = %50
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @APCI3120_AI_FIFO_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @inw(i64 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %44

77:                                               ; preds = %44
  %78 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %79 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %61
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @apci3120_set_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*) #1

declare dso_local i32 @apci3120_timer_set_mode(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @apci3120_timer_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @apci3120_ns_to_timer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @apci3120_timer_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
