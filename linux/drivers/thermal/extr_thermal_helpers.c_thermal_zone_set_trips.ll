; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_helpers.c_thermal_zone_set_trips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_helpers.c_thermal_zone_set_trips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)* }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"new temperature boundaries: %d < x < %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to set trips: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thermal_zone_set_trips(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca %struct.thermal_zone_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %2, align 8
  %10 = load i32, i32* @INT_MAX, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @INT_MAX, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %14 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 4
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %17 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %16, i32 0, i32 6
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %24 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %23, i32 0, i32 6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %26, align 8
  %28 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %1
  br label %126

30:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %81, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %34 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %31
  %38 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %39 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %38, i32 0, i32 6
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %41, align 8
  %43 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %42(%struct.thermal_zone_device* %43, i32 %44, i32* %5)
  %46 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %47 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %49, align 8
  %51 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 %50(%struct.thermal_zone_device* %51, i32 %52, i32* %6)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %59 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %37
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %62, %37
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %71 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %74, %68
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %31

84:                                               ; preds = %31
  %85 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %86 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %92 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %126

97:                                               ; preds = %90, %84
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %100 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %103 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %105 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %104, i32 0, i32 5
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @dev_dbg(i32* %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %110 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %109, i32 0, i32 6
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %112, align 8
  %114 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 %113(%struct.thermal_zone_device* %114, i32 %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %97
  %121 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %122 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %121, i32 0, i32 5
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %97
  br label %126

126:                                              ; preds = %125, %96, %29
  %127 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %128 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %127, i32 0, i32 4
  %129 = call i32 @mutex_unlock(i32* %128)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
