; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_user_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_user_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32*, i32)* @vfio_user_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_user_config_read(%struct.pci_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %30 [
    i32 1, label %16
    i32 2, label %21
    i32 4, label %26
  ]

16:                                               ; preds = %4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pci_user_read_config_byte(%struct.pci_dev* %17, i32 %18, i32* %11)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %10, align 4
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pci_user_read_config_word(%struct.pci_dev* %22, i32 %23, i32* %12)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %10, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_user_read_config_dword(%struct.pci_dev* %27, i32 %28, i32* %10)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %4, %26, %21, %16
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @pci_user_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_user_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_user_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
