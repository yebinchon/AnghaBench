; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_attach_genpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c_dev_pm_opp_attach_genpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, i32, %struct.device** }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Index can't be greater than required-opp-count - 1, %s (%d : %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Genpd virtual device already set %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't attach to pm_domain: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.opp_table* @dev_pm_opp_attach_genpd(%struct.device* %0, i8** %1, %struct.device*** %2) #0 {
  %4 = alloca %struct.opp_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.device***, align 8
  %8 = alloca %struct.opp_table*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.device*** %2, %struct.device**** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load i8**, i8*** %6, align 8
  store i8** %15, i8*** %12, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device* %16)
  store %struct.opp_table* %17, %struct.opp_table** %8, align 8
  %18 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %19 = icmp ne %struct.opp_table* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.opp_table* @ERR_PTR(i32 %22)
  store %struct.opp_table* %23, %struct.opp_table** %4, align 8
  br label %133

24:                                               ; preds = %3
  %25 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %26 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %128

32:                                               ; preds = %24
  %33 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %34 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %37 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.device** @kcalloc(i32 %38, i32 8, i32 %39)
  %41 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %42 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %41, i32 0, i32 2
  store %struct.device** %40, %struct.device*** %42, align 8
  %43 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %44 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %43, i32 0, i32 2
  %45 = load %struct.device**, %struct.device*** %44, align 8
  %46 = icmp ne %struct.device** %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  br label %124

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %96, %48
  %50 = load i8**, i8*** %12, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %108

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %56 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i8**, i8*** %12, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %64 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %65, i32 %66)
  br label %121

68:                                               ; preds = %53
  %69 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %70 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %69, i32 0, i32 2
  %71 = load %struct.device**, %struct.device*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.device*, %struct.device** %71, i64 %73
  %75 = load %struct.device*, %struct.device** %74, align 8
  %76 = icmp ne %struct.device* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load i8**, i8*** %12, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %121

82:                                               ; preds = %68
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i8**, i8*** %12, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call %struct.device* @dev_pm_domain_attach_by_name(%struct.device* %83, i8* %85)
  store %struct.device* %86, %struct.device** %9, align 8
  %87 = load %struct.device*, %struct.device** %9, align 8
  %88 = call i64 @IS_ERR(%struct.device* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = call i32 @PTR_ERR(%struct.device* %91)
  store i32 %92, i32* %11, align 4
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %121

96:                                               ; preds = %82
  %97 = load %struct.device*, %struct.device** %9, align 8
  %98 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %99 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %98, i32 0, i32 2
  %100 = load %struct.device**, %struct.device*** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.device*, %struct.device** %100, i64 %102
  store %struct.device* %97, %struct.device** %103, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i8**, i8*** %12, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %12, align 8
  br label %49

108:                                              ; preds = %49
  %109 = load %struct.device***, %struct.device**** %7, align 8
  %110 = icmp ne %struct.device*** %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %113 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %112, i32 0, i32 2
  %114 = load %struct.device**, %struct.device*** %113, align 8
  %115 = load %struct.device***, %struct.device**** %7, align 8
  store %struct.device** %114, %struct.device*** %115, align 8
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %118 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  store %struct.opp_table* %120, %struct.opp_table** %4, align 8
  br label %133

121:                                              ; preds = %90, %77, %59
  %122 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %123 = call i32 @_opp_detach_genpd(%struct.opp_table* %122)
  br label %124

124:                                              ; preds = %121, %47
  %125 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %126 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  br label %128

128:                                              ; preds = %124, %29
  %129 = load %struct.opp_table*, %struct.opp_table** %8, align 8
  %130 = call i32 @dev_pm_opp_put_opp_table(%struct.opp_table* %129)
  %131 = load i32, i32* %11, align 4
  %132 = call %struct.opp_table* @ERR_PTR(i32 %131)
  store %struct.opp_table* %132, %struct.opp_table** %4, align 8
  br label %133

133:                                              ; preds = %128, %116, %20
  %134 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  ret %struct.opp_table* %134
}

declare dso_local %struct.opp_table* @dev_pm_opp_get_opp_table(%struct.device*) #1

declare dso_local %struct.opp_table* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.device** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.device* @dev_pm_domain_attach_by_name(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_opp_detach_genpd(%struct.opp_table*) #1

declare dso_local i32 @dev_pm_opp_put_opp_table(%struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
