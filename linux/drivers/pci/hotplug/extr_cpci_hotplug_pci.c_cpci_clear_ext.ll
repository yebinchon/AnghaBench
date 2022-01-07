; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_clear_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_clear_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32 }

@PCI_CAP_ID_CHSWP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HS_CSR_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpci_clear_ext(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %3, align 8
  %6 = load %struct.slot*, %struct.slot** %3, align 8
  %7 = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.slot*, %struct.slot** %3, align 8
  %10 = getelementptr inbounds %struct.slot, %struct.slot* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCI_CAP_ID_CHSWP, align 4
  %13 = call i32 @pci_bus_find_capability(i32 %8, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.slot*, %struct.slot** %3, align 8
  %21 = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.slot*, %struct.slot** %3, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 2
  %28 = call i64 @pci_bus_read_config_word(i32 %22, i32 %25, i32 %27, i32* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HS_CSR_EXT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.slot*, %struct.slot** %3, align 8
  %40 = getelementptr inbounds %struct.slot, %struct.slot* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.slot*, %struct.slot** %3, align 8
  %43 = getelementptr inbounds %struct.slot, %struct.slot* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 2
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @pci_bus_write_config_word(i32 %41, i32 %44, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %33
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %50, %30, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pci_bus_find_capability(i32, i32, i32) #1

declare dso_local i64 @pci_bus_read_config_word(i32, i32, i32, i32*) #1

declare dso_local i64 @pci_bus_write_config_word(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
