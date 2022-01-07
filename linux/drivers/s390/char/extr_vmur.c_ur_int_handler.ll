; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.urdev = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"ur_int_handler: intparm=0x%lx cstat=%02x dstat=%02x res=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ur_int_handler: unsolicited interrupt\0A\00", align 1
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @ur_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ur_int_handler(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.urdev*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %8 = load %struct.irb*, %struct.irb** %6, align 8
  %9 = call i64 @IS_ERR(%struct.irb* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.irb*, %struct.irb** %6, align 8
  %14 = getelementptr inbounds %struct.irb, %struct.irb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.irb*, %struct.irb** %6, align 8
  %19 = getelementptr inbounds %struct.irb, %struct.irb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.irb*, %struct.irb** %6, align 8
  %24 = getelementptr inbounds %struct.irb, %struct.irb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %17, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %11, %3
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %75

34:                                               ; preds = %29
  %35 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 0
  %37 = call %struct.urdev* @dev_get_drvdata(i32* %36)
  store %struct.urdev* %37, %struct.urdev** %7, align 8
  %38 = load %struct.urdev*, %struct.urdev** %7, align 8
  %39 = icmp ne %struct.urdev* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.irb*, %struct.irb** %6, align 8
  %44 = call i64 @IS_ERR(%struct.irb* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load %struct.irb*, %struct.irb** %6, align 8
  %48 = call i32 @PTR_ERR(%struct.irb* %47)
  %49 = load %struct.urdev*, %struct.urdev** %7, align 8
  %50 = getelementptr inbounds %struct.urdev, %struct.urdev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %70

51:                                               ; preds = %34
  %52 = load %struct.irb*, %struct.irb** %6, align 8
  %53 = getelementptr inbounds %struct.irb, %struct.irb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %58 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %59 = or i32 %57, %58
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.urdev*, %struct.urdev** %7, align 8
  %63 = getelementptr inbounds %struct.urdev, %struct.urdev* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  br label %69

64:                                               ; preds = %51
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = load %struct.urdev*, %struct.urdev** %7, align 8
  %68 = getelementptr inbounds %struct.urdev, %struct.urdev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.urdev*, %struct.urdev** %7, align 8
  %72 = getelementptr inbounds %struct.urdev, %struct.urdev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @complete(i32 %73)
  br label %75

75:                                               ; preds = %70, %32
  ret void
}

declare dso_local i64 @IS_ERR(%struct.irb*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.urdev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PTR_ERR(%struct.irb*) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
