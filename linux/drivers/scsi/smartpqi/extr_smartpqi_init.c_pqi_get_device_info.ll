; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PQI_CMD_STATUS_ABORTED = common dso_local global i32 0, align 4
@PQI_INQUIRY_PAGE0_RETRIES = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i32 0, align 4
@SA_RAID_UNKNOWN = common dso_local global i32 0, align 4
@CISS_LV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't get device id for scsi %d:%d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_get_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_get_device_info(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %5, align 8
  %9 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %9, i32 0, i32 12
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 64, i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %142

22:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %25 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info* %24, i32 %27, i32 0, i32* %28, i32 64)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %48

33:                                               ; preds = %23
  %34 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %35 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PQI_CMD_STATUS_ABORTED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @PQI_INQUIRY_PAGE0_RETRIES, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %37, %33
  br label %138

47:                                               ; preds = %41
  br label %23

48:                                               ; preds = %32
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = call i32 @scsi_sanitize_inquiry_string(i32* %50, i32 8)
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 16
  %54 = call i32 @scsi_sanitize_inquiry_string(i32* %53, i32 16)
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 31
  %59 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = call i32 @memcpy(i32 %63, i32* %65, i32 4)
  %67 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %68 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 16
  %72 = call i32 @memcpy(i32 %69, i32* %71, i32 4)
  %73 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %74 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %48
  %77 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %78 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TYPE_DISK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %76
  %83 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %84 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* @SA_RAID_UNKNOWN, align 4
  %89 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %90 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @CISS_LV_OK, align 4
  %92 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %93 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %95 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %106

96:                                               ; preds = %82
  %97 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %98 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %99 = call i32 @pqi_get_raid_level(%struct.pqi_ctrl_info* %97, %struct.pqi_scsi_dev* %98)
  %100 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %101 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %102 = call i32 @pqi_get_raid_bypass_status(%struct.pqi_ctrl_info* %100, %struct.pqi_scsi_dev* %101)
  %103 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %104 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %105 = call i32 @pqi_get_volume_status(%struct.pqi_ctrl_info* %103, %struct.pqi_scsi_dev* %104)
  br label %106

106:                                              ; preds = %96, %87
  br label %107

107:                                              ; preds = %106, %76, %48
  %108 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %109 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %110 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %113 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @pqi_get_device_id(%struct.pqi_ctrl_info* %108, i32 %111, i32 %114, i32 4)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %107
  %118 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %119 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %118, i32 0, i32 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %123 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %128 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %131 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %134 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %129, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %117, %107
  br label %138

138:                                              ; preds = %137, %46
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @kfree(i32* %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %19, %13
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pqi_scsi_inquiry(%struct.pqi_ctrl_info*, i32, i32, i32*, i32) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @scsi_sanitize_inquiry_string(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @pqi_get_raid_level(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_get_raid_bypass_status(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_get_volume_status(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i64 @pqi_get_device_id(%struct.pqi_ctrl_info*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
