; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { %struct.device, i32, i32, %struct.TYPE_2__ }
%struct.device = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s.%s.%d.%d\00", align 1
@rpmsg_bus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"device_register failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpmsg_register_device(%struct.rpmsg_device* %0) #0 {
  %2 = alloca %struct.rpmsg_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %2, align 8
  %5 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %6 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %8 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_name(i32 %11)
  %13 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %14 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %18 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %21 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_set_name(%struct.device* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %25 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  store i32* @rpmsg_bus, i32** %26, align 8
  %27 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %28 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %27, i32 0, i32 0
  %29 = call i32 @device_register(%struct.device* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %37 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %36, i32 0, i32 0
  %38 = call i32 @put_device(%struct.device* %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
