; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.sym_device = type { i32, %struct.pci_dev* }
%struct.sym_nvram = type { i32, %struct.pci_dev* }
%struct.Scsi_Host = type { i32 }

@SYM_SETUP_HOST_ID = common dso_local global i32 0, align 4
@NAME53C8XX = common dso_local global i32 0, align 4
@sym2_template = common dso_local global i32 0, align 4
@attach_count = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sym2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym2_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.sym_device, align 8
  %7 = alloca %struct.sym_nvram, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %11 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %12 = call i32 @memset(%struct.sym_nvram* %11, i32 0, i32 16)
  %13 = call i32 @memset(%struct.sym_nvram* %7, i32 0, i32 16)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %6, i32 0, i32 1
  store %struct.pci_dev* %14, %struct.pci_dev** %15, align 8
  %16 = load i32, i32* @SYM_SETUP_HOST_ID, align 4
  %17 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i64 @pci_enable_device(%struct.pci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_set_master(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* @NAME53C8XX, align 4
  %27 = call i64 @pci_request_regions(%struct.pci_dev* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %88

30:                                               ; preds = %22
  %31 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %32 = call i64 @sym_check_supported(%struct.sym_nvram* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %79

35:                                               ; preds = %30
  %36 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %37 = call i64 @sym_iomap_device(%struct.sym_nvram* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %79

40:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  %41 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %42 = call i64 @sym_check_raid(%struct.sym_nvram* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %79

45:                                               ; preds = %40
  %46 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %47 = call i64 @sym_set_workarounds(%struct.sym_nvram* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %79

50:                                               ; preds = %45
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %53 = call i32 @sym_config_pqs(%struct.pci_dev* %51, %struct.sym_nvram* %52)
  %54 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %55 = call i32 @sym_get_nvram(%struct.sym_nvram* %54, %struct.sym_nvram* %7)
  store i32 0, i32* %9, align 4
  %56 = load i32, i32* @attach_count, align 4
  %57 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %58 = call %struct.Scsi_Host* @sym_attach(i32* @sym2_template, i32 %56, %struct.sym_nvram* %57)
  store %struct.Scsi_Host* %58, %struct.Scsi_Host** %8, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %60 = icmp ne %struct.Scsi_Host* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %79

62:                                               ; preds = %50
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i64 @scsi_add_host(%struct.Scsi_Host* %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %74

69:                                               ; preds = %62
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %71 = call i32 @scsi_scan_host(%struct.Scsi_Host* %70)
  %72 = load i32, i32* @attach_count, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @attach_count, align 4
  store i32 0, i32* %3, align 4
  br label %98

74:                                               ; preds = %68
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @pci_get_drvdata(%struct.pci_dev* %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i32 @sym_detach(i32 %76, %struct.pci_dev* %77)
  br label %79

79:                                               ; preds = %74, %61, %49, %44, %39, %34
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = bitcast %struct.sym_device* %6 to %struct.sym_nvram*
  %84 = call i32 @sym_iounmap_device(%struct.sym_nvram* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = call i32 @pci_release_regions(%struct.pci_dev* %86)
  br label %88

88:                                               ; preds = %85, %29
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = call i32 @pci_disable_device(%struct.pci_dev* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %21
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %69
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.sym_nvram*, i32, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @sym_check_supported(%struct.sym_nvram*) #1

declare dso_local i64 @sym_iomap_device(%struct.sym_nvram*) #1

declare dso_local i64 @sym_check_raid(%struct.sym_nvram*) #1

declare dso_local i64 @sym_set_workarounds(%struct.sym_nvram*) #1

declare dso_local i32 @sym_config_pqs(%struct.pci_dev*, %struct.sym_nvram*) #1

declare dso_local i32 @sym_get_nvram(%struct.sym_nvram*, %struct.sym_nvram*) #1

declare dso_local %struct.Scsi_Host* @sym_attach(i32*, i32, %struct.sym_nvram*) #1

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @sym_detach(i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @sym_iounmap_device(%struct.sym_nvram*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
