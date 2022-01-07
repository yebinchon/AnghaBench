; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3406_thermal.c_int3406_thermal_get_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3406_thermal.c_int3406_thermal_get_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3406_thermal_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"DDDL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DDPC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.int3406_thermal_data*)* @int3406_thermal_get_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int3406_thermal_get_limit(%struct.int3406_thermal_data* %0) #0 {
  %2 = alloca %struct.int3406_thermal_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.int3406_thermal_data* %0, %struct.int3406_thermal_data** %2, align 8
  %6 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %7 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @acpi_evaluate_integer(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @ACPI_SUCCESS(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %15 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %20 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i8* @int3406_thermal_get_index(i32 %18, i32 %23, i64 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %28 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %13, %1
  %30 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %31 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @acpi_evaluate_integer(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %5)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @ACPI_SUCCESS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %39 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %44 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i8* @int3406_thermal_get_index(i32 %42, i32 %47, i64 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %52 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %37, %29
  %54 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %55 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %60 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ %61, %58 ], [ 2, %62 ]
  %65 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %66 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %68 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %73 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  br label %82

75:                                               ; preds = %63
  %76 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %77 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i32 [ %74, %71 ], [ %81, %75 ]
  %84 = load %struct.int3406_thermal_data*, %struct.int3406_thermal_data** %2, align 8
  %85 = getelementptr inbounds %struct.int3406_thermal_data, %struct.int3406_thermal_data* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  ret void
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i8* @int3406_thermal_get_index(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
