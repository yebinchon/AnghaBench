; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_id.c_snsid_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_id.c_snsid_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.cmd_scsw }
%struct.cmd_scsw = type { i32 }

@SENSE_ID_MIN_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SENSE_ID_BASIC_LEN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i8*)* @snsid_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snsid_check(%struct.ccw_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cmd_scsw*, align 8
  %7 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store %struct.cmd_scsw* %15, %struct.cmd_scsw** %6, align 8
  %16 = load %struct.cmd_scsw*, %struct.cmd_scsw** %6, align 8
  %17 = getelementptr inbounds %struct.cmd_scsw, %struct.cmd_scsw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SENSE_ID_MIN_LEN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %61

26:                                               ; preds = %2
  %27 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %61

37:                                               ; preds = %26
  %38 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %39 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 255
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %66

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SENSE_ID_BASIC_LEN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %56 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %50
  store i32 0, i32* %3, align 4
  br label %66

61:                                               ; preds = %36, %25
  %62 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %63 = call i32 @snsid_init(%struct.ccw_device* %62)
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %60, %47
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @snsid_init(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
