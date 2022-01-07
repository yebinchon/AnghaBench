; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1724.c_adv_pci1724_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1724.c_adv_pci1724_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32*, i64 }
%struct.comedi_insn = type { i32, i32 }

@PCI1724_SYNC_CTRL_REG = common dso_local global i64 0, align 8
@adv_pci1724_dac_idle = common dso_local global i32 0, align 4
@PCI1724_DAC_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @adv_pci1724_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv_pci1724_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @PCI1724_DAC_CTRL_GX(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @PCI1724_DAC_CTRL_CX(i32 %25)
  %27 = or i64 %24, %26
  %28 = load i64, i64* %10, align 8
  %29 = or i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI1724_SYNC_CTRL_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outl(i32 0, i64 %35)
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %76, %4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %40 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %51 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %52 = load i32, i32* @adv_pci1724_dac_idle, align 4
  %53 = call i32 @comedi_timeout(%struct.comedi_device* %49, %struct.comedi_subdevice* %50, %struct.comedi_insn* %51, i32 %52, i32 0)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %83

58:                                               ; preds = %43
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @PCI1724_DAC_CTRL_DATA(i32 %60)
  %62 = or i32 %59, %61
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCI1724_DAC_CTRL_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outl(i32 %62, i64 %67)
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %37

79:                                               ; preds = %37
  %80 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %81 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %56
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @PCI1724_DAC_CTRL_GX(i32) #1

declare dso_local i64 @PCI1724_DAC_CTRL_CX(i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @PCI1724_DAC_CTRL_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
