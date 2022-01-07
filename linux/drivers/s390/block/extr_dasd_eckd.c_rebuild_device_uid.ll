; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_rebuild_device_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_rebuild_device_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32 }
%struct.path_verification_work_data = type { %struct.TYPE_5__, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Read configuration data returned error %d\00", align 1
@DASD_ECKD_RCD_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.path_verification_work_data*)* @rebuild_device_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuild_device_uid(%struct.dasd_device* %0, %struct.path_verification_work_data* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.path_verification_work_data*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.path_verification_work_data* %1, %struct.path_verification_work_data** %4, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 1
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %10, align 8
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %5, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = call i32 @dasd_path_get_opm(%struct.dasd_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  store i32 128, i32* %6, align 4
  br label %16

16:                                               ; preds = %79, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %79

25:                                               ; preds = %19
  %26 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %27 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %26, i32 0, i32 0
  %28 = call i32 @memset(%struct.TYPE_5__* %27, i32 0, i32 8)
  %29 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %30 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %29, i32 0, i32 1
  %31 = call i32 @memset(%struct.TYPE_5__* %30, i32 0, i32 8)
  %32 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %33 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %32, i32 0, i32 2
  %34 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %35 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %39 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %38, i32 0, i32 1
  %40 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %41 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @dasd_eckd_read_conf_immediately(%struct.dasd_device* %37, %struct.TYPE_5__* %39, i32* %44, i32 %42)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %25
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %79

54:                                               ; preds = %48
  %55 = load i32, i32* @DBF_WARNING, align 4
  %56 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @DBF_EVENT_DEVID(i32 %55, i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %82

61:                                               ; preds = %25
  %62 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %63 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %66 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %65, i32 0, i32 0
  %67 = load i32, i32* @DASD_ECKD_RCD_DATA_SIZE, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @memcpy(i32 %64, i32* %69, i32 %67)
  %71 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %72 = call i64 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %78

77:                                               ; preds = %61
  br label %82

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %53, %24
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %16

82:                                               ; preds = %77, %54, %16
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %87 = call i32 @dasd_eckd_generate_uid(%struct.dasd_device* %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @dasd_path_get_opm(%struct.dasd_device*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dasd_eckd_read_conf_immediately(%struct.dasd_device*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private*) #1

declare dso_local i32 @dasd_eckd_generate_uid(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
