; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rockchip_pinctrl = type { i32 }
%struct.rockchip_pin_group = type { i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"unable to find group for node %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_CONFIGS_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"maps: function %s group %s num %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @rockchip_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rockchip_pinctrl*, align 8
  %11 = alloca %struct.rockchip_pin_group*, align 8
  %12 = alloca %struct.pinctrl_map*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.rockchip_pinctrl* %17, %struct.rockchip_pinctrl** %10, align 8
  store i32 1, i32* %14, align 4
  %18 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %10, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.rockchip_pin_group* @pinctrl_name_to_group(%struct.rockchip_pinctrl* %18, i32 %21)
  store %struct.rockchip_pin_group* %22, %struct.rockchip_pin_group** %11, align 8
  %23 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %11, align 8
  %24 = icmp ne %struct.rockchip_pin_group* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %10, align 8
  %27 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.device_node* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %172

33:                                               ; preds = %4
  %34 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %11, align 8
  %35 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %14, align 4
  %39 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %40 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.pinctrl_map* @devm_kcalloc(i32 %41, i32 %42, i32 24, i32 %43)
  store %struct.pinctrl_map* %44, %struct.pinctrl_map** %12, align 8
  %45 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %46 = icmp ne %struct.pinctrl_map* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %172

50:                                               ; preds = %33
  %51 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %52 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* %51, %struct.pinctrl_map** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.device_node*, %struct.device_node** %7, align 8
  %56 = call %struct.device_node* @of_get_parent(%struct.device_node* %55)
  store %struct.device_node* %56, %struct.device_node** %13, align 8
  %57 = load %struct.device_node*, %struct.device_node** %13, align 8
  %58 = icmp ne %struct.device_node* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %50
  %60 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %61 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %64 = call i32 @devm_kfree(i32 %62, %struct.pinctrl_map* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %172

67:                                               ; preds = %50
  %68 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %69 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %70 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %69, i64 0
  %71 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.device_node*, %struct.device_node** %13, align 8
  %73 = getelementptr inbounds %struct.device_node, %struct.device_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %76 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %75, i64 0
  %77 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  %80 = load %struct.device_node*, %struct.device_node** %7, align 8
  %81 = getelementptr inbounds %struct.device_node, %struct.device_node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %84 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %83, i64 0
  %85 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 4
  %88 = load %struct.device_node*, %struct.device_node** %13, align 8
  %89 = call i32 @of_node_put(%struct.device_node* %88)
  %90 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %91 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %90, i32 1
  store %struct.pinctrl_map* %91, %struct.pinctrl_map** %12, align 8
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %151, %67
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %11, align 8
  %95 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %154

98:                                               ; preds = %92
  %99 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_PIN, align 4
  %100 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %100, i64 %102
  %104 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %103, i32 0, i32 1
  store i32 %99, i32* %104, align 4
  %105 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %106 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %11, align 8
  %107 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pin_get_name(%struct.pinctrl_dev* %105, i32 %112)
  %114 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %114, i64 %116
  %118 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  store i32 %113, i32* %120, align 4
  %121 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %11, align 8
  %122 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %129, i64 %131
  %133 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 %128, i32* %135, align 4
  %136 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %11, align 8
  %137 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %144, i64 %146
  %148 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32 %143, i32* %150, align 4
  br label %151

151:                                              ; preds = %98
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %92

154:                                              ; preds = %92
  %155 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %156 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %159 = load %struct.pinctrl_map*, %struct.pinctrl_map** %158, align 8
  %160 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %165 = load %struct.pinctrl_map*, %struct.pinctrl_map** %164, align 8
  %166 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @dev_dbg(i32 %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %163, i32 %169, i32 %170)
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %154, %59, %47, %25
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.rockchip_pin_group* @pinctrl_name_to_group(%struct.rockchip_pinctrl*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

declare dso_local %struct.pinctrl_map* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @devm_kfree(i32, %struct.pinctrl_map*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
