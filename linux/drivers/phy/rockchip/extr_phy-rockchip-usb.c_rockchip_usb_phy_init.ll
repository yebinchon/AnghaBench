; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-usb.c_rockchip_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-usb.c_rockchip_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb_phy_base = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.device_node = type { i32 }
%struct.rockchip_usb_phy = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_17__, %struct.TYPE_20__*, %struct.device_node*, %struct.rockchip_usb_phy_base* }
%struct.TYPE_17__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32*, i64, i32* }
%struct.TYPE_20__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"missing reg property in node %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"phy-reset\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"phyclk\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"phy data not found\0A\00", align 1
@enable_usb_uart = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"phy%d used as uart output\0A\00", align 1
@rockchip_usb_phy480m_ops = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@rockchip_usb_phy_action = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_usb_phy_base*, %struct.device_node*)* @rockchip_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb_phy_init(%struct.rockchip_usb_phy_base* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_usb_phy_base*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.rockchip_usb_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rockchip_usb_phy_base* %0, %struct.rockchip_usb_phy_base** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %12 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %13 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rockchip_usb_phy* @devm_kzalloc(i32 %14, i32 72, i32 %15)
  store %struct.rockchip_usb_phy* %16, %struct.rockchip_usb_phy** %6, align 8
  %17 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %18 = icmp ne %struct.rockchip_usb_phy* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %295

22:                                               ; preds = %2
  %23 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %24 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %25 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %24, i32 0, i32 9
  store %struct.rockchip_usb_phy_base* %23, %struct.rockchip_usb_phy_base** %25, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %28 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %27, i32 0, i32 8
  store %struct.device_node* %26, %struct.device_node** %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i64 @of_property_read_u32(%struct.device_node* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %34 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %295

40:                                               ; preds = %22
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call %struct.TYPE_20__* @of_reset_control_get(%struct.device_node* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %44 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %43, i32 0, i32 7
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %44, align 8
  %45 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %46 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %45, i32 0, i32 7
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = call i64 @IS_ERR(%struct.TYPE_20__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %52 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %51, i32 0, i32 7
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %52, align 8
  br label %53

53:                                               ; preds = %50, %40
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %56 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call %struct.TYPE_20__* @of_clk_get_by_name(%struct.device_node* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %60 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %59, i32 0, i32 2
  store %struct.TYPE_20__* %58, %struct.TYPE_20__** %60, align 8
  %61 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %62 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %61, i32 0, i32 2
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = call i64 @IS_ERR(%struct.TYPE_20__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %68 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %67, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %68, align 8
  br label %69

69:                                               ; preds = %66, %53
  store i32 0, i32* %11, align 4
  %70 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %108, %69
  %72 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %73 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %71
  %84 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %85 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %83
  %97 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %98 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %97, i32 0, i32 1
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* %106, i32** %107, align 8
  br label %111

108:                                              ; preds = %83
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %71

111:                                              ; preds = %96, %71
  %112 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %117 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %295

122:                                              ; preds = %111
  %123 = load i64, i64* @enable_usb_uart, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %127 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %135 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @dev_dbg(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %140 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  br label %192

141:                                              ; preds = %125, %122
  %142 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %143 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %142, i32 0, i32 2
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = icmp ne %struct.TYPE_20__* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %148 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %147, i32 0, i32 2
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = call i8* @__clk_get_name(%struct.TYPE_20__* %149)
  store i8* %150, i8** %8, align 8
  %151 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %8, i8*** %152, align 8
  %153 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 1, i32* %153, align 8
  br label %158

154:                                              ; preds = %141
  %155 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** null, i8*** %156, align 8
  %157 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 0, i32* %157, align 8
  br label %158

158:                                              ; preds = %154, %146
  %159 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32* @rockchip_usb_phy480m_ops, i32** %159, align 8
  %160 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %161 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %162, align 8
  %163 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %164 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %167 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %166, i32 0, i32 6
  %168 = call %struct.TYPE_20__* @clk_register(i32 %165, %struct.TYPE_17__* %167)
  %169 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %170 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %169, i32 0, i32 3
  store %struct.TYPE_20__* %168, %struct.TYPE_20__** %170, align 8
  %171 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %172 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %171, i32 0, i32 3
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = call i64 @IS_ERR(%struct.TYPE_20__* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %158
  %177 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %178 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %177, i32 0, i32 3
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = call i32 @PTR_ERR(%struct.TYPE_20__* %179)
  store i32 %180, i32* %10, align 4
  br label %283

181:                                              ; preds = %158
  %182 = load %struct.device_node*, %struct.device_node** %5, align 8
  %183 = load i32, i32* @of_clk_src_simple_get, align 4
  %184 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %185 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %184, i32 0, i32 3
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %185, align 8
  %187 = call i32 @of_clk_add_provider(%struct.device_node* %182, i32 %183, %struct.TYPE_20__* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %272

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %133
  %193 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %194 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @rockchip_usb_phy_action, align 4
  %197 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %198 = call i32 @devm_add_action_or_reset(i32 %195, i32 %196, %struct.rockchip_usb_phy* %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %3, align 4
  br label %295

203:                                              ; preds = %192
  %204 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %205 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.device_node*, %struct.device_node** %5, align 8
  %208 = call %struct.TYPE_20__* @devm_phy_create(i32 %206, %struct.device_node* %207, i32* @ops)
  %209 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %210 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %209, i32 0, i32 5
  store %struct.TYPE_20__* %208, %struct.TYPE_20__** %210, align 8
  %211 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %212 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %211, i32 0, i32 5
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = call i64 @IS_ERR(%struct.TYPE_20__* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %203
  %217 = load %struct.rockchip_usb_phy_base*, %struct.rockchip_usb_phy_base** %4, align 8
  %218 = getelementptr inbounds %struct.rockchip_usb_phy_base, %struct.rockchip_usb_phy_base* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (i32, i8*, ...) @dev_err(i32 %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %221 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %222 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %221, i32 0, i32 5
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = call i32 @PTR_ERR(%struct.TYPE_20__* %223)
  store i32 %224, i32* %3, align 4
  br label %295

225:                                              ; preds = %203
  %226 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %227 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %226, i32 0, i32 5
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %230 = call i32 @phy_set_drvdata(%struct.TYPE_20__* %228, %struct.rockchip_usb_phy* %229)
  %231 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %232 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %231, i32 0, i32 5
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = call %struct.TYPE_20__* @devm_regulator_get_optional(i32* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %236 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %237 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %236, i32 0, i32 4
  store %struct.TYPE_20__* %235, %struct.TYPE_20__** %237, align 8
  %238 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %239 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %238, i32 0, i32 4
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = call i64 @IS_ERR(%struct.TYPE_20__* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %225
  %244 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %245 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %244, i32 0, i32 4
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %245, align 8
  %247 = call i32 @PTR_ERR(%struct.TYPE_20__* %246)
  %248 = load i32, i32* @EPROBE_DEFER, align 4
  %249 = sub nsw i32 0, %248
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %243
  %252 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %253 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %252, i32 0, i32 4
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = call i32 @PTR_ERR(%struct.TYPE_20__* %254)
  store i32 %255, i32* %3, align 4
  br label %295

256:                                              ; preds = %243
  %257 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %258 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %257, i32 0, i32 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %258, align 8
  br label %259

259:                                              ; preds = %256, %225
  %260 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %261 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %266 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %265, i32 0, i32 2
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %266, align 8
  %268 = call i32 @clk_prepare_enable(%struct.TYPE_20__* %267)
  store i32 %268, i32* %3, align 4
  br label %295

269:                                              ; preds = %259
  %270 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %271 = call i32 @rockchip_usb_phy_power(%struct.rockchip_usb_phy* %270, i32 1)
  store i32 %271, i32* %3, align 4
  br label %295

272:                                              ; preds = %190
  %273 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %274 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %279 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %278, i32 0, i32 3
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %279, align 8
  %281 = call i32 @clk_unregister(%struct.TYPE_20__* %280)
  br label %282

282:                                              ; preds = %277, %272
  br label %283

283:                                              ; preds = %282, %176
  %284 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %285 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %284, i32 0, i32 2
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %285, align 8
  %287 = icmp ne %struct.TYPE_20__* %286, null
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %6, align 8
  %290 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %289, i32 0, i32 2
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %290, align 8
  %292 = call i32 @clk_put(%struct.TYPE_20__* %291)
  br label %293

293:                                              ; preds = %288, %283
  %294 = load i32, i32* %10, align 4
  store i32 %294, i32* %3, align 4
  br label %295

295:                                              ; preds = %293, %269, %264, %251, %216, %201, %115, %32, %19
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local %struct.rockchip_usb_phy* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.TYPE_20__* @of_reset_control_get(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i8* @__clk_get_name(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @clk_register(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_20__*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @devm_add_action_or_reset(i32, i32, %struct.rockchip_usb_phy*) #1

declare dso_local %struct.TYPE_20__* @devm_phy_create(i32, %struct.device_node*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.TYPE_20__*, %struct.rockchip_usb_phy*) #1

declare dso_local %struct.TYPE_20__* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_20__*) #1

declare dso_local i32 @rockchip_usb_phy_power(%struct.rockchip_usb_phy*, i32) #1

declare dso_local i32 @clk_unregister(%struct.TYPE_20__*) #1

declare dso_local i32 @clk_put(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
