; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64*, i32, i32 }
%struct.imx_pinctrl = type { i32, %struct.imx_pinctrl_soc_info* }
%struct.imx_pinctrl_soc_info = type { i32 }
%struct.group_desc = type { i32, i64 }
%struct.imx_pin = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"unable to find group for node %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IMX_USE_SCU = common dso_local global i32 0, align 4
@IMX_NO_PAD_CTL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_CONFIGS_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"maps: function %s group %s num %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @imx_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.imx_pinctrl*, align 8
  %11 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %12 = alloca %struct.group_desc*, align 8
  %13 = alloca %struct.pinctrl_map*, align 8
  %14 = alloca %struct.device_node*, align 8
  %15 = alloca %struct.imx_pin*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %20 = call %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %19)
  store %struct.imx_pinctrl* %20, %struct.imx_pinctrl** %10, align 8
  %21 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %22 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %21, i32 0, i32 1
  %23 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %22, align 8
  store %struct.imx_pinctrl_soc_info* %23, %struct.imx_pinctrl_soc_info** %11, align 8
  store i32 1, i32* %16, align 4
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.group_desc* @imx_pinctrl_find_group_by_name(%struct.pinctrl_dev* %24, i32 %27)
  store %struct.group_desc* %28, %struct.group_desc** %12, align 8
  %29 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %30 = icmp ne %struct.group_desc* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %4
  %32 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %10, align 8
  %33 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.device_node* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %249

39:                                               ; preds = %4
  %40 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %11, align 8
  %41 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IMX_USE_SCU, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %48 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %16, align 4
  br label %83

52:                                               ; preds = %39
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %79, %52
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %56 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %61 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.imx_pin*
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %63, i64 %65
  store %struct.imx_pin* %66, %struct.imx_pin** %15, align 8
  %67 = load %struct.imx_pin*, %struct.imx_pin** %15, align 8
  %68 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IMX_NO_PAD_CTL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %75, %59
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %53

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %82, %46
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.pinctrl_map* @kmalloc_array(i32 %84, i32 32, i32 %85)
  store %struct.pinctrl_map* %86, %struct.pinctrl_map** %13, align 8
  %87 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %88 = icmp ne %struct.pinctrl_map* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %249

92:                                               ; preds = %83
  %93 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %94 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* %93, %struct.pinctrl_map** %94, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.device_node*, %struct.device_node** %7, align 8
  %98 = call %struct.device_node* @of_get_parent(%struct.device_node* %97)
  store %struct.device_node* %98, %struct.device_node** %14, align 8
  %99 = load %struct.device_node*, %struct.device_node** %14, align 8
  %100 = icmp ne %struct.device_node* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %103 = call i32 @kfree(%struct.pinctrl_map* %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %249

106:                                              ; preds = %92
  %107 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %108 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %109 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %108, i64 0
  %110 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  %111 = load %struct.device_node*, %struct.device_node** %14, align 8
  %112 = getelementptr inbounds %struct.device_node, %struct.device_node* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %115 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %114, i64 0
  %116 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 %113, i32* %118, align 4
  %119 = load %struct.device_node*, %struct.device_node** %7, align 8
  %120 = getelementptr inbounds %struct.device_node, %struct.device_node* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %123 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %122, i64 0
  %124 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 8
  %127 = load %struct.device_node*, %struct.device_node** %14, align 8
  %128 = call i32 @of_node_put(%struct.device_node* %127)
  %129 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %130 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %129, i32 1
  store %struct.pinctrl_map* %130, %struct.pinctrl_map** %13, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %228, %106
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %134 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %231

137:                                              ; preds = %131
  %138 = load %struct.group_desc*, %struct.group_desc** %12, align 8
  %139 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to %struct.imx_pin*
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %141, i64 %143
  store %struct.imx_pin* %144, %struct.imx_pin** %15, align 8
  %145 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %11, align 8
  %146 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IMX_USE_SCU, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %137
  %152 = load %struct.imx_pin*, %struct.imx_pin** %15, align 8
  %153 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IMX_NO_PAD_CTL, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %228

161:                                              ; preds = %151, %137
  %162 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_PIN, align 4
  %163 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %163, i64 %165
  %167 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %166, i32 0, i32 1
  store i32 %162, i32* %167, align 8
  %168 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %169 = load %struct.imx_pin*, %struct.imx_pin** %15, align 8
  %170 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @pin_get_name(%struct.pinctrl_dev* %168, i32 %171)
  %173 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %173, i64 %175
  %177 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i32 %172, i32* %179, align 4
  %180 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %11, align 8
  %181 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @IMX_USE_SCU, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %161
  %187 = load %struct.imx_pin*, %struct.imx_pin** %15, align 8
  %188 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = bitcast i32* %189 to i64*
  %191 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %191, i64 %193
  %195 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store i64* %190, i64** %197, align 8
  %198 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %198, i64 %200
  %202 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store i32 2, i32* %204, align 8
  br label %225

205:                                              ; preds = %161
  %206 = load %struct.imx_pin*, %struct.imx_pin** %15, align 8
  %207 = getelementptr inbounds %struct.imx_pin, %struct.imx_pin* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = bitcast i32* %209 to i64*
  %211 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %211, i64 %213
  %215 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  store i64* %210, i64** %217, align 8
  %218 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %218, i64 %220
  %222 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  store i32 1, i32* %224, align 8
  br label %225

225:                                              ; preds = %205, %186
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %18, align 4
  br label %228

228:                                              ; preds = %225, %160
  %229 = load i32, i32* %17, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %17, align 4
  br label %131

231:                                              ; preds = %131
  %232 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %233 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %236 = load %struct.pinctrl_map*, %struct.pinctrl_map** %235, align 8
  %237 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %242 = load %struct.pinctrl_map*, %struct.pinctrl_map** %241, align 8
  %243 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %16, align 4
  %248 = call i32 @dev_dbg(i32 %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %240, i32 %246, i32 %247)
  store i32 0, i32* %5, align 4
  br label %249

249:                                              ; preds = %231, %101, %89, %31
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.group_desc* @imx_pinctrl_find_group_by_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

declare dso_local %struct.pinctrl_map* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @kfree(%struct.pinctrl_map*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
