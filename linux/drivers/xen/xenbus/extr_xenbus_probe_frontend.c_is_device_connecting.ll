; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_frontend.c_is_device_connecting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_frontend.c_is_device_connecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_driver* }
%struct.device_driver = type { i32 }
%struct.xenbus_device = type { i64, i32 }
%struct.xenbus_driver = type { i32 (%struct.xenbus_device.0*)* }
%struct.xenbus_device.0 = type opaque

@.str = private unnamed_addr constant [12 x i8] c"device/vkbd\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"device/vfb\00", align 1
@XenbusStateConnected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @is_device_connecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_device_connecting(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xenbus_device*, align 8
  %9 = alloca %struct.device_driver*, align 8
  %10 = alloca %struct.xenbus_driver*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %11)
  store %struct.xenbus_device* %12, %struct.xenbus_device** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.device_driver*
  store %struct.device_driver* %14, %struct.device_driver** %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_driver*, %struct.device_driver** %16, align 8
  %18 = icmp ne %struct.device_driver* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.device_driver*, %struct.device_driver** %9, align 8
  %22 = icmp ne %struct.device_driver* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load %struct.device_driver*, %struct.device_driver** %25, align 8
  %27 = load %struct.device_driver*, %struct.device_driver** %9, align 8
  %28 = icmp ne %struct.device_driver* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %83

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %35 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strncmp(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %83

40:                                               ; preds = %33
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %42 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @strncmp(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %83

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load %struct.device_driver*, %struct.device_driver** %50, align 8
  %52 = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %51)
  store %struct.xenbus_driver* %52, %struct.xenbus_driver** %10, align 8
  %53 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %54 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XenbusStateConnected, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %80, label %58

58:                                               ; preds = %48
  %59 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %60 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XenbusStateConnected, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.xenbus_driver*, %struct.xenbus_driver** %10, align 8
  %66 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %65, i32 0, i32 0
  %67 = load i32 (%struct.xenbus_device.0*)*, i32 (%struct.xenbus_device.0*)** %66, align 8
  %68 = icmp ne i32 (%struct.xenbus_device.0*)* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.xenbus_driver*, %struct.xenbus_driver** %10, align 8
  %71 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %70, i32 0, i32 0
  %72 = load i32 (%struct.xenbus_device.0*)*, i32 (%struct.xenbus_device.0*)** %71, align 8
  %73 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %74 = bitcast %struct.xenbus_device* %73 to %struct.xenbus_device.0*
  %75 = call i32 %72(%struct.xenbus_device.0* %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %69, %64, %58
  %79 = phi i1 [ false, %64 ], [ false, %58 ], [ %77, %69 ]
  br label %80

80:                                               ; preds = %78, %48
  %81 = phi i1 [ true, %48 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %46, %39, %29, %19
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.xenbus_device* @to_xenbus_device(%struct.device*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
