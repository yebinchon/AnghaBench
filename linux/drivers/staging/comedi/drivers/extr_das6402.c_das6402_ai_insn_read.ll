; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das6402.c_das6402_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das6402.c_das6402_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DAS6402_CTRL_SOFT_TRIG = common dso_local global i32 0, align 4
@DAS6402_CTRL_REG = common dso_local global i64 0, align 8
@DAS6402_MODE_POLLED = common dso_local global i32 0, align 4
@DAS6402_AI_MUX_REG = common dso_local global i64 0, align 8
@das6402_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das6402_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das6402_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_AREF(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @AREF_DIFF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  %31 = icmp ugt i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %97

35:                                               ; preds = %25, %4
  %36 = load i32, i32* @DAS6402_CTRL_SOFT_TRIG, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DAS6402_CTRL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DAS6402_MODE_POLLED, align 4
  %49 = call i32 @das6402_ai_set_mode(%struct.comedi_device* %43, %struct.comedi_subdevice* %44, i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @DAS6402_AI_MUX_HI(i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @DAS6402_AI_MUX_LO(i32 %52)
  %54 = or i32 %51, %53
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DAS6402_AI_MUX_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outw(i32 %54, i64 %59)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %88, %35
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %64 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = call i32 @das6402_ai_clear_eoc(%struct.comedi_device* %68)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = call i32 @das6402_ai_soft_trig(%struct.comedi_device* %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %74 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %75 = load i32, i32* @das6402_ai_eoc, align 4
  %76 = call i32 @comedi_timeout(%struct.comedi_device* %72, %struct.comedi_subdevice* %73, %struct.comedi_insn* %74, i32 %75, i32 0)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %91

80:                                               ; preds = %67
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %83 = call i32 @das6402_ai_read_sample(%struct.comedi_device* %81, %struct.comedi_subdevice* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %61

91:                                               ; preds = %79, %61
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = call i32 @das6402_ai_clear_eoc(%struct.comedi_device* %92)
  %94 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %95 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %32
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @das6402_ai_set_mode(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @DAS6402_AI_MUX_HI(i32) #1

declare dso_local i32 @DAS6402_AI_MUX_LO(i32) #1

declare dso_local i32 @das6402_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @das6402_ai_soft_trig(%struct.comedi_device*) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @das6402_ai_read_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
