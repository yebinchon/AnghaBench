; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c___rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c___rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.rtc_time*)* }
%struct.rtc_time = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"read_time: fail to read: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"read_time: rtc_time isn't valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_device*, %struct.rtc_time*)* @__rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rtc_read_time(%struct.rtc_device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %7 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i32, %struct.rtc_time*)*, i32 (i32, %struct.rtc_time*)** %18, align 8
  %20 = icmp ne i32 (i32, %struct.rtc_time*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %59

24:                                               ; preds = %14
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = call i32 @memset(%struct.rtc_time* %25, i32 0, i32 4)
  %27 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct.rtc_time*)*, i32 (i32, %struct.rtc_time*)** %30, align 8
  %32 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = call i32 %31(i32 %35, %struct.rtc_time* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_dbg(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %62

46:                                               ; preds = %24
  %47 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = call i32 @rtc_add_offset(%struct.rtc_device* %47, %struct.rtc_time* %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = call i32 @rtc_valid_tm(%struct.rtc_time* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %55, i32 0, i32 0
  %57 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_dbg(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %46
  br label %59

59:                                               ; preds = %58, %21
  br label %60

60:                                               ; preds = %59, %11
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %40
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @rtc_add_offset(%struct.rtc_device*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
