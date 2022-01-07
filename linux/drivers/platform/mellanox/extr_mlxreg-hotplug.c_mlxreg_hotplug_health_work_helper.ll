; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_health_work_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_health_work_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_hotplug_priv_data = type { i32, i32 }
%struct.mlxreg_core_item = type { i32, i32, %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32, i32, i64, i64 }

@MLXREG_HOTPLUG_MASK_OFF = common dso_local global i64 0, align 8
@MLXREG_HOTPLUG_GOOD_HEALTH_MASK = common dso_local global i32 0, align 4
@MLXREG_HOTPLUG_EVENT_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to complete workqueue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_core_item*)* @mlxreg_hotplug_health_work_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxreg_hotplug_health_work_helper(%struct.mlxreg_hotplug_priv_data* %0, %struct.mlxreg_core_item* %1) #0 {
  %3 = alloca %struct.mlxreg_hotplug_priv_data*, align 8
  %4 = alloca %struct.mlxreg_core_item*, align 8
  %5 = alloca %struct.mlxreg_core_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxreg_hotplug_priv_data* %0, %struct.mlxreg_hotplug_priv_data** %3, align 8
  store %struct.mlxreg_core_item* %1, %struct.mlxreg_core_item** %4, align 8
  %9 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %4, align 8
  %10 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %9, i32 0, i32 2
  %11 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %10, align 8
  store %struct.mlxreg_core_data* %11, %struct.mlxreg_core_data** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %118, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %4, align 8
  %15 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %123

18:                                               ; preds = %12
  %19 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %20 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %23 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MLXREG_HOTPLUG_MASK_OFF, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @regmap_write(i32 %21, i64 %26, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %124

31:                                               ; preds = %18
  %32 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %33 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %36 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @regmap_read(i32 %34, i64 %37, i32* %6)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %124

42:                                               ; preds = %31
  %43 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %44 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %4, align 8
  %49 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %88

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MLXREG_HOTPLUG_GOOD_HEALTH_MASK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %60 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %65 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %66 = call i32 @mlxreg_hotplug_device_create(%struct.mlxreg_hotplug_priv_data* %64, %struct.mlxreg_core_data* %65)
  %67 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %68 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %58
  br label %84

70:                                               ; preds = %54
  %71 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %72 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %77 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %78 = call i32 @mlxreg_hotplug_device_destroy(%struct.mlxreg_hotplug_priv_data* %76, %struct.mlxreg_core_data* %77)
  %79 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %80 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %82 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %70
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %4, align 8
  %87 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %53
  %89 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %90 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %93 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MLXREG_HOTPLUG_EVENT_OFF, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @regmap_write(i32 %91, i64 %96, i32 0)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %124

101:                                              ; preds = %88
  %102 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %103 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %106 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MLXREG_HOTPLUG_MASK_OFF, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %111 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @regmap_write(i32 %104, i64 %109, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %101
  br label %124

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  %121 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %122 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %121, i32 1
  store %struct.mlxreg_core_data* %122, %struct.mlxreg_core_data** %5, align 8
  br label %12

123:                                              ; preds = %12
  br label %124

124:                                              ; preds = %123, %116, %100, %41, %30
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %129 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dev_err(i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %127, %124
  ret void
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @mlxreg_hotplug_device_create(%struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_core_data*) #1

declare dso_local i32 @mlxreg_hotplug_device_destroy(%struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_core_data*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
