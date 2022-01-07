; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.aac_dev = type { %struct.aac_hba_map_info**, %struct.TYPE_2__ }
%struct.aac_hba_map_info = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@AAC_OPTION_MU_RESET = common dso_local global i32 0, align 4
@AAC_OPTION_DOORBELL_RESET = common dso_local global i32 0, align 4
@AAC_OPTION_IGNORE_RESET = common dso_local global i32 0, align 4
@aac_check_reset = common dso_local global i32 0, align 4
@IOP_HWSOFT_RESET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@AAC_MAX_BUSES = common dso_local global i32 0, align 4
@AAC_MAX_TARGETS = common dso_local global i32 0, align 4
@AAC_DEVTYPE_NATIVE_RAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aac_hba_map_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %3, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %4, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.aac_dev*
  store %struct.aac_dev* %23, %struct.aac_dev** %5, align 8
  %24 = load i32, i32* @FAILED, align 4
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %26 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AAC_OPTION_MU_RESET, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @AAC_OPTION_DOORBELL_RESET, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @AAC_OPTION_IGNORE_RESET, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40, %1
  %44 = load i32, i32* @aac_check_reset, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* @aac_check_reset, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %54 = load i32, i32* @IOP_HWSOFT_RESET, align 4
  %55 = call i64 @aac_reset_adapter(%struct.aac_dev* %53, i32 2, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @SUCCESS, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %49, %43, %40
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %98, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @AAC_MAX_BUSES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %94, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @AAC_MAX_TARGETS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %76 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %75, i32 0, i32 0
  %77 = load %struct.aac_hba_map_info**, %struct.aac_hba_map_info*** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %77, i64 %79
  %81 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %81, i64 %83
  store %struct.aac_hba_map_info* %84, %struct.aac_hba_map_info** %13, align 8
  %85 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %13, align 8
  %86 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AAC_DEVTYPE_NATIVE_RAW, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %13, align 8
  %92 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %74
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %70

97:                                               ; preds = %70
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %65

101:                                              ; preds = %65
  br label %102

102:                                              ; preds = %101, %60
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @aac_reset_adapter(%struct.aac_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
