; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_endpoint.c_interval_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_endpoint.c_interval_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ep_device = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d%cs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @interval_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interval_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ep_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ep_device* @to_ep_device(%struct.device* %11)
  store %struct.ep_device* %12, %struct.ep_device** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %14 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %21 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @usb_endpoint_type(%struct.TYPE_4__* %22)
  switch i32 %23, label %88 [
    i32 130, label %24
    i32 128, label %39
    i32 131, label %47
    i32 129, label %65
  ]

24:                                               ; preds = %3
  %25 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %26 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USB_SPEED_HIGH, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %34 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %24
  br label %88

39:                                               ; preds = %3
  %40 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %41 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %44, 1
  %46 = shl i32 1, %45
  store i32 %46, i32* %9, align 4
  br label %88

47:                                               ; preds = %3
  %48 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %49 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @USB_SPEED_HIGH, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %60 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %58, %55, %47
  br label %88

65:                                               ; preds = %3
  %66 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %67 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USB_SPEED_HIGH, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %75 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub i32 %78, 1
  %80 = shl i32 1, %79
  store i32 %80, i32* %9, align 4
  br label %87

81:                                               ; preds = %65
  %82 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %83 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %81, %73
  br label %88

88:                                               ; preds = %3, %87, %64, %39, %38
  %89 = load %struct.ep_device*, %struct.ep_device** %7, align 8
  %90 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @USB_SPEED_HIGH, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 125, i32 1000
  %98 = load i32, i32* %9, align 4
  %99 = mul i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = urem i32 %100, 1000
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  store i8 117, i8* %8, align 1
  br label %107

104:                                              ; preds = %88
  store i8 109, i8* %8, align 1
  %105 = load i32, i32* %9, align 4
  %106 = udiv i32 %105, 1000
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i8, i8* %8, align 1
  %111 = call i32 @sprintf(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %109, i8 signext %110)
  ret i32 %111
}

declare dso_local %struct.ep_device* @to_ep_device(%struct.device*) #1

declare dso_local i32 @usb_endpoint_type(%struct.TYPE_4__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
