; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }
%struct.comedi_subdevice = type { i32, i32* }
%struct.comedi_insn = type { i32, i32 }

@DAS1800_SELECT = common dso_local global i64 0, align 8
@DAS1800_DAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das1800_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %92, %4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @DAC(i32 %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DAS1800_SELECT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DAS1800_DAC, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %32
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %67, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @DAC(i32 %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DAS1800_SELECT, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 %77, i64 %82)
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DAS1800_DAC, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outw(i32 %84, i64 %89)
  br label %91

91:                                               ; preds = %66, %32
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %26

95:                                               ; preds = %26
  %96 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 0
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  ret i32 %102
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DAC(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
