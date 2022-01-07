; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_raid_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_raid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pqi_scsi_dev = type { %struct.raid_map*, i32 }
%struct.raid_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CISS_GET_RAID_MAP = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Requested %d bytes, received %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_get_raid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_get_raid_map(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.raid_map*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.raid_map* @kmalloc(i32 4, i32 %9)
  store %struct.raid_map* %10, %struct.raid_map** %8, align 8
  %11 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %12 = icmp ne %struct.raid_map* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %18 = load i32, i32* @CISS_GET_RAID_MAP, align 4
  %19 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %23 = load i32, i32* @NO_TIMEOUT, align 4
  %24 = call i32 @pqi_send_scsi_raid_request(%struct.pqi_ctrl_info* %17, i32 %18, i32 %21, %struct.raid_map* %22, i32 4, i32 0, i32* null, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %88

28:                                               ; preds = %16
  %29 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %30 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %29, i32 0, i32 0
  %31 = call i32 @get_unaligned_le32(i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 4
  br i1 %34, label %35, label %76

35:                                               ; preds = %28
  %36 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %37 = call i32 @kfree(%struct.raid_map* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.raid_map* @kmalloc(i32 %38, i32 %39)
  store %struct.raid_map* %40, %struct.raid_map** %8, align 8
  %41 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %42 = icmp ne %struct.raid_map* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %92

46:                                               ; preds = %35
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %48 = load i32, i32* @CISS_GET_RAID_MAP, align 4
  %49 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NO_TIMEOUT, align 4
  %55 = call i32 @pqi_send_scsi_raid_request(%struct.pqi_ctrl_info* %47, i32 %48, i32 %51, %struct.raid_map* %52, i32 %53, i32 0, i32* null, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %88

59:                                               ; preds = %46
  %60 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %61 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %60, i32 0, i32 0
  %62 = call i32 @get_unaligned_le32(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %67 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %72 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %71, i32 0, i32 0
  %73 = call i32 @get_unaligned_le32(i32* %72)
  %74 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  br label %88

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %28
  %77 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %78 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %79 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %80 = call i32 @pqi_validate_raid_map(%struct.pqi_ctrl_info* %77, %struct.pqi_scsi_dev* %78, %struct.raid_map* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %88

84:                                               ; preds = %76
  %85 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %86 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %87 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %86, i32 0, i32 0
  store %struct.raid_map* %85, %struct.raid_map** %87, align 8
  store i32 0, i32* %3, align 4
  br label %92

88:                                               ; preds = %83, %65, %58, %27
  %89 = load %struct.raid_map*, %struct.raid_map** %8, align 8
  %90 = call i32 @kfree(%struct.raid_map* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %84, %43, %13
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.raid_map* @kmalloc(i32, i32) #1

declare dso_local i32 @pqi_send_scsi_raid_request(%struct.pqi_ctrl_info*, i32, i32, %struct.raid_map*, i32, i32, i32*, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @kfree(%struct.raid_map*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @pqi_validate_raid_map(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.raid_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
