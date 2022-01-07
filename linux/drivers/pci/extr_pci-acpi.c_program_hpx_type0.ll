; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_program_hpx_type0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_program_hpx_type0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpx_type0 = type { i32, i64, i32, i64, i32 }
%struct.pci_dev = type { i32 }

@pci_default_type0 = common dso_local global %struct.hpx_type0 zeroinitializer, align 8
@.str = private unnamed_addr constant [51 x i8] c"PCI settings rev %d not supported; using defaults\0A\00", align 1
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCI_SEC_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hpx_type0*)* @program_hpx_type0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_hpx_type0(%struct.pci_dev* %0, %struct.hpx_type0* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hpx_type0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hpx_type0* %1, %struct.hpx_type0** %4, align 8
  %7 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %8 = icmp ne %struct.hpx_type0* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.hpx_type0* @pci_default_type0, %struct.hpx_type0** %4, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %12 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %18 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pci_warn(%struct.pci_dev* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.hpx_type0* @pci_default_type0, %struct.hpx_type0** %4, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %24 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %25 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_write_config_byte(%struct.pci_dev* %22, i32 %23, i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %30 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %31 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pci_write_config_byte(%struct.pci_dev* %28, i32 %29, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load i32, i32* @PCI_COMMAND, align 4
  %36 = call i32 @pci_read_config_word(%struct.pci_dev* %34, i32 %35, i32* %5)
  %37 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %38 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %21
  %42 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %21
  %46 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %47 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = load i32, i32* @PCI_COMMAND, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pci_write_config_word(%struct.pci_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  %63 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %54
  %66 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %67 = load i32, i32* @PCI_SEC_LATENCY_TIMER, align 4
  %68 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %69 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pci_write_config_byte(%struct.pci_dev* %66, i32 %67, i32 %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %74 = call i32 @pci_read_config_word(%struct.pci_dev* %72, i32 %73, i32* %6)
  %75 = load %struct.hpx_type0*, %struct.hpx_type0** %4, align 8
  %76 = getelementptr inbounds %struct.hpx_type0, %struct.hpx_type0* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load i32, i32* @PCI_BRIDGE_CTL_PARITY, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %65
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @pci_write_config_word(%struct.pci_dev* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %54
  ret void
}

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
