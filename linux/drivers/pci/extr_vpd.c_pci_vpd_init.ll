; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_vpd* }
%struct.pci_vpd = type { i64, i64, i64, i32, i32*, i32 }

@PCI_CAP_ID_VPD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_VPD_MAX_SIZE = common dso_local global i32 0, align 4
@PCI_DEV_FLAGS_VPD_REF_F0 = common dso_local global i32 0, align 4
@pci_vpd_f0_ops = common dso_local global i32 0, align 4
@pci_vpd_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_vpd_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_vpd*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @PCI_CAP_ID_VPD, align 4
  %8 = call i64 @pci_find_capability(%struct.pci_dev* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.pci_vpd* @kzalloc(i32 48, i32 %15)
  store %struct.pci_vpd* %16, %struct.pci_vpd** %4, align 8
  %17 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %18 = icmp ne %struct.pci_vpd* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load i32, i32* @PCI_VPD_MAX_SIZE, align 4
  %24 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %25 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PCI_DEV_FLAGS_VPD_REF_F0, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %34 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %33, i32 0, i32 4
  store i32* @pci_vpd_f0_ops, i32** %34, align 8
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %37 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %36, i32 0, i32 4
  store i32* @pci_vpd_ops, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %40 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %39, i32 0, i32 3
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %44 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %46 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %48 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 1
  store %struct.pci_vpd* %49, %struct.pci_vpd** %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %38, %19, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_vpd* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
