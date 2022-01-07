; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-irq.c_pci_assign_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-irq.c_pci_assign_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_host_bridge = type { i32 (%struct.pci_dev.0*, i32, i32)*, i32 (%struct.pci_dev.1*, i32*)* }
%struct.pci_dev.0 = type opaque
%struct.pci_dev.1 = type opaque

@.str = private unnamed_addr constant [42 x i8] c"runtime IRQ mapping not provided by arch\0A\00", align 1
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"assign IRQ: got %d\0A\00", align 1
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_assign_irq(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_host_bridge*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %9)
  store %struct.pci_host_bridge* %10, %struct.pci_host_bridge** %6, align 8
  %11 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %12 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %11, i32 0, i32 0
  %13 = load i32 (%struct.pci_dev.0*, i32, i32)*, i32 (%struct.pci_dev.0*, i32, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.pci_dev.0*, i32, i32)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = call i32 (%struct.pci_dev*, i8*, ...) @pci_dbg(%struct.pci_dev* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %66

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %21 = call i32 @pci_read_config_byte(%struct.pci_dev* %19, i32 %20, i32* %3)
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %30 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %29, i32 0, i32 1
  %31 = load i32 (%struct.pci_dev.1*, i32*)*, i32 (%struct.pci_dev.1*, i32*)** %30, align 8
  %32 = icmp ne i32 (%struct.pci_dev.1*, i32*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %35 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %34, i32 0, i32 1
  %36 = load i32 (%struct.pci_dev.1*, i32*)*, i32 (%struct.pci_dev.1*, i32*)** %35, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = bitcast %struct.pci_dev* %37 to %struct.pci_dev.1*
  %39 = call i32 %36(%struct.pci_dev.1* %38, i32* %3)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %42 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %41, i32 0, i32 0
  %43 = load i32 (%struct.pci_dev.0*, i32, i32)*, i32 (%struct.pci_dev.0*, i32, i32)** %42, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = bitcast %struct.pci_dev* %44 to %struct.pci_dev.0*
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 %43(%struct.pci_dev.0* %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.pci_dev*, i8*, ...) @pci_dbg(%struct.pci_dev* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %63 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @pci_write_config_byte(%struct.pci_dev* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %53, %15
  ret void
}

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

declare dso_local i32 @pci_dbg(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
