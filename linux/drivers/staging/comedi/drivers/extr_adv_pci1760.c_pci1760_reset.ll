; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@PCI1760_CMD_ENA_CNT = common dso_local global i32 0, align 4
@PCI1760_CMD_ENA_CNT_OFLOW = common dso_local global i32 0, align 4
@PCI1760_CMD_ENA_CNT_MATCH = common dso_local global i32 0, align 4
@PCI1760_CMD_RST_CNT = common dso_local global i32 0, align 4
@PCI1760_CMD_SET_CNT_EDGE = common dso_local global i32 0, align 4
@PCI1760_CMD_ENA_FILT = common dso_local global i32 0, align 4
@PCI1760_CMD_ENA_PAT_MATCH = common dso_local global i32 0, align 4
@PCI1760_CMD_SET_PAT_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pci1760_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci1760_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @PCI1760_INTCSR_REG(i32 0)
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i32 0, i64 %8)
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @PCI1760_INTCSR_REG(i32 1)
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i32 0, i64 %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @PCI1760_INTCSR_REG(i32 3)
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 0, i64 %20)
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = load i32, i32* @PCI1760_CMD_ENA_CNT, align 4
  %24 = call i32 @pci1760_cmd(%struct.comedi_device* %22, i32 %23, i32 0)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = load i32, i32* @PCI1760_CMD_ENA_CNT_OFLOW, align 4
  %27 = call i32 @pci1760_cmd(%struct.comedi_device* %25, i32 %26, i32 0)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = load i32, i32* @PCI1760_CMD_ENA_CNT_MATCH, align 4
  %30 = call i32 @pci1760_cmd(%struct.comedi_device* %28, i32 %29, i32 0)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %43, %1
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @PCI1760_CMD_SET_CNT_MATCH(i32 %36)
  %38 = call i32 @pci1760_cmd(%struct.comedi_device* %35, i32 %37, i32 32768)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @PCI1760_CMD_SET_CNT(i32 %40)
  %42 = call i32 @pci1760_cmd(%struct.comedi_device* %39, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = load i32, i32* @PCI1760_CMD_RST_CNT, align 4
  %49 = call i32 @pci1760_cmd(%struct.comedi_device* %47, i32 %48, i32 255)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = load i32, i32* @PCI1760_CMD_SET_CNT_EDGE, align 4
  %52 = call i32 @pci1760_cmd(%struct.comedi_device* %50, i32 %51, i32 0)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %54 = load i32, i32* @PCI1760_CMD_ENA_FILT, align 4
  %55 = call i32 @pci1760_cmd(%struct.comedi_device* %53, i32 %54, i32 0)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = load i32, i32* @PCI1760_CMD_ENA_PAT_MATCH, align 4
  %58 = call i32 @pci1760_cmd(%struct.comedi_device* %56, i32 %57, i32 0)
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = load i32, i32* @PCI1760_CMD_SET_PAT_MATCH, align 4
  %61 = call i32 @pci1760_cmd(%struct.comedi_device* %59, i32 %60, i32 0)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @PCI1760_INTCSR_REG(i32) #1

declare dso_local i32 @pci1760_cmd(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @PCI1760_CMD_SET_CNT_MATCH(i32) #1

declare dso_local i32 @PCI1760_CMD_SET_CNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
