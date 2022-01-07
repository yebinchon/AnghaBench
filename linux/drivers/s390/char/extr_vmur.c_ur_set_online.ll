; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ccw_device = type { i32 }
%struct.urdev = type { i64, %struct.TYPE_12__*, i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ur_set_online: cdev=%p\0A\00", align 1
@vmur_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ur_first_dev_maj_min = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ur_fops = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@READER_PUNCH_DEVTYPE = common dso_local global i64 0, align 8
@DEV_CLASS_UR_I = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"vmrdr-%s\00", align 1
@DEV_CLASS_UR_O = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"vmpun-%s\00", align 1
@PRINTER_DEVTYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"vmprt-%s\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@vmur_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"ur_set_online: device_create rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @ur_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_set_online(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.urdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.ccw_device* %9)
  %11 = call i32 @mutex_lock(i32* @vmur_mutex)
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = call %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device* %12)
  store %struct.urdev* %13, %struct.urdev** %4, align 8
  %14 = load %struct.urdev*, %struct.urdev** %4, align 8
  %15 = icmp ne %struct.urdev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %156

19:                                               ; preds = %1
  %20 = load %struct.urdev*, %struct.urdev** %4, align 8
  %21 = getelementptr inbounds %struct.urdev, %struct.urdev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %153

27:                                               ; preds = %19
  %28 = load %struct.urdev*, %struct.urdev** %4, align 8
  %29 = getelementptr inbounds %struct.urdev, %struct.urdev* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @ur_first_dev_maj_min, align 4
  %33 = call i32 @MAJOR(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = call %struct.TYPE_12__* (...) @cdev_alloc()
  %35 = load %struct.urdev*, %struct.urdev** %4, align 8
  %36 = getelementptr inbounds %struct.urdev, %struct.urdev* %35, i32 0, i32 1
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %36, align 8
  %37 = load %struct.urdev*, %struct.urdev** %4, align 8
  %38 = getelementptr inbounds %struct.urdev, %struct.urdev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %153

44:                                               ; preds = %27
  %45 = load %struct.urdev*, %struct.urdev** %4, align 8
  %46 = getelementptr inbounds %struct.urdev, %struct.urdev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store %struct.TYPE_11__* @ur_fops, %struct.TYPE_11__** %48, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ur_fops, i32 0, i32 0), align 4
  %50 = load %struct.urdev*, %struct.urdev** %4, align 8
  %51 = getelementptr inbounds %struct.urdev, %struct.urdev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.urdev*, %struct.urdev** %4, align 8
  %55 = getelementptr inbounds %struct.urdev, %struct.urdev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @MKDEV(i32 %57, i32 %58)
  %60 = call i32 @cdev_add(%struct.TYPE_12__* %56, i32 %59, i32 1)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %146

64:                                               ; preds = %44
  %65 = load %struct.urdev*, %struct.urdev** %4, align 8
  %66 = getelementptr inbounds %struct.urdev, %struct.urdev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @READER_PUNCH_DEVTYPE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %64
  %74 = load %struct.urdev*, %struct.urdev** %4, align 8
  %75 = getelementptr inbounds %struct.urdev, %struct.urdev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DEV_CLASS_UR_I, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %81 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %82 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %81, i32 0, i32 0
  %83 = call i8* @dev_name(i32* %82)
  %84 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.urdev*, %struct.urdev** %4, align 8
  %87 = getelementptr inbounds %struct.urdev, %struct.urdev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DEV_CLASS_UR_O, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %93 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %94 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %93, i32 0, i32 0
  %95 = call i8* @dev_name(i32* %94)
  %96 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %91, %85
  br label %117

98:                                               ; preds = %64
  %99 = load %struct.urdev*, %struct.urdev** %4, align 8
  %100 = getelementptr inbounds %struct.urdev, %struct.urdev* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PRINTER_DEVTYPE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %109 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %110 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %109, i32 0, i32 0
  %111 = call i8* @dev_name(i32* %110)
  %112 = call i32 @sprintf(i8* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %116

113:                                              ; preds = %98
  %114 = load i32, i32* @EOPNOTSUPP, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  br label %146

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %97
  %118 = load i32, i32* @vmur_class, align 4
  %119 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %120 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %119, i32 0, i32 0
  %121 = load %struct.urdev*, %struct.urdev** %4, align 8
  %122 = getelementptr inbounds %struct.urdev, %struct.urdev* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %127 = call i32 @device_create(i32 %118, i32* %120, i32 %125, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %126)
  %128 = load %struct.urdev*, %struct.urdev** %4, align 8
  %129 = getelementptr inbounds %struct.urdev, %struct.urdev* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.urdev*, %struct.urdev** %4, align 8
  %131 = getelementptr inbounds %struct.urdev, %struct.urdev* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @IS_ERR(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %117
  %136 = load %struct.urdev*, %struct.urdev** %4, align 8
  %137 = getelementptr inbounds %struct.urdev, %struct.urdev* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @PTR_ERR(i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  br label %146

142:                                              ; preds = %117
  %143 = load %struct.urdev*, %struct.urdev** %4, align 8
  %144 = call i32 @urdev_put(%struct.urdev* %143)
  %145 = call i32 @mutex_unlock(i32* @vmur_mutex)
  store i32 0, i32* %2, align 4
  br label %159

146:                                              ; preds = %135, %113, %63
  %147 = load %struct.urdev*, %struct.urdev** %4, align 8
  %148 = getelementptr inbounds %struct.urdev, %struct.urdev* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = call i32 @cdev_del(%struct.TYPE_12__* %149)
  %151 = load %struct.urdev*, %struct.urdev** %4, align 8
  %152 = getelementptr inbounds %struct.urdev, %struct.urdev* %151, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %152, align 8
  br label %153

153:                                              ; preds = %146, %41, %24
  %154 = load %struct.urdev*, %struct.urdev** %4, align 8
  %155 = call i32 @urdev_put(%struct.urdev* %154)
  br label %156

156:                                              ; preds = %153, %16
  %157 = call i32 @mutex_unlock(i32* @vmur_mutex)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %156, %142
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.TYPE_12__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_add(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @urdev_put(%struct.urdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
