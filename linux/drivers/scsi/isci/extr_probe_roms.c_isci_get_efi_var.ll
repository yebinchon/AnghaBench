; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_probe_roms.c_isci_get_efi_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_probe_roms.c_isci_get_efi_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_orom = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.isci_oem_hdr = type { i32 }
%struct.TYPE_4__ = type { i64 (i32, i32*, i32*, i64*, i64*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for EFI data\0A\00", align 1
@isci_efivar_name = common dso_local global i32 0, align 4
@ISCI_EFI_VENDOR_GUID = common dso_local global i32 0, align 4
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to obtain EFI var data for OEM parms\0A\00", align 1
@ISCI_OEM_SIG = common dso_local global i32 0, align 4
@ISCI_OEM_SIG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid OEM header signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"OEM table checksum failed\0A\00", align 1
@ISCI_ROM_SIG = common dso_local global i32 0, align 4
@ISCI_ROM_SIG_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid OEM table signature\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.isci_orom* @isci_get_efi_var(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.isci_orom*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.isci_orom*, align 8
  %6 = alloca %struct.isci_oem_hdr*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %12, align 4
  store i64 1024, i64* %10, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64* @devm_kzalloc(i32* %14, i64 %15, i32 %16)
  store i64* %17, i64** %11, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.isci_orom* null, %struct.isci_orom** %2, align 8
  br label %99

24:                                               ; preds = %1
  %25 = load i64*, i64** %11, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 4
  %27 = bitcast i64* %26 to %struct.isci_orom*
  store %struct.isci_orom* %27, %struct.isci_orom** %5, align 8
  %28 = call %struct.TYPE_4__* (...) @get_efi()
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = call %struct.TYPE_4__* (...) @get_efi()
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64 (i32, i32*, i32*, i64*, i64*)*, i64 (i32, i32*, i32*, i64*, i64*)** %32, align 8
  %34 = load i32, i32* @isci_efivar_name, align 4
  %35 = load i64*, i64** %11, align 8
  %36 = call i64 %33(i32 %34, i32* @ISCI_EFI_VENDOR_GUID, i32* %12, i64* %10, i64* %35)
  store i64 %36, i64* %4, align 8
  br label %39

37:                                               ; preds = %24
  %38 = load i64, i64* @EFI_NOT_FOUND, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @EFI_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store %struct.isci_orom* null, %struct.isci_orom** %2, align 8
  br label %99

47:                                               ; preds = %39
  %48 = load i64*, i64** %11, align 8
  %49 = bitcast i64* %48 to %struct.isci_oem_hdr*
  store %struct.isci_oem_hdr* %49, %struct.isci_oem_hdr** %6, align 8
  %50 = load %struct.isci_oem_hdr*, %struct.isci_oem_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.isci_oem_hdr, %struct.isci_oem_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ISCI_OEM_SIG, align 4
  %54 = load i32, i32* @ISCI_OEM_SIG_SIZE, align 4
  %55 = call i64 @memcmp(i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 @dev_warn(i32* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store %struct.isci_orom* null, %struct.isci_orom** %2, align 8
  br label %99

61:                                               ; preds = %47
  %62 = load i64*, i64** %11, align 8
  store i64* %62, i64** %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %63

63:                                               ; preds = %72, %61
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 8
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i64*, i64** %7, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %7, align 8
  br label %63

77:                                               ; preds = %63
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(i32* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store %struct.isci_orom* null, %struct.isci_orom** %2, align 8
  br label %99

84:                                               ; preds = %77
  %85 = load %struct.isci_orom*, %struct.isci_orom** %5, align 8
  %86 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ISCI_ROM_SIG, align 4
  %90 = load i32, i32* @ISCI_ROM_SIG_SIZE, align 4
  %91 = call i64 @memcmp(i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = call i32 @dev_warn(i32* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store %struct.isci_orom* null, %struct.isci_orom** %2, align 8
  br label %99

97:                                               ; preds = %84
  %98 = load %struct.isci_orom*, %struct.isci_orom** %5, align 8
  store %struct.isci_orom* %98, %struct.isci_orom** %2, align 8
  br label %99

99:                                               ; preds = %97, %93, %80, %57, %43, %20
  %100 = load %struct.isci_orom*, %struct.isci_orom** %2, align 8
  ret %struct.isci_orom* %100
}

declare dso_local i64* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @get_efi(...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
