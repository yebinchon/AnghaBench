; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_bulk_data = type { i32*, i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get supply '%s': %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get supply '%s', deferring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_bulk_get(%struct.device* %0, i32 %1, %struct.regulator_bulk_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_bulk_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regulator_bulk_data* %2, %struct.regulator_bulk_data** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %15, i64 %17
  %19 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %10

23:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %30, i64 %32
  %34 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @regulator_get(%struct.device* %29, i32 %35)
  %37 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %37, i64 %39
  %41 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %40, i32 0, i32 0
  store i32* %36, i32** %41, align 8
  %42 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %42, i64 %44
  %46 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %28
  %51 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %51, i64 %53
  %55 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @PTR_ERR(i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %58, i64 %60
  %62 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %68

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %24

67:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %107

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %75, i64 %77
  %79 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  br label %92

83:                                               ; preds = %68
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %85, i64 %87
  %89 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %83, %73
  br label %93

93:                                               ; preds = %97, %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %8, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %98, i64 %100
  %102 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @regulator_put(i32* %103)
  br label %93

105:                                              ; preds = %93
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %67
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32* @regulator_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
