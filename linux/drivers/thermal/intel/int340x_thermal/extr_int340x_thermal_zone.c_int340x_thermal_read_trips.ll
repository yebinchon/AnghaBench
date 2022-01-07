; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_read_trips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_read_trips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int34x_thermal_zone = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_CRT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_HOT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PSV\00", align 1
@INT340X_THERMAL_MAX_ACT_TRIP_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int340x_thermal_read_trips(%struct.int34x_thermal_zone* %0) #0 {
  %2 = alloca %struct.int34x_thermal_zone*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x i8], align 1
  store %struct.int34x_thermal_zone* %0, %struct.int34x_thermal_zone** %2, align 8
  %6 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %7 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %10 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %9, i32 0, i32 1
  store i32 -1, i32* %10, align 4
  %11 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %12 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %17 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %16, i32 0, i32 8
  %18 = call i64 @int340x_thermal_get_trip_config(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %24 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %27 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %26, i32 0, i32 2
  store i32 -1, i32* %27, align 8
  %28 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %29 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %34 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %33, i32 0, i32 7
  %35 = call i64 @int340x_thermal_get_trip_config(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  %40 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %41 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %25
  %43 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %44 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %43, i32 0, i32 3
  store i32 -1, i32* %44, align 4
  %45 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %46 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %45, i32 0, i32 5
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %51 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %50, i32 0, i32 6
  %52 = call i64 @int340x_thermal_get_trip_config(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  %57 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %58 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %42
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %106, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @INT340X_THERMAL_MAX_ACT_TRIP_COUNT, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  store i8 95, i8* %65, align 1
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 65, i8* %66, align 1
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 67, i8* %67, align 1
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 48, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %68, align 1
  %72 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 0, i8* %72, align 1
  %73 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %74 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %73, i32 0, i32 5
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %79 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %80 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = call i64 @int340x_thermal_get_trip_config(i32 %77, i8* %78, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %64
  br label %109

89:                                               ; preds = %64
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  %92 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %93 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %92, i32 0, i32 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %90, i32* %98, align 4
  %99 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %2, align 8
  %100 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %99, i32 0, i32 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %89
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %60

109:                                              ; preds = %88, %60
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @int340x_thermal_get_trip_config(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
