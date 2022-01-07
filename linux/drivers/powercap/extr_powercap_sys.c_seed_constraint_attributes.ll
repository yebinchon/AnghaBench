; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_seed_constraint_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_seed_constraint_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX_CONSTRAINTS_PER_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"power_limit_uw\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@constraint_attrs = common dso_local global %struct.TYPE_2__* null, align 8
@show_constraint_power_limit_uw = common dso_local global i32 0, align 4
@store_constraint_power_limit_uw = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"time_window_us\00", align 1
@show_constraint_time_window_us = common dso_local global i32 0, align 4
@store_constraint_time_window_us = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@show_constraint_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"max_power_uw\00", align 1
@show_constraint_max_power_uw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"min_power_uw\00", align 1
@show_constraint_min_power_uw = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"max_time_window_us\00", align 1
@show_constraint_max_time_window_us = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"min_time_window_us\00", align 1
@show_constraint_min_time_window_us = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @seed_constraint_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seed_constraint_attributes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %106, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MAX_CONSTRAINTS_PER_ZONE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %109

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @S_IWUSR, align 4
  %11 = load i32, i32* @S_IRUGO, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constraint_attrs, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %18 = load i32, i32* @show_constraint_power_limit_uw, align 4
  %19 = load i32*, i32** @store_constraint_power_limit_uw, align 8
  %20 = call i32 @create_constraint_attribute(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12, i32* %17, i32 %18, i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  br label %110

24:                                               ; preds = %8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = load i32, i32* @S_IRUGO, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constraint_attrs, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i32, i32* @show_constraint_time_window_us, align 4
  %35 = load i32*, i32** @store_constraint_time_window_us, align 8
  %36 = call i32 @create_constraint_attribute(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32* %33, i32 %34, i32* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %110

40:                                               ; preds = %24
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @S_IRUGO, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constraint_attrs, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32, i32* @show_constraint_name, align 4
  %49 = call i32 @create_constraint_attribute(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32* %47, i32 %48, i32* null)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %110

53:                                               ; preds = %40
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @S_IRUGO, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constraint_attrs, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* @show_constraint_max_power_uw, align 4
  %62 = call i32 @create_constraint_attribute(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32* %60, i32 %61, i32* null)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %110

66:                                               ; preds = %53
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @S_IRUGO, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constraint_attrs, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* @show_constraint_min_power_uw, align 4
  %75 = call i32 @create_constraint_attribute(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32* %73, i32 %74, i32* null)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %110

79:                                               ; preds = %66
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @S_IRUGO, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constraint_attrs, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* @show_constraint_max_time_window_us, align 4
  %88 = call i32 @create_constraint_attribute(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32* %86, i32 %87, i32* null)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %110

92:                                               ; preds = %79
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @S_IRUGO, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @constraint_attrs, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* @show_constraint_min_time_window_us, align 4
  %101 = call i32 @create_constraint_attribute(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32* %99, i32 %100, i32* null)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %110

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %4

109:                                              ; preds = %4
  store i32 0, i32* %1, align 4
  br label %113

110:                                              ; preds = %104, %91, %78, %65, %52, %39, %23
  %111 = call i32 (...) @free_constraint_attributes()
  %112 = load i32, i32* %3, align 4
  store i32 %112, i32* %1, align 4
  br label %113

113:                                              ; preds = %110, %109
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @create_constraint_attribute(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @free_constraint_attributes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
