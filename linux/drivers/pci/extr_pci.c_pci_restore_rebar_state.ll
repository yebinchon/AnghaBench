; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_restore_rebar_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_restore_rebar_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32 }

@PCI_EXT_CAP_ID_REBAR = common dso_local global i32 0, align 4
@PCI_REBAR_CTRL = common dso_local global i64 0, align 8
@PCI_REBAR_CTRL_NBAR_MASK = common dso_local global i32 0, align 4
@PCI_REBAR_CTRL_NBAR_SHIFT = common dso_local global i32 0, align 4
@PCI_REBAR_CTRL_BAR_IDX = common dso_local global i32 0, align 4
@PCI_REBAR_CTRL_BAR_SIZE = common dso_local global i32 0, align 4
@PCI_REBAR_CTRL_BAR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_restore_rebar_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_restore_rebar_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i32, i32* @PCI_EXT_CAP_ID_REBAR, align 4
  %12 = call i32 @pci_find_ext_capability(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @PCI_REBAR_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i64 %21, i32* %6)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PCI_REBAR_CTRL_NBAR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @PCI_REBAR_CTRL_NBAR_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %68, %16
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @PCI_REBAR_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @pci_read_config_dword(%struct.pci_dev* %33, i64 %37, i32* %6)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCI_REBAR_CTRL_BAR_IDX, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %44, i64 %46
  store %struct.resource* %47, %struct.resource** %7, align 8
  %48 = load %struct.resource*, %struct.resource** %7, align 8
  %49 = call i32 @resource_size(%struct.resource* %48)
  %50 = call i32 @ilog2(i32 %49)
  %51 = sub nsw i32 %50, 20
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @PCI_REBAR_CTRL_BAR_SIZE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @PCI_REBAR_CTRL_BAR_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @PCI_REBAR_CTRL, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @pci_write_config_dword(%struct.pci_dev* %61, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %32
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %3, align 4
  %72 = add i32 %71, 8
  store i32 %72, i32* %3, align 4
  br label %28

73:                                               ; preds = %15, %28
  ret void
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
