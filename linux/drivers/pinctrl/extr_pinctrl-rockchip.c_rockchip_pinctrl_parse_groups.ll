; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinctrl_parse_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinctrl_parse_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.rockchip_pin_group = type { i32, %struct.TYPE_2__*, i64*, i32 }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.rockchip_pinctrl = type { i32 }
%struct.rockchip_pin_bank = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"group(%d): %pOFn\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"rockchip,pins\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"wrong pins number or pins and configs should be by 4\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.rockchip_pin_group*, %struct.rockchip_pinctrl*, i32)* @rockchip_pinctrl_parse_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pinctrl_parse_groups(%struct.device_node* %0, %struct.rockchip_pin_group* %1, %struct.rockchip_pinctrl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.rockchip_pin_group*, align 8
  %8 = alloca %struct.rockchip_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rockchip_pin_bank*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.rockchip_pin_group* %1, %struct.rockchip_pin_group** %7, align 8
  store %struct.rockchip_pinctrl* %2, %struct.rockchip_pinctrl** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %20 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.device_node* %23)
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %29 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call i32* @of_get_property(%struct.device_node* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  store i32* %31, i32** %12, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = srem i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %4
  %43 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %44 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %173

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = sdiv i32 %50, 4
  %52 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %53 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %55 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %58 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @devm_kcalloc(i32 %56, i32 %59, i32 4, i32 %60)
  %62 = bitcast i8* %61 to i64*
  %63 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %64 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %63, i32 0, i32 2
  store i64* %62, i64** %64, align 8
  %65 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %66 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %69 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @devm_kcalloc(i32 %67, i32 %70, i32 4, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_2__*
  %74 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %75 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %74, i32 0, i32 1
  store %struct.TYPE_2__* %73, %struct.TYPE_2__** %75, align 8
  %76 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %77 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %49
  %81 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %82 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80, %49
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %173

88:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %167, %88
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %172

93:                                               ; preds = %89
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %94, align 4
  %97 = call i8* @be32_to_cpu(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call %struct.rockchip_pin_bank* @bank_num_to_bank(%struct.rockchip_pinctrl* %99, i32 %100)
  store %struct.rockchip_pin_bank* %101, %struct.rockchip_pin_bank** %10, align 8
  %102 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %10, align 8
  %103 = call i64 @IS_ERR(%struct.rockchip_pin_bank* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %10, align 8
  %107 = call i32 @PTR_ERR(%struct.rockchip_pin_bank* %106)
  store i32 %107, i32* %5, align 4
  br label %173

108:                                              ; preds = %93
  %109 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %10, align 8
  %110 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %12, align 8
  %114 = load i32, i32* %112, align 4
  %115 = call i8* @be32_to_cpu(i32 %114)
  %116 = getelementptr i8, i8* %115, i64 %111
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %119 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %12, align 8
  %126 = load i32, i32* %124, align 4
  %127 = call i8* @be32_to_cpu(i32 %126)
  %128 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %129 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  store i8* %127, i8** %134, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %12, align 8
  store i32* %135, i32** %17, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %108
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %173

142:                                              ; preds = %108
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @be32_to_cpup(i32* %143)
  %145 = call %struct.device_node* @of_find_node_by_phandle(i32 %144)
  store %struct.device_node* %145, %struct.device_node** %18, align 8
  %146 = load %struct.device_node*, %struct.device_node** %18, align 8
  %147 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %148 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %7, align 8
  %155 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = call i32 @pinconf_generic_parse_dt_config(%struct.device_node* %146, i32* null, i32* %153, i32* %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %142
  %165 = load i32, i32* %16, align 4
  store i32 %165, i32* %5, align 4
  br label %173

166:                                              ; preds = %142
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 4
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %89

172:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %172, %164, %139, %105, %85, %42
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local %struct.rockchip_pin_bank* @bank_num_to_bank(%struct.rockchip_pinctrl*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rockchip_pin_bank*) #1

declare dso_local i32 @PTR_ERR(%struct.rockchip_pin_bank*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @pinconf_generic_parse_dt_config(%struct.device_node*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
