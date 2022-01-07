; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv-intf.c_hyperv_read_cfg_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv-intf.c_hyperv_read_cfg_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dev*, i8*, i32, i32, i32*)* }
%struct.pci_dev = type { i32 }

@hvpci_block_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hyperv_read_cfg_blk(%struct.pci_dev* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32 (%struct.pci_dev*, i8*, i32, i32, i32*)*, i32 (%struct.pci_dev*, i8*, i32, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hvpci_block_ops, i32 0, i32 0), align 8
  %13 = icmp ne i32 (%struct.pci_dev*, i8*, i32, i32, i32*)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %25

17:                                               ; preds = %5
  %18 = load i32 (%struct.pci_dev*, i8*, i32, i32, i32*)*, i32 (%struct.pci_dev*, i8*, i32, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hvpci_block_ops, i32 0, i32 0), align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 %18(%struct.pci_dev* %19, i8* %20, i32 %21, i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
