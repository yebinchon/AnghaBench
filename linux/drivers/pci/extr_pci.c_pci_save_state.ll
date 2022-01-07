; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_save_state(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @pci_read_config_dword(%struct.pci_dev* %9, i32 %11, i32* %17)
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_save_pcie_state(%struct.pci_dev* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_save_pcix_state(%struct.pci_dev* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_save_ltr_state(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = call i32 @pci_save_dpc_state(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = call i32 @pci_save_vc_state(%struct.pci_dev* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %36, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_save_pcie_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_pcix_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_ltr_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_dpc_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_vc_state(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
