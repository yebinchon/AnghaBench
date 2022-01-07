; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_get_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_get_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.int34x_thermal_zone* }
%struct.int34x_thermal_zone = type { i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { {}* }

@INT340X_THERMAL_MAX_ACT_TRIP_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @int340x_thermal_get_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int340x_thermal_get_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.int34x_thermal_zone*, align 8
  %9 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %11, align 8
  store %struct.int34x_thermal_zone* %12, %struct.int34x_thermal_zone** %8, align 8
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %14 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %13, i32 0, i32 9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %19 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %18, i32 0, i32 9
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.thermal_zone_device*, i32, i32*)**
  %23 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %27 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %26, i32 0, i32 9
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.thermal_zone_device*, i32, i32*)**
  %31 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %30, align 8
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 %31(%struct.thermal_zone_device* %32, i32 %33, i32* %34)
  store i32 %35, i32* %4, align 4
  br label %136

36:                                               ; preds = %17, %3
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %39 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %44 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %135

51:                                               ; preds = %36
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %54 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %59 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %134

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %65 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %70 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %133

73:                                               ; preds = %62
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %76 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %81 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %132

84:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %121, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @INT340X_THERMAL_MAX_ACT_TRIP_COUNT, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %85
  %90 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %91 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %90, i32 0, i32 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %89
  %100 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %101 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %100, i32 0, i32 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %99
  %111 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %112 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %111, i32 0, i32 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  br label %124

120:                                              ; preds = %99, %89
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %85

124:                                              ; preds = %110, %85
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @INT340X_THERMAL_MAX_ACT_TRIP_COUNT, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %136

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %79
  br label %133

133:                                              ; preds = %132, %68
  br label %134

134:                                              ; preds = %133, %57
  br label %135

135:                                              ; preds = %134, %42
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %128, %25
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
