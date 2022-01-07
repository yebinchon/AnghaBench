; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_crcsr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_crcsr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i32, i64, i32 }
%struct.pci_dev = type { i32 }

@geoid = common dso_local global i32 0, align 4
@VCSR_BS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"CR/CSR Offset: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Slot number is unset, not configuring CR/CSR space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VME_CRCSR_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for CR/CSR image\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VCSR_TO = common dso_local global i64 0, align 8
@VCSR_CTL = common dso_local global i64 0, align 8
@CA91CX42_VCSR_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*, %struct.pci_dev*)* @ca91cx42_crcsr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_crcsr_init(%struct.vme_bridge* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vme_bridge*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %10 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %11 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %10, i32 0, i32 0
  %12 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %11, align 8
  store %struct.ca91cx42_driver* %12, %struct.ca91cx42_driver** %9, align 8
  %13 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %14 = call i32 @ca91cx42_slot_get(%struct.vme_bridge* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @geoid, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @geoid, align 4
  %19 = shl i32 %18, 27
  %20 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %21 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VCSR_BS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 %19, i64 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %26
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load i32, i32* @VME_CRCSR_BUF_SIZE, align 4
  %42 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %43 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %42, i32 0, i32 0
  %44 = call i32 @pci_zalloc_consistent(%struct.pci_dev* %40, i32 %41, i32* %43)
  %45 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %46 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %48 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %39
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %39
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 524288
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %61 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub i32 %62, %63
  %65 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %66 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @VCSR_TO, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @iowrite32(i32 %64, i64 %69)
  %71 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %72 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VCSR_CTL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @ioread32(i64 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @CA91CX42_VCSR_CTL_EN, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %82 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VCSR_CTL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @iowrite32(i32 %80, i64 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %57, %51, %33
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ca91cx42_slot_get(%struct.vme_bridge*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_zalloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
