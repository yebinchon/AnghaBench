; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DAS1800_CONTROL_C = common dso_local global i64 0, align 8
@CVEN = common dso_local global i32 0, align 4
@DAS1800_STATUS = common dso_local global i64 0, align 8
@DAS1800_CONTROL_A = common dso_local global i64 0, align 8
@FFEN = common dso_local global i32 0, align 4
@ADC = common dso_local global i32 0, align 4
@DAS1800_SELECT = common dso_local global i64 0, align 8
@DAS1800_FIFO = common dso_local global i64 0, align 8
@das1800_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das1800_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_RANGE(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @comedi_range_is_unipolar(%struct.comedi_subdevice* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @das1800_ai_chanspec_bits(%struct.comedi_subdevice* %22, i32 %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DAS1800_CONTROL_C, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 %26, i64 %31)
  %33 = load i32, i32* @CVEN, align 4
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DAS1800_STATUS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 %33, i64 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DAS1800_CONTROL_A, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 0, i64 %44)
  %46 = load i32, i32* @FFEN, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DAS1800_CONTROL_A, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %46, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %54 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %54, i32 0, i32 1
  %56 = call i32 @das1800_ai_set_chanlist(%struct.comedi_device* %53, i32* %55, i32 1)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load i32, i32* @ADC, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DAS1800_SELECT, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %109, %4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %68
  %75 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DAS1800_FIFO, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 0, i64 %79)
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %84 = load i32, i32* @das1800_ai_eoc, align 4
  %85 = call i32 @comedi_timeout(%struct.comedi_device* %81, %struct.comedi_subdevice* %82, %struct.comedi_insn* %83, i32 %84, i32 0)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %112

89:                                               ; preds = %74
  %90 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DAS1800_FIFO, align 8
  %94 = add nsw i64 %92, %93
  %95 = call zeroext i16 @inw(i64 %94)
  store i16 %95, i16* %13, align 2
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %89
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %100 = load i16, i16* %13, align 2
  %101 = call zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice* %99, i16 zeroext %100)
  store i16 %101, i16* %13, align 2
  br label %102

102:                                              ; preds = %98, %89
  %103 = load i16, i16* %13, align 2
  %104 = zext i16 %103 to i32
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %68

112:                                              ; preds = %88, %68
  %113 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %114 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %113, i32 0, i32 0
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %11, align 4
  br label %125

121:                                              ; preds = %112
  %122 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  br label %125

125:                                              ; preds = %121, %119
  %126 = phi i32 [ %120, %119 ], [ %124, %121 ]
  ret i32 %126
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @das1800_ai_chanspec_bits(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @das1800_ai_set_chanlist(%struct.comedi_device*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice*, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
