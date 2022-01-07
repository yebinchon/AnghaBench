; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DAS16_TRIG_REG = common dso_local global i64 0, align 8
@das16_ai_eoc = common dso_local global i32 0, align 4
@DAS16_AI_MSB_REG = common dso_local global i64 0, align 8
@DAS16_AI_LSB_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das16_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_RANGE(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @das16_ai_set_mux_range(%struct.comedi_device* %23, i32 %24, i32 %25, i32 %26)
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %84, %4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %28
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DAS16_TRIG_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb_p(i32 0, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %44 = load i32, i32* @das16_ai_eoc, align 4
  %45 = call i32 @comedi_timeout(%struct.comedi_device* %41, %struct.comedi_subdevice* %42, %struct.comedi_insn* %43, i32 %44, i32 0)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %91

50:                                               ; preds = %34
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DAS16_AI_MSB_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inb(i64 %55)
  %57 = shl i32 %56, 8
  store i32 %57, i32* %12, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DAS16_AI_LSB_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inb(i64 %62)
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 4095
  br i1 %69, label %70, label %73

70:                                               ; preds = %50
  %71 = load i32, i32* %12, align 4
  %72 = lshr i32 %71, 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %50
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %28

87:                                               ; preds = %28
  %88 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %89 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %48
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @das16_ai_set_mux_range(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
