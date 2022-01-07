; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i32, i32, i32 }

@PCI9118_INT_CTRL_REG = common dso_local global i64 0, align 8
@PCI9118_AI_CFG_REG = common dso_local global i64 0, align 8
@PCI9118_AI_CTRL_SOFTG = common dso_local global i32 0, align 4
@PCI9118_AI_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pci9118_ai_cmd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_ai_cmd_start(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pci9118_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  store %struct.pci9118_private* %6, %struct.pci9118_private** %3, align 8
  %7 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %8 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI9118_INT_CTRL_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outl(i32 %9, i64 %14)
  %16 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %17 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI9118_AI_CFG_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 %18, i64 %23)
  %25 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %26 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %32 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci9118_start_pacer(%struct.comedi_device* %30, i32 %33)
  %35 = load i32, i32* @PCI9118_AI_CTRL_SOFTG, align 4
  %36 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %37 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29, %1
  %41 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %42 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI9118_AI_CTRL_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outl(i32 %43, i64 %48)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @pci9118_start_pacer(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
