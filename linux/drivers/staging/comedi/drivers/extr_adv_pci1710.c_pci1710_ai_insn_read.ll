; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci1710_private* }
%struct.pci1710_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCI171X_CTRL_SW = common dso_local global i32 0, align 4
@PCI171X_CTRL_REG = common dso_local global i64 0, align 8
@PCI171X_CLRFIFO_REG = common dso_local global i64 0, align 8
@PCI171X_CLRINT_REG = common dso_local global i64 0, align 8
@PCI171X_SOFTTRG_REG = common dso_local global i64 0, align 8
@pci1710_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1710_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pci1710_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.pci1710_private*, %struct.pci1710_private** %14, align 8
  store %struct.pci1710_private* %15, %struct.pci1710_private** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @PCI171X_CTRL_SW, align 4
  %17 = load %struct.pci1710_private*, %struct.pci1710_private** %9, align 8
  %18 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.pci1710_private*, %struct.pci1710_private** %9, align 8
  %22 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI171X_CTRL_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outw(i32 %23, i64 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI171X_CLRFIFO_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 0, i64 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI171X_CLRINT_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 0, i64 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %44 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %44, i32 0, i32 1
  %46 = call i32 @pci1710_ai_setup_chanlist(%struct.comedi_device* %42, %struct.comedi_subdevice* %43, i32* %45, i32 1, i32 1)
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %81, %4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI171X_SOFTTRG_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outw(i32 0, i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %62 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %63 = load i32, i32* @pci1710_ai_eoc, align 4
  %64 = call i32 @comedi_timeout(%struct.comedi_device* %60, %struct.comedi_subdevice* %61, %struct.comedi_insn* %62, i32 %63, i32 0)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %84

68:                                               ; preds = %53
  %69 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %71 = call i32 @pci1710_ai_read_sample(%struct.comedi_device* %69, %struct.comedi_subdevice* %70, i32 0, i32* %12)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %84

75:                                               ; preds = %68
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %47

84:                                               ; preds = %74, %67, %47
  %85 = load i32, i32* @PCI171X_CTRL_SW, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.pci1710_private*, %struct.pci1710_private** %9, align 8
  %88 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.pci1710_private*, %struct.pci1710_private** %9, align 8
  %92 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI171X_CTRL_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outw(i32 %93, i64 %98)
  %100 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCI171X_CLRFIFO_REG, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 0, i64 %104)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PCI171X_CLRINT_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outb(i32 0, i64 %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %84
  %115 = load i32, i32* %10, align 4
  br label %120

116:                                              ; preds = %84
  %117 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  br label %120

120:                                              ; preds = %116, %114
  %121 = phi i32 [ %115, %114 ], [ %119, %116 ]
  ret i32 %121
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pci1710_ai_setup_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @pci1710_ai_read_sample(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
