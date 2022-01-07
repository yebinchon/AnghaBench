; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MULTIQ3_CTRL_EN = common dso_local global i32 0, align 4
@multiq3_ai_status = common dso_local global i32 0, align 4
@MULTIQ3_STATUS_EOC = common dso_local global i32 0, align 4
@MULTIQ3_AI_CONV_REG = common dso_local global i64 0, align 8
@MULTIQ3_STATUS_EOC_I = common dso_local global i32 0, align 4
@MULTIQ3_AI_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @multiq3_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq3_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = load i32, i32* @MULTIQ3_CTRL_EN, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @MULTIQ3_CTRL_AI_CHAN(i32 %20)
  %22 = or i32 %19, %21
  %23 = call i32 @multiq3_set_ctrl(%struct.comedi_device* %18, i32 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %27 = load i32, i32* @multiq3_ai_status, align 4
  %28 = load i32, i32* @MULTIQ3_STATUS_EOC, align 4
  %29 = call i32 @comedi_timeout(%struct.comedi_device* %24, %struct.comedi_subdevice* %25, %struct.comedi_insn* %26, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %93

34:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %86, %34
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %38 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %35
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MULTIQ3_AI_CONV_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outw(i32 0, i64 %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %50 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %51 = load i32, i32* @multiq3_ai_status, align 4
  %52 = load i32, i32* @MULTIQ3_STATUS_EOC_I, align 4
  %53 = call i32 @comedi_timeout(%struct.comedi_device* %48, %struct.comedi_subdevice* %49, %struct.comedi_insn* %50, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %93

58:                                               ; preds = %41
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MULTIQ3_AI_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @inb(i64 %63)
  %65 = shl i32 %64, 8
  store i32 %65, i32* %11, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MULTIQ3_AI_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inb(i64 %70)
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %79, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %58
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %35

89:                                               ; preds = %35
  %90 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %56, %32
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @multiq3_set_ctrl(%struct.comedi_device*, i32) #1

declare dso_local i32 @MULTIQ3_CTRL_AI_CHAN(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
