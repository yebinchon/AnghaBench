; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_find_pci_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_find_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_pci_identity = type { i32, i32, i32* }

@PCIR_DEVVENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@ID_ALL_IROC_MASK = common dso_local global i32 0, align 4
@ahd_num_pci_devs = common dso_local global i64 0, align 8
@ahd_pci_ident_table = common dso_local global %struct.ahd_pci_identity* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ahd_pci_identity* @ahd_find_pci_device(i32 %0) #0 {
  %2 = alloca %struct.ahd_pci_identity*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahd_pci_identity*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %13 = call i32 @ahd_pci_read_config(i32 %11, i32 %12, i32 2)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCIR_DEVICE, align 4
  %16 = call i32 @ahd_pci_read_config(i32 %14, i32 %15, i32 2)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %19 = call i32 @ahd_pci_read_config(i32 %17, i32 %18, i32 2)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %22 = call i32 @ahd_pci_read_config(i32 %20, i32 %21, i32 2)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ahd_compose_id(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @ID_ALL_IROC_MASK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %57, %1
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @ahd_num_pci_devs, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** @ahd_pci_ident_table, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %36, i64 %37
  store %struct.ahd_pci_identity* %38, %struct.ahd_pci_identity** %9, align 8
  %39 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %40 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %44 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %35
  %49 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  %50 = getelementptr inbounds %struct.ahd_pci_identity, %struct.ahd_pci_identity* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.ahd_pci_identity* null, %struct.ahd_pci_identity** %2, align 8
  br label %61

54:                                               ; preds = %48
  %55 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %9, align 8
  store %struct.ahd_pci_identity* %55, %struct.ahd_pci_identity** %2, align 8
  br label %61

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %31

60:                                               ; preds = %31
  store %struct.ahd_pci_identity* null, %struct.ahd_pci_identity** %2, align 8
  br label %61

61:                                               ; preds = %60, %54, %53
  %62 = load %struct.ahd_pci_identity*, %struct.ahd_pci_identity** %2, align 8
  ret %struct.ahd_pci_identity* %62
}

declare dso_local i32 @ahd_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ahd_compose_id(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
