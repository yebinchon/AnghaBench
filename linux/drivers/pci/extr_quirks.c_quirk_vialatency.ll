; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_vialatency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_vialatency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_VIA = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_82C686 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_8231 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Applying VIA southbridge workaround\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_vialatency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_vialatency(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %6 = load i32, i32* @PCI_DEVICE_ID_VIA_82C686, align 4
  %7 = call %struct.pci_dev* @pci_get_device(i32 %5, i32 %6, i32* null)
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 66
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10
  br label %53

21:                                               ; preds = %15
  br label %41

22:                                               ; preds = %1
  %23 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %24 = load i32, i32* @PCI_DEVICE_ID_VIA_8231, align 4
  %25 = call %struct.pci_dev* @pci_get_device(i32 %23, i32 %24, i32* null)
  store %struct.pci_dev* %25, %struct.pci_dev** %3, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = icmp eq %struct.pci_dev* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %53

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 18
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  br label %53

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_read_config_byte(%struct.pci_dev* %42, i32 118, i32* %4)
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, -33
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 16
  store i32 %47, i32* %4, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pci_write_config_byte(%struct.pci_dev* %48, i32 118, i32 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_info(%struct.pci_dev* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %41, %39, %28, %20
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = call i32 @pci_dev_put(%struct.pci_dev* %54)
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
