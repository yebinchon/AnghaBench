; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mf6x4.c_mf6x4_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mf6x4.c_mf6x4_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MF6X4_ADCTRL_REG = common dso_local global i64 0, align 8
@MF6X4_ADSTART_REG = common dso_local global i64 0, align 8
@mf6x4_ai_eoc = common dso_local global i32 0, align 4
@MF6X4_ADDATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @mf6x4_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf6x4_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @MF6X4_ADCTRL_CHAN(i32 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MF6X4_ADCTRL_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite16(i32 %19, i64 %24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %67, %4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MF6X4_ADSTART_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread16(i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %41 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %42 = load i32, i32* @mf6x4_ai_eoc, align 4
  %43 = call i32 @comedi_timeout(%struct.comedi_device* %39, %struct.comedi_subdevice* %40, %struct.comedi_insn* %41, i32 %42, i32 0)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %80

48:                                               ; preds = %32
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MF6X4_ADDATA_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @ioread16(i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %60, i32 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %48
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %26

70:                                               ; preds = %26
  %71 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MF6X4_ADCTRL_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @iowrite16(i32 0, i64 %75)
  %77 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %78 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %70, %46
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @MF6X4_ADCTRL_CHAN(i32) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
