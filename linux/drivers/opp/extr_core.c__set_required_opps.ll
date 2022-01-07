; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__set_required_opps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__set_required_opps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.opp_table = type { i32, i32, %struct.device**, %struct.opp_table** }
%struct.dev_pm_opp = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Failed to set performance state of %s: %d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to set performance rate of %s: %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.opp_table*, %struct.dev_pm_opp*)* @_set_required_opps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_set_required_opps(%struct.device* %0, %struct.opp_table* %1, %struct.dev_pm_opp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.opp_table*, align 8
  %7 = alloca %struct.dev_pm_opp*, align 8
  %8 = alloca %struct.opp_table**, align 8
  %9 = alloca %struct.device**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.opp_table* %1, %struct.opp_table** %6, align 8
  store %struct.dev_pm_opp* %2, %struct.dev_pm_opp** %7, align 8
  %13 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %14 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %13, i32 0, i32 3
  %15 = load %struct.opp_table**, %struct.opp_table*** %14, align 8
  store %struct.opp_table** %15, %struct.opp_table*** %8, align 8
  %16 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %17 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %16, i32 0, i32 2
  %18 = load %struct.device**, %struct.device*** %17, align 8
  store %struct.device** %18, %struct.device*** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.opp_table**, %struct.opp_table*** %8, align 8
  %20 = icmp ne %struct.opp_table** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

22:                                               ; preds = %3
  %23 = load %struct.device**, %struct.device*** %9, align 8
  %24 = icmp ne %struct.device** %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %22
  %26 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %27 = call i64 @likely(%struct.dev_pm_opp* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %31 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %29
  %39 = phi i32 [ %36, %29 ], [ 0, %37 ]
  store i32 %39, i32* %10, align 4
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dev_pm_genpd_set_performance_state(%struct.device* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_name(%struct.device* %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %118

54:                                               ; preds = %22
  %55 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %56 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %110, %54
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %61 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %113

64:                                               ; preds = %58
  %65 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %66 = call i64 @likely(%struct.dev_pm_opp* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %7, align 8
  %70 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %79

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %68
  %80 = phi i32 [ %77, %68 ], [ 0, %78 ]
  store i32 %80, i32* %10, align 4
  %81 = load %struct.device**, %struct.device*** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.device*, %struct.device** %81, i64 %83
  %85 = load %struct.device*, %struct.device** %84, align 8
  %86 = icmp ne %struct.device* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %110

88:                                               ; preds = %79
  %89 = load %struct.device**, %struct.device*** %9, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.device*, %struct.device** %89, i64 %91
  %93 = load %struct.device*, %struct.device** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @dev_pm_genpd_set_performance_state(%struct.device* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %88
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load %struct.device**, %struct.device*** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.device*, %struct.device** %100, i64 %102
  %104 = load %struct.device*, %struct.device** %103, align 8
  %105 = call i32 @dev_name(%struct.device* %104)
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  br label %113

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109, %87
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %58

113:                                              ; preds = %98, %58
  %114 = load %struct.opp_table*, %struct.opp_table** %6, align 8
  %115 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %52, %21
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @likely(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_genpd_set_performance_state(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
