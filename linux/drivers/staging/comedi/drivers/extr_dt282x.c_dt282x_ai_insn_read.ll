; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32, i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DT2821_ADCSR_ADCLK = common dso_local global i32 0, align 4
@DT2821_ADCSR_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_PRLD = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@dt282x_ai_timeout = common dso_local global i32 0, align 4
@DT2821_ADCSR_MUXBUSY = common dso_local global i32 0, align 4
@DT2821_SUPCSR_STRIG = common dso_local global i32 0, align 4
@DT2821_ADCSR_ADDONE = common dso_local global i32 0, align 4
@DT2821_ADDAT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt282x_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dt282x_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.dt282x_private*, %struct.dt282x_private** %15, align 8
  store %struct.dt282x_private* %16, %struct.dt282x_private** %10, align 8
  %17 = load i32, i32* @DT2821_ADCSR_ADCLK, align 4
  %18 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %19 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %21 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DT2821_ADCSR_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outw(i32 %22, i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 1
  %32 = call i32 @dt282x_load_changain(%struct.comedi_device* %29, i32 1, i32* %31)
  %33 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %34 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DT2821_SUPCSR_PRLD, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outw(i32 %37, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %47 = load i32, i32* @dt282x_ai_timeout, align 4
  %48 = load i32, i32* @DT2821_ADCSR_MUXBUSY, align 4
  %49 = call i32 @comedi_timeout(%struct.comedi_device* %44, %struct.comedi_subdevice* %45, %struct.comedi_insn* %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %114

54:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %109, %54
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %58 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %55
  %62 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %63 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DT2821_SUPCSR_STRIG, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 %66, i64 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %75 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %76 = load i32, i32* @dt282x_ai_timeout, align 4
  %77 = load i32, i32* @DT2821_ADCSR_ADDONE, align 4
  %78 = call i32 @comedi_timeout(%struct.comedi_device* %73, %struct.comedi_subdevice* %74, %struct.comedi_insn* %75, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %114

83:                                               ; preds = %61
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DT2821_ADDAT_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @inw(i64 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %96 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %83
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %83
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %55

112:                                              ; preds = %55
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %81, %52
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @dt282x_load_changain(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
