; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.wd719x = type { i32, %struct.pci_dev* }

@.str = private unnamed_addr constant [31 x i8] c"Unable to set 32-bit DMA mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wd719x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wd719x_template = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @wd719x_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd719x_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.wd719x*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %101

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @DMA_BIT_MASK(i32 32)
  %18 = call i64 @dma_set_mask(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %98

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_request_regions(%struct.pci_dev* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %98

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_set_master(%struct.pci_dev* %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i64 @pci_resource_len(%struct.pci_dev* %35, i32 0)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %95

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @wd719x_template, i32 16)
  store %struct.Scsi_Host* %42, %struct.Scsi_Host** %7, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %44 = icmp ne %struct.Scsi_Host* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %95

46:                                               ; preds = %39
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %48 = call %struct.wd719x* @shost_priv(%struct.Scsi_Host* %47)
  store %struct.wd719x* %48, %struct.wd719x** %8, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call i32 @pci_iomap(%struct.pci_dev* %49, i32 0, i32 0)
  %51 = load %struct.wd719x*, %struct.wd719x** %8, align 8
  %52 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wd719x*, %struct.wd719x** %8, align 8
  %54 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %92

58:                                               ; preds = %46
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load %struct.wd719x*, %struct.wd719x** %8, align 8
  %61 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %60, i32 0, i32 1
  store %struct.pci_dev* %59, %struct.pci_dev** %61, align 8
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %63 = call i32 @wd719x_board_found(%struct.Scsi_Host* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %86

67:                                               ; preds = %58
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %69 = load %struct.wd719x*, %struct.wd719x** %8, align 8
  %70 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %69, i32 0, i32 1
  %71 = load %struct.pci_dev*, %struct.pci_dev** %70, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = call i32 @scsi_add_host(%struct.Scsi_Host* %68, i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %83

77:                                               ; preds = %67
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %79 = call i32 @scsi_scan_host(%struct.Scsi_Host* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %82 = call i32 @pci_set_drvdata(%struct.pci_dev* %80, %struct.Scsi_Host* %81)
  store i32 0, i32* %3, align 4
  br label %103

83:                                               ; preds = %76
  %84 = load %struct.wd719x*, %struct.wd719x** %8, align 8
  %85 = call i32 @wd719x_destroy(%struct.wd719x* %84)
  br label %86

86:                                               ; preds = %83, %66
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = load %struct.wd719x*, %struct.wd719x** %8, align 8
  %89 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pci_iounmap(%struct.pci_dev* %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %57
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %94 = call i32 @scsi_host_put(%struct.Scsi_Host* %93)
  br label %95

95:                                               ; preds = %92, %45, %38
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = call i32 @pci_release_regions(%struct.pci_dev* %96)
  br label %98

98:                                               ; preds = %95, %29, %20
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = call i32 @pci_disable_device(%struct.pci_dev* %99)
  br label %101

101:                                              ; preds = %98, %13
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %77
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.wd719x* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @wd719x_board_found(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @wd719x_destroy(%struct.wd719x*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
