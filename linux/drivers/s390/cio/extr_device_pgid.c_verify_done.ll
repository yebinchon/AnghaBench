; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_verify_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_verify_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.ccw_dev_id }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ccw_dev_id = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.subchannel = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"vrfy: device 0.%x.%04x: rc=%d pgroup=%d mpath=%d vpm=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @verify_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_done(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca %struct.ccw_dev_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.subchannel* @to_subchannel(i32 %12)
  store %struct.subchannel* %13, %struct.subchannel** %5, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store %struct.ccw_dev_id* %17, %struct.ccw_dev_id** %6, align 8
  %18 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %43 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %46 = call i32 @cio_commit_config(%struct.subchannel* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %6, align 8
  %50 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %6, align 8
  %53 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %59 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %55, i32 %56, i32 %57, i32 %60)
  %62 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ccw_device_verify_done(%struct.ccw_device* %62, i32 %63)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @cio_commit_config(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccw_device_verify_done(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
