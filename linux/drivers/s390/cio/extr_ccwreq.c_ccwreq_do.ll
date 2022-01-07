; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccwreq_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccwreq_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.ccw_request }
%struct.TYPE_5__ = type { i32 }
%struct.ccw_request = type { i32, i64, i32, %struct.ccw1* }
%struct.ccw1 = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @ccwreq_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccwreq_do(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_request*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store %struct.ccw_request* %10, %struct.ccw_request** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.subchannel* @to_subchannel(i32 %14)
  store %struct.subchannel* %15, %struct.subchannel** %4, align 8
  %16 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %17 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %16, i32 0, i32 3
  %18 = load %struct.ccw1*, %struct.ccw1** %17, align 8
  store %struct.ccw1* %18, %struct.ccw1** %5, align 8
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %69, %32, %1
  %22 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %23 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %21
  %27 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %28 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %34 = call i32 @ccwreq_next_path(%struct.ccw_device* %33)
  br label %21

35:                                               ; preds = %26
  %36 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @memset(i32* %41, i32 0, i32 4)
  %43 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %44 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %45 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %46 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @cio_start(%struct.subchannel* %43, %struct.ccw1* %44, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %54 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %55 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %53, i32 %56)
  br label %83

58:                                               ; preds = %35
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %79

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @EACCES, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %71 = call i32 @ccwreq_next_path(%struct.ccw_device* %70)
  br label %21

72:                                               ; preds = %64
  %73 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %74 = call i32 @cio_clear(%struct.subchannel* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %79

78:                                               ; preds = %72
  br label %83

79:                                               ; preds = %77, %63, %21
  %80 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ccwreq_stop(%struct.ccw_device* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %78, %52
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @ccwreq_next_path(%struct.ccw_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cio_start(%struct.subchannel*, %struct.ccw1*, i32) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @cio_clear(%struct.subchannel*) #1

declare dso_local i32 @ccwreq_stop(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
