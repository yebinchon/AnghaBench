; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reload_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reload_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_4__*, %struct.dasd_eckd_private* }
%struct.TYPE_4__ = type { i32 }
%struct.dasd_eckd_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_uid = type { i32, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s.%s.%04x.%02x.%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s.%s.%04x.%02x\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"An Alias device was reassigned to a new base device with UID: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_reload_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_reload_device(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [60 x i8], align 16
  %8 = alloca %struct.dasd_uid, align 8
  %9 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %4, align 8
  %13 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %14 = call i32 @dasd_alias_remove_device(%struct.dasd_device* %13)
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %17)
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %22 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @get_ccwdev_lock(%struct.TYPE_4__* %27)
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32 %28, i64 %29)
  %31 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %32 = call i32 @dasd_eckd_read_conf(%struct.dasd_device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %88

36:                                               ; preds = %1
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = call i32 @dasd_eckd_generate_uid(%struct.dasd_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %88

42:                                               ; preds = %36
  %43 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %44 = call i32 @dasd_alias_update_add_device(%struct.dasd_device* %43)
  %45 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %46 = call i32 @dasd_eckd_get_uid(%struct.dasd_device* %45, %struct.dasd_uid* %8)
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %58 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %57, i32 60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %61, i32 %63, i32 %65, i8* %67)
  br label %80

69:                                               ; preds = %51
  %70 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %71 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %70, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* %74, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %69, %56
  %81 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %82 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %86 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %80, %42
  store i32 0, i32* %2, align 4
  br label %89

88:                                               ; preds = %41, %35
  store i32 -1, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @dasd_alias_remove_device(%struct.dasd_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_eckd_read_conf(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eckd_generate_uid(%struct.dasd_device*) #1

declare dso_local i32 @dasd_alias_update_add_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eckd_get_uid(%struct.dasd_device*, %struct.dasd_uid*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
