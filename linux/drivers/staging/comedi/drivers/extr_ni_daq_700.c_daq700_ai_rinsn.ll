; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_daq_700.c_daq700_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_daq_700.c_daq700_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@CMD_R3_DIFF = common dso_local global i32 0, align 4
@CMD_R3 = common dso_local global i64 0, align 8
@CMD_R1 = common dso_local global i64 0, align 8
@CMD_R2 = common dso_local global i64 0, align 8
@CMO_R = common dso_local global i64 0, align 8
@ADCLEAR_R = common dso_local global i64 0, align 8
@ADFIFO_R = common dso_local global i64 0, align 8
@daq700_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @daq700_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daq700_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_AREF(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_RANGE(i32 %27)
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @AREF_DIFF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @CMD_R3_DIFF, align 4
  %34 = load i32, i32* %16, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %32, %4
  %37 = load i32, i32* %15, align 4
  %38 = icmp uge i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = and i32 %44, 3
  %46 = or i32 %43, %45
  %47 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CMD_R3, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %46, i64 %51)
  %53 = load i32, i32* %13, align 4
  %54 = or i32 %53, 128
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CMD_R1, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i32 %54, i64 %59)
  %61 = call i32 @udelay(i32 2)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %124, %42
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %65 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %127

68:                                               ; preds = %62
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CMD_R2, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 0, i64 %73)
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CMO_R, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 48, i64 %79)
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ADCLEAR_R, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outb(i32 0, i64 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ADFIFO_R, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @inw(i64 %91)
  %93 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CMO_R, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i32 50, i64 %97)
  %99 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %101 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %102 = load i32, i32* @daq700_ai_eoc, align 4
  %103 = call i32 @comedi_timeout(%struct.comedi_device* %99, %struct.comedi_subdevice* %100, %struct.comedi_insn* %101, i32 %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %68
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %129

108:                                              ; preds = %68
  %109 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ADFIFO_R, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @inw(i64 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, 4095
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = xor i32 %117, 2048
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %108
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %62

127:                                              ; preds = %62
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %106
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
