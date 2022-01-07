; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_create_ept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_create_ept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_endpoint = type { i32 }
%struct.rpmsg_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.rpmsg_channel_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpmsg_endpoint* @rpmsg_create_ept(%struct.rpmsg_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.rpmsg_endpoint*, align 8
  %6 = alloca %struct.rpmsg_channel_info, align 4
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %6, i32 0, i32 0
  store i32 %3, i32* %10, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  %11 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %12 = icmp ne %struct.rpmsg_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.rpmsg_endpoint* null, %struct.rpmsg_endpoint** %5, align 8
  br label %31

18:                                               ; preds = %4
  %19 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %20 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to %struct.rpmsg_endpoint* (%struct.rpmsg_device*, i32, i8*, i32)**
  %24 = load %struct.rpmsg_endpoint* (%struct.rpmsg_device*, i32, i8*, i32)*, %struct.rpmsg_endpoint* (%struct.rpmsg_device*, i32, i8*, i32)** %23, align 8
  %25 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.rpmsg_endpoint* %24(%struct.rpmsg_device* %25, i32 %26, i8* %27, i32 %29)
  store %struct.rpmsg_endpoint* %30, %struct.rpmsg_endpoint** %5, align 8
  br label %31

31:                                               ; preds = %18, %17
  %32 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %5, align 8
  ret %struct.rpmsg_endpoint* %32
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
