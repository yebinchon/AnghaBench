; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_ldev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_get_ldev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { %struct.myrb_ldev_info*, i32, %struct.Scsi_Host*, %struct.TYPE_2__* }
%struct.myrb_ldev_info = type { i64, i64 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_device = type { %struct.myrb_ldev_info* }

@MYRB_CMD_GET_LDEV_INFO = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@MYRB_DEVICE_OFFLINE = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Adding Logical Drive %d in state %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Logical Drive %d is now %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Logical Drive is now WRITE %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"BACK\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"THRU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.myrb_hba*)* @myrb_get_ldev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @myrb_get_ldev_info(%struct.myrb_hba* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.myrb_hba*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.myrb_ldev_info*, align 8
  %9 = alloca %struct.myrb_ldev_info*, align 8
  %10 = alloca %struct.scsi_device*, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %3, align 8
  %11 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %12 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %17 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %16, i32 0, i32 2
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %7, align 8
  %19 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %20 = load i32, i32* @MYRB_CMD_GET_LDEV_INFO, align 4
  %21 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %22 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call zeroext i16 @myrb_exec_type3(%struct.myrb_hba* %19, i32 %20, i32 %23)
  store i16 %24, i16* %4, align 2
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i16, i16* %4, align 2
  store i16 %31, i16* %2, align 2
  br label %121

32:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %116, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %119

37:                                               ; preds = %33
  store %struct.myrb_ldev_info* null, %struct.myrb_ldev_info** %8, align 8
  %38 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %39 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %38, i32 0, i32 0
  %40 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %40, i64 %42
  store %struct.myrb_ldev_info* %43, %struct.myrb_ldev_info** %9, align 8
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %46 = call i32 @myrb_logical_channel(%struct.Scsi_Host* %45)
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %44, i32 %46, i32 %47, i32 0)
  store %struct.scsi_device* %48, %struct.scsi_device** %10, align 8
  %49 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %50 = icmp ne %struct.scsi_device* %49, null
  br i1 %50, label %72, label %51

51:                                               ; preds = %37
  %52 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %53 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MYRB_DEVICE_OFFLINE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %116

58:                                               ; preds = %51
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %63 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @myrb_devstate_name(i64 %64)
  %66 = call i32 @shost_printk(i32 %59, %struct.Scsi_Host* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %65)
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %69 = call i32 @myrb_logical_channel(%struct.Scsi_Host* %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @scsi_add_device(%struct.Scsi_Host* %67, i32 %69, i32 %70, i32 0)
  br label %116

72:                                               ; preds = %37
  %73 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %74 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %73, i32 0, i32 0
  %75 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %74, align 8
  store %struct.myrb_ldev_info* %75, %struct.myrb_ldev_info** %8, align 8
  %76 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %77 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %8, align 8
  %80 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %72
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %88 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @myrb_devstate_name(i64 %89)
  %91 = call i32 @shost_printk(i32 %84, %struct.Scsi_Host* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %83, %72
  %93 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %94 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %8, align 8
  %97 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load i32, i32* @KERN_INFO, align 4
  %102 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %103 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %104 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %109 = call i32 @sdev_printk(i32 %101, %struct.scsi_device* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %100, %92
  %111 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %8, align 8
  %112 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %113 = call i32 @memcpy(%struct.myrb_ldev_info* %111, %struct.myrb_ldev_info* %112, i32 16)
  %114 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %115 = call i32 @scsi_device_put(%struct.scsi_device* %114)
  br label %116

116:                                              ; preds = %110, %58, %57
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %33

119:                                              ; preds = %33
  %120 = load i16, i16* %4, align 2
  store i16 %120, i16* %2, align 2
  br label %121

121:                                              ; preds = %119, %30
  %122 = load i16, i16* %2, align 2
  ret i16 %122
}

declare dso_local zeroext i16 @myrb_exec_type3(%struct.myrb_hba*, i32, i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @myrb_logical_channel(%struct.Scsi_Host*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i32, i32) #1

declare dso_local i32 @myrb_devstate_name(i64) #1

declare dso_local i32 @scsi_add_device(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.myrb_ldev_info*, %struct.myrb_ldev_info*, i32) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
