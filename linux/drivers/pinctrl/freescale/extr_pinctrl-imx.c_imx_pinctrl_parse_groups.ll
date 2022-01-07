; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinctrl_parse_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinctrl_parse_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.group_desc = type { i32, i32*, i8*, i32 }
%struct.imx_pinctrl = type { i32, %struct.imx_pinctrl_soc_info* }
%struct.imx_pinctrl_soc_info = type { i32, i64 }
%struct.imx_pin = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"group(%d): %pOFn\0A\00", align 1
@IMX_USE_SCU = common dso_local global i32 0, align 4
@FSL_SCU_PIN_SIZE = common dso_local global i32 0, align 4
@SHARE_MUX_CONF_REG = common dso_local global i32 0, align 4
@FSL_PIN_SHARE_SIZE = common dso_local global i32 0, align 4
@FSL_PIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fsl,pins\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"no fsl,pins and pins property in node %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Invalid fsl,pins or pins property in node %pOF\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.group_desc*, %struct.imx_pinctrl*, i32)* @imx_pinctrl_parse_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pinctrl_parse_groups(%struct.device_node* %0, %struct.group_desc* %1, %struct.imx_pinctrl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.group_desc*, align 8
  %8 = alloca %struct.imx_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %11 = alloca %struct.imx_pin*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.group_desc* %1, %struct.group_desc** %7, align 8
  store %struct.imx_pinctrl* %2, %struct.imx_pinctrl** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %17, align 8
  store %struct.imx_pinctrl_soc_info* %18, %struct.imx_pinctrl_soc_info** %10, align 8
  %19 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %20 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.device_node* %23)
  %25 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %10, align 8
  %26 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IMX_USE_SCU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @FSL_SCU_PIN_SIZE, align 4
  store i32 %32, i32* %13, align 4
  br label %45

33:                                               ; preds = %4
  %34 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %10, align 8
  %35 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SHARE_MUX_CONF_REG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @FSL_PIN_SHARE_SIZE, align 4
  store i32 %41, i32* %13, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @FSL_PIN_SIZE, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %10, align 8
  %47 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %51, 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = getelementptr inbounds %struct.device_node, %struct.device_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %58 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = call i32* @of_get_property(%struct.device_node* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %53
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i32* @of_get_property(%struct.device_node* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %70 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.device_node*, %struct.device_node** %6, align 8
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %179

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = srem i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80, %77
  %86 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %87 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %179

93:                                               ; preds = %80
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sdiv i32 %94, %95
  %97 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %98 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %100 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %103 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @devm_kcalloc(i32 %101, i32 %104, i32 4, i32 %105)
  %107 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %108 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %110 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %113 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @devm_kcalloc(i32 %111, i32 %114, i32 4, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %119 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %121 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %93
  %125 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %126 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %124, %93
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %179

132:                                              ; preds = %124
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %175, %132
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %136 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %178

139:                                              ; preds = %133
  %140 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %141 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = bitcast i8* %142 to %struct.imx_pin*
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %143, i64 %145
  store %struct.imx_pin* %146, %struct.imx_pin** %11, align 8
  %147 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %10, align 8
  %148 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IMX_USE_SCU, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %139
  %154 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %155 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %156 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load %struct.imx_pin*, %struct.imx_pin** %11, align 8
  %162 = call i32 @imx_pinctrl_parse_pin_scu(%struct.imx_pinctrl* %154, i32* %160, %struct.imx_pin* %161, i32** %14)
  br label %174

163:                                              ; preds = %139
  %164 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %8, align 8
  %165 = load %struct.group_desc*, %struct.group_desc** %7, align 8
  %166 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load %struct.imx_pin*, %struct.imx_pin** %11, align 8
  %172 = load %struct.device_node*, %struct.device_node** %6, align 8
  %173 = call i32 @imx_pinctrl_parse_pin_mmio(%struct.imx_pinctrl* %164, i32* %170, %struct.imx_pin* %171, i32** %14, %struct.device_node* %172)
  br label %174

174:                                              ; preds = %163, %153
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %133

178:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %129, %85, %68
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @imx_pinctrl_parse_pin_scu(%struct.imx_pinctrl*, i32*, %struct.imx_pin*, i32**) #1

declare dso_local i32 @imx_pinctrl_parse_pin_mmio(%struct.imx_pinctrl*, i32*, %struct.imx_pin*, i32**, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
