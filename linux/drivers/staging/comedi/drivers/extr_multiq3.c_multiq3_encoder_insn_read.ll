; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_encoder_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_encoder_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MULTIQ3_CTRL_EN = common dso_local global i32 0, align 4
@MULTIQ3_BP_RESET = common dso_local global i32 0, align 4
@MULTIQ3_ENC_CTRL_REG = common dso_local global i64 0, align 8
@MULTIQ3_TRSFRCNTR_OL = common dso_local global i32 0, align 4
@MULTIQ3_ENC_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @multiq3_encoder_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq3_encoder_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %82, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %16
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = load i32, i32* @MULTIQ3_CTRL_EN, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @MULTIQ3_CTRL_E_CHAN(i32 %25)
  %27 = or i32 %24, %26
  %28 = call i32 @multiq3_set_ctrl(%struct.comedi_device* %23, i32 %27)
  %29 = load i32, i32* @MULTIQ3_BP_RESET, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 %29, i64 %34)
  %36 = load i32, i32* @MULTIQ3_TRSFRCNTR_OL, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MULTIQ3_ENC_DATA_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inb(i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MULTIQ3_ENC_DATA_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inb(i64 %53)
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MULTIQ3_ENC_DATA_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inb(i64 %62)
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  %72 = ashr i32 %71, 1
  %73 = add i32 %67, %72
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %73, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %22
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %16

85:                                               ; preds = %16
  %86 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  ret i32 %88
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @multiq3_set_ctrl(%struct.comedi_device*, i32) #1

declare dso_local i32 @MULTIQ3_CTRL_E_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
