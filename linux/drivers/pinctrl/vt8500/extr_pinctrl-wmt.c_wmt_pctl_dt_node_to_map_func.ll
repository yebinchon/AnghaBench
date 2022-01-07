; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pctl_dt_node_to_map_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_pctl_dt_node_to_map_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_pinctrl_data = type { i32*, i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@wmt_functions = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid wm,function %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to match pin %d to group\0A\00", align 1
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmt_pinctrl_data*, %struct.device_node*, i64, i64, %struct.pinctrl_map**)* @wmt_pctl_dt_node_to_map_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_pctl_dt_node_to_map_func(%struct.wmt_pinctrl_data* %0, %struct.device_node* %1, i64 %2, i64 %3, %struct.pinctrl_map** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmt_pinctrl_data*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pinctrl_map**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pinctrl_map*, align 8
  store %struct.wmt_pinctrl_data* %0, %struct.wmt_pinctrl_data** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.pinctrl_map** %4, %struct.pinctrl_map*** %11, align 8
  %14 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %15 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  store %struct.pinctrl_map* %15, %struct.pinctrl_map** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i32*, i32** @wmt_functions, align 8
  %18 = call i64 @ARRAY_SIZE(i32* %17)
  %19 = icmp uge i64 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %22 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %67

28:                                               ; preds = %5
  %29 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @wmt_pctl_find_group_by_pin(%struct.wmt_pinctrl_data* %29, i64 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %36 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %67

41:                                               ; preds = %28
  %42 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %43 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %44 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %46 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %53 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load i32*, i32** @wmt_functions, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %61 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %65 = load %struct.pinctrl_map*, %struct.pinctrl_map** %64, align 8
  %66 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %65, i32 1
  store %struct.pinctrl_map* %66, %struct.pinctrl_map** %64, align 8
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %41, %34, %20
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @wmt_pctl_find_group_by_pin(%struct.wmt_pinctrl_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
