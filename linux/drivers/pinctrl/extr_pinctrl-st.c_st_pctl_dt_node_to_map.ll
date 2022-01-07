; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.st_pinctrl = type { i32 }
%struct.st_pctl_group = type { i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"unable to find group for node %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_CONFIGS_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"maps: function %s group %s num %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @st_pctl_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pctl_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.st_pinctrl*, align 8
  %11 = alloca %struct.st_pctl_group*, align 8
  %12 = alloca %struct.pinctrl_map*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.st_pinctrl* %17, %struct.st_pinctrl** %10, align 8
  %18 = load %struct.st_pinctrl*, %struct.st_pinctrl** %10, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.st_pctl_group* @st_pctl_find_group_by_name(%struct.st_pinctrl* %18, i32 %21)
  store %struct.st_pctl_group* %22, %struct.st_pctl_group** %11, align 8
  %23 = load %struct.st_pctl_group*, %struct.st_pctl_group** %11, align 8
  %24 = icmp ne %struct.st_pctl_group* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load %struct.st_pinctrl*, %struct.st_pinctrl** %10, align 8
  %27 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.device_node* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %159

33:                                               ; preds = %4
  %34 = load %struct.st_pctl_group*, %struct.st_pctl_group** %11, align 8
  %35 = getelementptr inbounds %struct.st_pctl_group, %struct.st_pctl_group* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %14, align 4
  %38 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.pinctrl_map* @devm_kcalloc(i32 %40, i32 %41, i32 40, i32 %42)
  store %struct.pinctrl_map* %43, %struct.pinctrl_map** %12, align 8
  %44 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %45 = icmp ne %struct.pinctrl_map* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %159

49:                                               ; preds = %33
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = call %struct.device_node* @of_get_parent(%struct.device_node* %50)
  store %struct.device_node* %51, %struct.device_node** %13, align 8
  %52 = load %struct.device_node*, %struct.device_node** %13, align 8
  %53 = icmp ne %struct.device_node* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %56 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %59 = call i32 @devm_kfree(i32 %57, %struct.pinctrl_map* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %159

62:                                               ; preds = %49
  %63 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %64 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* %63, %struct.pinctrl_map** %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %68 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %69 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %68, i64 0
  %70 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.device_node*, %struct.device_node** %13, align 8
  %72 = getelementptr inbounds %struct.device_node, %struct.device_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %75 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %74, i64 0
  %76 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %7, align 8
  %80 = getelementptr inbounds %struct.device_node, %struct.device_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %83 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %82, i64 0
  %84 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  %87 = load %struct.device_node*, %struct.device_node** %13, align 8
  %88 = call i32 @of_node_put(%struct.device_node* %87)
  %89 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %90 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %89, i32 1
  store %struct.pinctrl_map* %90, %struct.pinctrl_map** %12, align 8
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %141, %62
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.st_pctl_group*, %struct.st_pctl_group** %11, align 8
  %94 = getelementptr inbounds %struct.st_pctl_group, %struct.st_pctl_group* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %91
  %98 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_PIN, align 4
  %99 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %99, i64 %101
  %103 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 8
  %104 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %105 = load %struct.st_pctl_group*, %struct.st_pctl_group** %11, align 8
  %106 = getelementptr inbounds %struct.st_pctl_group, %struct.st_pctl_group* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pin_get_name(%struct.pinctrl_dev* %104, i32 %111)
  %113 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %113, i64 %115
  %117 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  store i32 %112, i32* %119, align 8
  %120 = load %struct.st_pctl_group*, %struct.st_pctl_group** %11, align 8
  %121 = getelementptr inbounds %struct.st_pctl_group, %struct.st_pctl_group* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %127, i64 %129
  %131 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i32* %126, i32** %133, align 8
  %134 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %134, i64 %136
  %138 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %97
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %91

144:                                              ; preds = %91
  %145 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %146 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %149 = load %struct.pinctrl_map*, %struct.pinctrl_map** %148, align 8
  %150 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.st_pctl_group*, %struct.st_pctl_group** %11, align 8
  %155 = getelementptr inbounds %struct.st_pctl_group, %struct.st_pctl_group* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @dev_info(i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %156, i32 %157)
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %144, %54, %46, %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.st_pctl_group* @st_pctl_find_group_by_name(%struct.st_pinctrl*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

declare dso_local %struct.pinctrl_map* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @devm_kfree(i32, %struct.pinctrl_map*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
