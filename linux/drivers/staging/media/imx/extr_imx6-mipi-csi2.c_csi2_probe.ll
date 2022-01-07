; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_csi2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_csi2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.csi2_dev = type { i32, i8*, i8*, %struct.TYPE_8__, i32, i8*, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@csi2_subdev_ops = common dso_local global i32 0, align 4
@csi2_internal_ops = common dso_local global i32 0, align 4
@csi2_entity_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_CSI2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to get pll reference clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dphy\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get dphy clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pix\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get pixel clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to get platform resources\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to enable pllref_clk\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to enable dphy_clk\0A\00", align 1
@csi2_parse_endpoint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @csi2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csi2_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.csi2_dev* @devm_kzalloc(i32* %9, i32 104, i32 %10)
  store %struct.csi2_dev* %11, %struct.csi2_dev** %5, align 8
  %12 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %13 = icmp ne %struct.csi2_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %206

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %21 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %20, i32 0, i32 6
  store i32* %19, i32** %21, align 8
  %22 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %23 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %22, i32 0, i32 3
  %24 = call i32 @v4l2_subdev_init(%struct.TYPE_8__* %23, i32* @csi2_subdev_ops)
  %25 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %26 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %25, i32 0, i32 3
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @v4l2_set_subdevdata(%struct.TYPE_8__* %26, i32* %28)
  %30 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %31 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  store i32* @csi2_internal_ops, i32** %32, align 8
  %33 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %34 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32* @csi2_entity_ops, i32** %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %40 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  store i32* %38, i32** %41, align 8
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %44 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %47 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %48 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %51 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DEVICE_NAME, align 4
  %55 = call i32 @strscpy(i32 %53, i32 %54, i32 4)
  %56 = load i32, i32* @MEDIA_ENT_F_VID_IF_BRIDGE, align 4
  %57 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %58 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* @IMX_MEDIA_GRP_ID_CSI2, align 4
  %62 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %63 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i8* @devm_clk_get(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %69 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %71 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %17
  %76 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %77 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %76, i32 0, i32 3
  %78 = call i32 @v4l2_err(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %80 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %206

84:                                               ; preds = %17
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i8* @devm_clk_get(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %89 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %91 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %84
  %96 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %97 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %96, i32 0, i32 3
  %98 = call i32 @v4l2_err(%struct.TYPE_8__* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %100 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %206

104:                                              ; preds = %84
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i8* @devm_clk_get(i32* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %109 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %111 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %110, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %104
  %116 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %117 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %116, i32 0, i32 3
  %118 = call i32 @v4l2_err(%struct.TYPE_8__* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %120 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %119, i32 0, i32 5
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %206

124:                                              ; preds = %104
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = load i32, i32* @IORESOURCE_MEM, align 4
  %127 = call %struct.resource* @platform_get_resource(%struct.platform_device* %125, i32 %126, i32 0)
  store %struct.resource* %127, %struct.resource** %6, align 8
  %128 = load %struct.resource*, %struct.resource** %6, align 8
  %129 = icmp ne %struct.resource* %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %132 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %131, i32 0, i32 3
  %133 = call i32 @v4l2_err(%struct.TYPE_8__* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %206

136:                                              ; preds = %124
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load %struct.resource*, %struct.resource** %6, align 8
  %140 = getelementptr inbounds %struct.resource, %struct.resource* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PAGE_SIZE, align 4
  %143 = call i32 @devm_ioremap(i32* %138, i32 %141, i32 %142)
  %144 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %145 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %147 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %136
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %206

153:                                              ; preds = %136
  %154 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %155 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %154, i32 0, i32 0
  %156 = call i32 @mutex_init(i32* %155)
  %157 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %158 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @clk_prepare_enable(i8* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %153
  %164 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %165 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %164, i32 0, i32 3
  %166 = call i32 @v4l2_err(%struct.TYPE_8__* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %201

167:                                              ; preds = %153
  %168 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %169 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @clk_prepare_enable(i8* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %176 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %175, i32 0, i32 3
  %177 = call i32 @v4l2_err(%struct.TYPE_8__* %176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %196

178:                                              ; preds = %167
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %181 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %180, i32 0, i32 3
  %182 = call i32 @platform_set_drvdata(%struct.platform_device* %179, %struct.TYPE_8__* %181)
  %183 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %184 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %183, i32 0, i32 3
  %185 = load i32, i32* @csi2_parse_endpoint, align 4
  %186 = call i32 @v4l2_async_register_fwnode_subdev(%struct.TYPE_8__* %184, i32 4, i32* %4, i32 1, i32 %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  br label %191

190:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %206

191:                                              ; preds = %189
  %192 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %193 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @clk_disable_unprepare(i8* %194)
  br label %196

196:                                              ; preds = %191, %174
  %197 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %198 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @clk_disable_unprepare(i8* %199)
  br label %201

201:                                              ; preds = %196, %163
  %202 = load %struct.csi2_dev*, %struct.csi2_dev** %5, align 8
  %203 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %202, i32 0, i32 0
  %204 = call i32 @mutex_destroy(i32* %203)
  %205 = load i32, i32* %7, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %201, %190, %150, %130, %115, %95, %75, %14
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.csi2_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_register_fwnode_subdev(%struct.TYPE_8__*, i32, i32*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
