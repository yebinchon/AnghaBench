; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_default_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_default_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { %struct.pci_dev*, i64 }
%struct.pci_dev = type { i32 }
%struct.perm_bits = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, %struct.perm_bits*, i32, i64*)* @vfio_default_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_default_config_read(%struct.vfio_pci_device* %0, i32 %1, i32 %2, %struct.perm_bits* %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perm_bits*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.perm_bits* %3, %struct.perm_bits** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %18 = load i64*, i64** %13, align 8
  %19 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %20 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @memcpy(i64* %18, i64 %24, i32 %25)
  %27 = load %struct.perm_bits*, %struct.perm_bits** %11, align 8
  %28 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @memcpy(i64* %14, i64 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, 8
  %37 = sub nsw i32 32, %36
  %38 = lshr i32 -1, %37
  %39 = call i64 @cpu_to_le32(i32 %38)
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %6
  %43 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %44 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %43, i32 0, i32 0
  %45 = load %struct.pci_dev*, %struct.pci_dev** %44, align 8
  store %struct.pci_dev* %45, %struct.pci_dev** %15, align 8
  store i64 0, i64* %16, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @vfio_user_config_read(%struct.pci_dev* %46, i32 %47, i64* %16, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %7, align 4
  br label %67

54:                                               ; preds = %42
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %14, align 8
  %57 = xor i64 %56, -1
  %58 = and i64 %55, %57
  %59 = load i64*, i64** %13, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = and i64 %60, %61
  %63 = or i64 %58, %62
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %54, %6
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %52
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @vfio_user_config_read(%struct.pci_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
