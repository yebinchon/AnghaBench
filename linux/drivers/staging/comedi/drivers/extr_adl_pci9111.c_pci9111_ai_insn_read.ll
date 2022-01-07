; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCI9111_AI_CHANNEL_REG = common dso_local global i64 0, align 8
@PCI9111_AI_RANGE_STAT_REG = common dso_local global i64 0, align 8
@PCI9111_AI_RANGE_MASK = common dso_local global i32 0, align 4
@PCI9111_SOFT_TRIG_REG = common dso_local global i64 0, align 8
@pci9111_ai_eoc = common dso_local global i32 0, align 4
@PCI9111_AI_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci9111_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9111_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_CHAN(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CR_RANGE(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add i32 %29, 1
  %31 = lshr i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 65535
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 4
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCI9111_AI_CHANNEL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCI9111_AI_RANGE_STAT_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inb(i64 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @PCI9111_AI_RANGE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @PCI9111_AI_RANGE(i32 %55)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCI9111_AI_RANGE_STAT_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %56, i64 %61)
  br label %63

63:                                               ; preds = %54, %4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = call i32 @pci9111_fifo_reset(%struct.comedi_device* %64)
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %116, %63
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %119

72:                                               ; preds = %66
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PCI9111_SOFT_TRIG_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 0, i64 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %81 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %82 = load i32, i32* @pci9111_ai_eoc, align 4
  %83 = call i32 @comedi_timeout(%struct.comedi_device* %79, %struct.comedi_subdevice* %80, %struct.comedi_insn* %81, i32 %82, i32 0)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %72
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = call i32 @pci9111_fifo_reset(%struct.comedi_device* %87)
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %5, align 4
  br label %121

90:                                               ; preds = %72
  %91 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PCI9111_AI_FIFO_REG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @inw(i64 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %14, align 4
  %107 = lshr i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = xor i32 %109, %110
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %90
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %66

119:                                              ; preds = %66
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %86
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @PCI9111_AI_RANGE(i32) #1

declare dso_local i32 @pci9111_fifo_reset(%struct.comedi_device*) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
