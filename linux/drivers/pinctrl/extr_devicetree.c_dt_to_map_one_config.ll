; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_dt_to_map_one_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_dt_to_map_one_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.pinctrl_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pinctrl_ops* }
%struct.pinctrl_ops = type { i32 (%struct.pinctrl_dev.0*, %struct.device_node.1*, %struct.pinctrl_map**, i32*)* }
%struct.pinctrl_dev.0 = type opaque
%struct.device_node.1 = type opaque
%struct.pinctrl_map = type opaque
%struct.device_node = type { i32 }
%struct.pinctrl_map.2 = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"pinctrl-use-default\00", align 1
@CONFIG_MODULES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"pctldev %s doesn't support DT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl*, %struct.pinctrl_dev*, i8*, %struct.device_node*)* @dt_to_map_one_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_to_map_one_config(%struct.pinctrl* %0, %struct.pinctrl_dev* %1, i8* %2, %struct.device_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl*, align 8
  %7 = alloca %struct.pinctrl_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.pinctrl_dev*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.pinctrl_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pinctrl_map.2*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl* %0, %struct.pinctrl** %6, align 8
  store %struct.pinctrl_dev* %1, %struct.pinctrl_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.device_node* %3, %struct.device_node** %9, align 8
  store %struct.pinctrl_dev* null, %struct.pinctrl_dev** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.device_node*, %struct.device_node** %9, align 8
  %18 = call %struct.device_node* @of_node_get(%struct.device_node* %17)
  store %struct.device_node* %18, %struct.device_node** %11, align 8
  br label %19

19:                                               ; preds = %85, %4
  %20 = load i32, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.device_node*, %struct.device_node** %11, align 8
  %24 = call i32 @of_property_read_bool(%struct.device_node* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %16, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.device_node*, %struct.device_node** %11, align 8
  %27 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %26)
  store %struct.device_node* %27, %struct.device_node** %11, align 8
  %28 = load %struct.device_node*, %struct.device_node** %11, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.device_node*, %struct.device_node** %11, align 8
  %32 = call i64 @of_node_is_root(%struct.device_node* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30, %25
  %35 = load %struct.device_node*, %struct.device_node** %11, align 8
  %36 = call i32 @of_node_put(%struct.device_node* %35)
  %37 = load i32, i32* @CONFIG_MODULES, align 4
  %38 = call i64 @IS_ENABLED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %45 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @driver_deferred_probe_check_state_continue(%struct.TYPE_6__* %46)
  store i32 %47, i32* %5, align 4
  br label %130

48:                                               ; preds = %40, %34
  %49 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %50 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 @driver_deferred_probe_check_state(%struct.TYPE_6__* %51)
  store i32 %52, i32* %5, align 4
  br label %130

53:                                               ; preds = %30
  %54 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %55 = icmp ne %struct.pinctrl_dev* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.device_node*, %struct.device_node** %11, align 8
  %58 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %59 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.device_node*, %struct.device_node** %61, align 8
  %63 = icmp eq %struct.device_node* %57, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  store %struct.pinctrl_dev* %65, %struct.pinctrl_dev** %10, align 8
  br label %86

66:                                               ; preds = %56, %53
  %67 = load %struct.device_node*, %struct.device_node** %11, align 8
  %68 = call %struct.pinctrl_dev* @get_pinctrl_dev_from_of_node(%struct.device_node* %67)
  store %struct.pinctrl_dev* %68, %struct.pinctrl_dev** %10, align 8
  %69 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %70 = icmp ne %struct.pinctrl_dev* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %86

72:                                               ; preds = %66
  %73 = load %struct.device_node*, %struct.device_node** %11, align 8
  %74 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %75 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.device_node*, %struct.device_node** %77, align 8
  %79 = icmp eq %struct.device_node* %73, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.device_node*, %struct.device_node** %11, align 8
  %82 = call i32 @of_node_put(%struct.device_node* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %130

85:                                               ; preds = %72
  br label %19

86:                                               ; preds = %71, %64
  %87 = load %struct.device_node*, %struct.device_node** %11, align 8
  %88 = call i32 @of_node_put(%struct.device_node* %87)
  %89 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %90 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %92, align 8
  store %struct.pinctrl_ops* %93, %struct.pinctrl_ops** %12, align 8
  %94 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %12, align 8
  %95 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %94, i32 0, i32 0
  %96 = load i32 (%struct.pinctrl_dev.0*, %struct.device_node.1*, %struct.pinctrl_map**, i32*)*, i32 (%struct.pinctrl_dev.0*, %struct.device_node.1*, %struct.pinctrl_map**, i32*)** %95, align 8
  %97 = icmp ne i32 (%struct.pinctrl_dev.0*, %struct.device_node.1*, %struct.pinctrl_map**, i32*)* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %86
  %99 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %100 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %103 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_name(i32 %104)
  %106 = call i32 @dev_err(%struct.TYPE_6__* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %130

109:                                              ; preds = %86
  %110 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %12, align 8
  %111 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %110, i32 0, i32 0
  %112 = load i32 (%struct.pinctrl_dev.0*, %struct.device_node.1*, %struct.pinctrl_map**, i32*)*, i32 (%struct.pinctrl_dev.0*, %struct.device_node.1*, %struct.pinctrl_map**, i32*)** %111, align 8
  %113 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %114 = bitcast %struct.pinctrl_dev* %113 to %struct.pinctrl_dev.0*
  %115 = load %struct.device_node*, %struct.device_node** %9, align 8
  %116 = bitcast %struct.device_node* %115 to %struct.device_node.1*
  %117 = bitcast %struct.pinctrl_map.2** %14 to %struct.pinctrl_map**
  %118 = call i32 %112(%struct.pinctrl_dev.0* %114, %struct.device_node.1* %116, %struct.pinctrl_map** %117, i32* %15)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %5, align 4
  br label %130

123:                                              ; preds = %109
  %124 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %127 = load %struct.pinctrl_map.2*, %struct.pinctrl_map.2** %14, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @dt_remember_or_free_map(%struct.pinctrl* %124, i8* %125, %struct.pinctrl_dev* %126, %struct.pinctrl_map.2* %127, i32 %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %123, %121, %98, %80, %48, %43
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i64 @of_node_is_root(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @driver_deferred_probe_check_state_continue(%struct.TYPE_6__*) #1

declare dso_local i32 @driver_deferred_probe_check_state(%struct.TYPE_6__*) #1

declare dso_local %struct.pinctrl_dev* @get_pinctrl_dev_from_of_node(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dt_remember_or_free_map(%struct.pinctrl*, i8*, %struct.pinctrl_dev*, %struct.pinctrl_map.2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
