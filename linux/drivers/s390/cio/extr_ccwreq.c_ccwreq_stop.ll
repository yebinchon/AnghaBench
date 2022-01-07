; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccwreq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccwreq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ccw_request }
%struct.TYPE_3__ = type { i32 }
%struct.ccw_request = type { i32, i32, i32, i32 (%struct.ccw_device.0*, i32, i32)* }
%struct.ccw_device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccwreq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccwreq_stop(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_request*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.ccw_request* %9, %struct.ccw_request** %5, align 8
  %10 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %11 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %17 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %19 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %18, i32 0)
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %15
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %36 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %41 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %34, %29, %15
  %44 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %45 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %44, i32 0, i32 3
  %46 = load i32 (%struct.ccw_device.0*, i32, i32)*, i32 (%struct.ccw_device.0*, i32, i32)** %45, align 8
  %47 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %48 = bitcast %struct.ccw_device* %47 to %struct.ccw_device.0*
  %49 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %50 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 %46(%struct.ccw_device.0* %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %14
  ret void
}

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
