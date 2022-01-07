; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_proc.c_proc_bus_pci_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_proc.c_proc_bus_pci_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pci_filp_private* }
%struct.pci_filp_private = type { i32, i32 }
%struct.pci_dev = type { i32 }

@LOCKDOWN_PCI_ACCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@pci_mmap_io = common dso_local global i32 0, align 4
@pci_mmap_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @proc_bus_pci_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @proc_bus_pci_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @file_inode(%struct.file* %10)
  %12 = call %struct.pci_dev* @PDE_DATA(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @LOCKDOWN_PCI_ACCESS, align 4
  %14 = call i32 @security_locked_down(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %4, align 8
  br label %34

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %27 [
    i32 131, label %22
  ]

22:                                               ; preds = %20
  %23 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_domain_nr(i32 %25)
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub nsw i64 0, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %31, %17
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local %struct.pci_dev* @PDE_DATA(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @security_locked_down(i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
