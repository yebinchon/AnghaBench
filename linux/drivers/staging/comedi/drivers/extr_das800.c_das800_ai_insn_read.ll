; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.das800_private* }
%struct.das800_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@CONTROL1 = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@DAS800_MSB = common dso_local global i64 0, align 8
@das800_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das800_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.das800_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = load %struct.das800_private*, %struct.das800_private** %18, align 8
  store %struct.das800_private* %19, %struct.das800_private** %10, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_CHAN(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_RANGE(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = call i32 @das800_disable(%struct.comedi_device* %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.das800_private*, %struct.das800_private** %10, align 8
  %37 = getelementptr inbounds %struct.das800_private, %struct.das800_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = load i32, i32* @CONTROL1, align 4
  %41 = call i32 @das800_ind_write(%struct.comedi_device* %34, i32 %39, i32 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 1
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4095
  br i1 %49, label %50, label %56

50:                                               ; preds = %4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, 7
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %50, %4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 15
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DAS800_GAIN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 %59, i64 %64)
  %66 = call i32 @udelay(i32 5)
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %109, %56
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %70 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DAS800_MSB, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb_p(i32 0, i64 %78)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %82 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %83 = load i32, i32* @das800_ai_eoc, align 4
  %84 = call i32 @comedi_timeout(%struct.comedi_device* %80, %struct.comedi_subdevice* %81, %struct.comedi_insn* %82, i32 %83, i32 0)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %5, align 4
  br label %116

89:                                               ; preds = %73
  %90 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %91 = call i32 @das800_ai_get_sample(%struct.comedi_device* %90)
  store i32 %91, i32* %14, align 4
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 4095
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* %14, align 4
  %98 = lshr i32 %97, 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %96, %89
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %100, %103
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %67

112:                                              ; preds = %67
  %113 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %114 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %87
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @das800_disable(%struct.comedi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @das800_ind_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @das800_ai_get_sample(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
