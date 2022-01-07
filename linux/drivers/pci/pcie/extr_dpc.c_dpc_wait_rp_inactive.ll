; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_wait_rp_inactive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_wait_rp_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PCI_EXP_DPC_STATUS = common dso_local global i32 0, align 4
@PCI_EXP_DPC_RP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"root port still busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpc_dev*)* @dpc_wait_rp_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpc_wait_rp_inactive(%struct.dpc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpc_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpc_dev* %0, %struct.dpc_dev** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @HZ, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load %struct.dpc_dev*, %struct.dpc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.dpc_dev*, %struct.dpc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PCI_EXP_DPC_STATUS, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i32 %22, i32* %7)
  br label %24

24:                                               ; preds = %37, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PCI_EXP_DPC_RP_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @time_after(i64 %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = call i32 @msleep(i32 10)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PCI_EXP_DPC_STATUS, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @pci_read_config_word(%struct.pci_dev* %39, i32 %42, i32* %7)
  br label %24

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PCI_EXP_DPC_RP_BUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = call i32 @pci_warn(%struct.pci_dev* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
