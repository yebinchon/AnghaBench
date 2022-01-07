; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_of_reconfig_get_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_of_reconfig_get_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_reconfig_data = type { %struct.property*, %struct.property*, i32 }
%struct.property = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@OF_RECONFIG_NO_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@OF_RECONFIG_CHANGE_ADD = common dso_local global i32 0, align 4
@OF_RECONFIG_CHANGE_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_reconfig_get_state_change(i64 %0, %struct.of_reconfig_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.of_reconfig_data*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.of_reconfig_data* %1, %struct.of_reconfig_data** %5, align 8
  store %struct.property* null, %struct.property** %7, align 8
  %13 = load i64, i64* %4, align 8
  switch i64 %13, label %30 [
    i64 131, label %14
    i64 130, label %14
    i64 132, label %19
    i64 129, label %19
    i64 128, label %23
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %5, align 8
  %16 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.property* @of_find_property(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %18, %struct.property** %6, align 8
  br label %32

19:                                               ; preds = %2, %2
  %20 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %5, align 8
  %21 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %20, i32 0, i32 1
  %22 = load %struct.property*, %struct.property** %21, align 8
  store %struct.property* %22, %struct.property** %6, align 8
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %5, align 8
  %25 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %24, i32 0, i32 1
  %26 = load %struct.property*, %struct.property** %25, align 8
  store %struct.property* %26, %struct.property** %6, align 8
  %27 = load %struct.of_reconfig_data*, %struct.of_reconfig_data** %5, align 8
  %28 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %27, i32 0, i32 0
  %29 = load %struct.property*, %struct.property** %28, align 8
  store %struct.property* %29, %struct.property** %7, align 8
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @OF_RECONFIG_NO_CHANGE, align 4
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %23, %19, %14
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %33 = load %struct.property*, %struct.property** %6, align 8
  %34 = icmp ne %struct.property* %33, null
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load %struct.property*, %struct.property** %6, align 8
  %37 = getelementptr inbounds %struct.property, %struct.property* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcmp(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %76, label %41

41:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  %42 = load %struct.property*, %struct.property** %6, align 8
  %43 = getelementptr inbounds %struct.property, %struct.property* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcmp(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.property*, %struct.property** %6, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcmp(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %47, %41
  %55 = phi i1 [ true, %41 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load %struct.property*, %struct.property** %7, align 8
  %58 = icmp ne %struct.property* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.property*, %struct.property** %7, align 8
  %61 = getelementptr inbounds %struct.property, %struct.property* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcmp(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.property*, %struct.property** %7, align 8
  %67 = getelementptr inbounds %struct.property, %struct.property* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strcmp(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %65, %59
  %73 = phi i1 [ true, %59 ], [ %71, %65 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %54
  br label %76

76:                                               ; preds = %75, %35, %32
  %77 = load i64, i64* %4, align 8
  switch i64 %77, label %109 [
    i64 131, label %78
    i64 130, label %82
    i64 132, label %86
    i64 129, label %92
    i64 128, label %98
  ]

78:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %12, align 4
  br label %109

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %109

86:                                               ; preds = %76
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  store i32 1, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %86
  br label %109

92:                                               ; preds = %76
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %97

97:                                               ; preds = %95, %92
  br label %109

98:                                               ; preds = %76
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %101, %98
  br label %109

109:                                              ; preds = %76, %108, %97, %91, %82, %78
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @OF_RECONFIG_NO_CHANGE, align 4
  store i32 %114, i32* %3, align 4
  br label %124

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @OF_RECONFIG_CHANGE_ADD, align 4
  br label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @OF_RECONFIG_CHANGE_REMOVE, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %113, %30
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.property* @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
