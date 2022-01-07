; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccw_request_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccw_request_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ccw_request }
%struct.ccw_request = type { i32, i32 }
%struct.subchannel = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"%s: No interrupt was received within %lus (CS=%02x, DS=%02x, CHPID=%x.%02x)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_request_timeout(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %3, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.ccw_request* %15, %struct.ccw_request** %4, align 8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %19 = call i64 @cio_update_schib(%struct.subchannel* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %87

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %68, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %71

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 128, %27
  %29 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %30 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %26
  %37 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = call i32 @dev_name(%struct.TYPE_10__* %38)
  %40 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %41 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HZ, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = call i32 @scsw_cstat(i32* %47)
  %49 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = call i32 @scsw_dstat(i32* %51)
  %53 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %54 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %58 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pr_warn(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44, i32 %48, i32 %52, i32 %56, i32 %65)
  br label %67

67:                                               ; preds = %36, %26
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %23

71:                                               ; preds = %23
  %72 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %73 = call i32 @ccwreq_next_path(%struct.ccw_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @ETIME, align 4
  %77 = sub nsw i32 0, %76
  %78 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %79 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %82 = call i32 @cio_clear(%struct.subchannel* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %87

86:                                               ; preds = %80
  br label %91

87:                                               ; preds = %85, %21
  %88 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ccwreq_stop(%struct.ccw_device* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %86
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @scsw_dstat(i32*) #1

declare dso_local i32 @ccwreq_next_path(%struct.ccw_device*) #1

declare dso_local i32 @cio_clear(%struct.subchannel*) #1

declare dso_local i32 @ccwreq_stop(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
