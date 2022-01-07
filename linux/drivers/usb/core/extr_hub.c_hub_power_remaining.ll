; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_power_remaining.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_power_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32, %struct.usb_port**, %struct.TYPE_3__*, i32, %struct.usb_device* }
%struct.usb_port = type { i32, %struct.usb_device* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32, i32, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%dmA is over %umA budget!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%dmA over power budget!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*)* @hub_power_remaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_power_remaining(%struct.usb_hub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_port*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  %11 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %11, i32 0, i32 5
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %4, align 8
  %14 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %15 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %118

19:                                               ; preds = %1
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %24 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %22, %27
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %103, %19
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %106

35:                                               ; preds = %29
  %36 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %37 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %36, i32 0, i32 2
  %38 = load %struct.usb_port**, %struct.usb_port*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %38, i64 %41
  %43 = load %struct.usb_port*, %struct.usb_port** %42, align 8
  store %struct.usb_port* %43, %struct.usb_port** %7, align 8
  %44 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %45 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %44, i32 0, i32 1
  %46 = load %struct.usb_device*, %struct.usb_device** %45, align 8
  store %struct.usb_device* %46, %struct.usb_device** %8, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %48 = icmp ne %struct.usb_device* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %103

50:                                               ; preds = %35
  %51 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %52 = call i64 @hub_is_superspeed(%struct.usb_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 150, i32* %9, align 4
  br label %56

55:                                               ; preds = %50
  store i32 100, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @usb_get_max_power(%struct.usb_device* %62, i64 %65)
  store i32 %66, i32* %10, align 4
  br label %84

67:                                               ; preds = %56
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %68, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %67
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %10, align 4
  br label %83

82:                                               ; preds = %75
  store i32 8, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %80
  br label %84

84:                                               ; preds = %83, %61
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %87 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %92 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %91, i32 0, i32 0
  %93 = ptrtoint i32* %92 to i32
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %96 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %84
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %49
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %29

106:                                              ; preds = %29
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %111 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 0, %113
  %115 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %18
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @usb_get_max_power(%struct.usb_device*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
