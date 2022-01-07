; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_restore_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_restore_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_3__*, %struct.dasd_eckd_private* }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_eckd_private = type { i32, i32 }
%struct.dasd_eckd_characteristics = type { i32 }
%struct.dasd_uid = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Read configuration data failed, rc=%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"The UID of the DASD has changed\0A\00", align 1
@DASD_CQR_FLAGS_FAILFAST = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Read device characteristic failed, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_restore_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_restore_device(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.dasd_eckd_characteristics, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_uid, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %4, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %14 = call i32 @dasd_eckd_read_conf(%struct.dasd_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @DBF_WARNING, align 4
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DBF_EVENT_DEVID(i32 %18, %struct.TYPE_3__* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %118

24:                                               ; preds = %1
  %25 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %26 = call i32 @dasd_eckd_get_uid(%struct.dasd_device* %25, %struct.dasd_uid* %7)
  %27 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %28 = call i32 @dasd_eckd_generate_uid(%struct.dasd_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %31)
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %36 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %35, i32 0, i32 1
  %37 = call i64 @memcmp(i32* %36, %struct.dasd_uid* %7, i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %24
  %46 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %47 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32 %49, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %118

55:                                               ; preds = %45
  %56 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %57 = call i32 @dasd_alias_make_device_known_to_lcu(%struct.dasd_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %118

61:                                               ; preds = %55
  %62 = load i32, i32* @DASD_CQR_FLAGS_FAILFAST, align 4
  %63 = call i32 @set_bit(i32 %62, i64* %9)
  %64 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @dasd_eckd_validate_server(%struct.dasd_device* %64, i64 %65)
  %67 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %68 = call i32 @dasd_eckd_read_conf(%struct.dasd_device* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load i32, i32* @DBF_WARNING, align 4
  %73 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %74 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @DBF_EVENT_DEVID(i32 %72, %struct.TYPE_3__* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %115

78:                                               ; preds = %61
  %79 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %80 = call i32 @dasd_eckd_read_features(%struct.dasd_device* %79)
  %81 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %82 = call i32 @dasd_eckd_read_vol_info(%struct.dasd_device* %81)
  %83 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %84 = call i32 @dasd_eckd_read_ext_pool_info(%struct.dasd_device* %83)
  %85 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %86 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %87 = call i32 @dasd_generic_read_dev_chars(%struct.dasd_device* %85, i32 %86, %struct.dasd_eckd_characteristics* %5, i32 64)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load i32, i32* @DBF_WARNING, align 4
  %92 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %93 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @DBF_EVENT_DEVID(i32 %91, %struct.TYPE_3__* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %115

97:                                               ; preds = %78
  %98 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %99 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %100)
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @spin_lock_irqsave(i32 %101, i64 %102)
  %104 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %105 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %104, i32 0, i32 0
  %106 = call i32 @memcpy(i32* %105, %struct.dasd_eckd_characteristics* %5, i32 4)
  %107 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %108 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = call i32 @get_ccwdev_lock(%struct.TYPE_3__* %109)
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32 %110, i64 %111)
  %113 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %114 = call i32 @dasd_alias_add_device(%struct.dasd_device* %113)
  store i32 0, i32* %2, align 4
  br label %119

115:                                              ; preds = %90, %71
  %116 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %117 = call i32 @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device* %116)
  br label %118

118:                                              ; preds = %115, %60, %54, %17
  store i32 -1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %97
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @dasd_eckd_read_conf(%struct.dasd_device*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @dasd_eckd_get_uid(%struct.dasd_device*, %struct.dasd_uid*) #1

declare dso_local i32 @dasd_eckd_generate_uid(%struct.dasd_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_3__*) #1

declare dso_local i64 @memcmp(i32*, %struct.dasd_uid*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_alias_make_device_known_to_lcu(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @dasd_eckd_validate_server(%struct.dasd_device*, i64) #1

declare dso_local i32 @dasd_eckd_read_features(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eckd_read_vol_info(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eckd_read_ext_pool_info(%struct.dasd_device*) #1

declare dso_local i32 @dasd_generic_read_dev_chars(%struct.dasd_device*, i32, %struct.dasd_eckd_characteristics*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dasd_eckd_characteristics*, i32) #1

declare dso_local i32 @dasd_alias_add_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
