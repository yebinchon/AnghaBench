; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.dasd_device = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dasd_probeonly = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Accessing the DASD failed because it is in probeonly mode\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@DASD_STATE_BASIC = common dso_local global i64 0, align 8
@DBF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c" Cannot open unrecognized device\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @dasd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dasd_device* @dasd_device_from_gendisk(i32 %10)
  store %struct.dasd_device* %11, %struct.dasd_device** %6, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %13 = icmp ne %struct.dasd_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %105

17:                                               ; preds = %2
  %18 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %24 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %25 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %24, i32 0, i32 4
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %96

31:                                               ; preds = %17
  %32 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @try_module_get(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %96

42:                                               ; preds = %31
  %43 = load i64, i64* @dasd_probeonly, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %47 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %46, i32 0, i32 5
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %89

53:                                               ; preds = %42
  %54 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %55 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DASD_STATE_BASIC, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @DBF_ERR, align 4
  %61 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %62 = call i32 @DBF_DEV_EVENT(i32 %60, %struct.dasd_device* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %89

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @FMODE_WRITE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %72 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %73 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %72, i32 0, i32 4
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %78 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76, %70
  %84 = load i32, i32* @EROFS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %89

86:                                               ; preds = %76, %65
  %87 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %88 = call i32 @dasd_put_device(%struct.dasd_device* %87)
  store i32 0, i32* %3, align 4
  br label %105

89:                                               ; preds = %83, %59, %45
  %90 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %91 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @module_put(i32 %94)
  br label %96

96:                                               ; preds = %89, %39, %28
  %97 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %98 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = call i32 @atomic_dec(i32* %100)
  %102 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %103 = call i32 @dasd_put_device(%struct.dasd_device* %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %96, %86, %14
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.dasd_device* @dasd_device_from_gendisk(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
