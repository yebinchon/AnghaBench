; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.asc_board = type { i32, %struct.Scsi_Host*, i32*, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@advansys_template = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ASP_ABP940UW = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_38C0800_REV1 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_38C1600_REV1 = common dso_local global i64 0, align 8
@ASC_IS_WIDE_BOARD = common dso_local global i32 0, align 4
@ASC_IS_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @advansys_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.asc_board*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %101

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @DRV_NAME, align 4
  %18 = call i32 @pci_request_regions(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %98

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_set_master(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @advansys_set_latency(%struct.pci_dev* %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i64 @pci_resource_len(%struct.pci_dev* %29, i32 0)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %95

33:                                               ; preds = %22
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_resource_start(%struct.pci_dev* %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  %38 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @advansys_template, i32 32)
  store %struct.Scsi_Host* %38, %struct.Scsi_Host** %8, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %40 = icmp ne %struct.Scsi_Host* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %95

42:                                               ; preds = %33
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %44 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %43)
  store %struct.asc_board* %44, %struct.asc_board** %9, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %49 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 1
  %52 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %53 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %55 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %56 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %55, i32 0, i32 1
  store %struct.Scsi_Host* %54, %struct.Scsi_Host** %56, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCI_DEVICE_ID_ASP_ABP940UW, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %42
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCI_DEVICE_ID_38C0800_REV1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI_DEVICE_ID_38C1600_REV1, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68, %62, %42
  %75 = load i32, i32* @ASC_IS_WIDE_BOARD, align 4
  %76 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %77 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @ASC_IS_PCI, align 4
  %84 = call i32 @advansys_board_found(%struct.Scsi_Host* %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %92

88:                                               ; preds = %80
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %91 = call i32 @pci_set_drvdata(%struct.pci_dev* %89, %struct.Scsi_Host* %90)
  store i32 0, i32* %3, align 4
  br label %103

92:                                               ; preds = %87
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %94 = call i32 @scsi_host_put(%struct.Scsi_Host* %93)
  br label %95

95:                                               ; preds = %92, %41, %32
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = call i32 @pci_release_regions(%struct.pci_dev* %96)
  br label %98

98:                                               ; preds = %95, %21
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = call i32 @pci_disable_device(%struct.pci_dev* %99)
  br label %101

101:                                              ; preds = %98, %14
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %88
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @advansys_set_latency(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @advansys_board_found(%struct.Scsi_Host*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
