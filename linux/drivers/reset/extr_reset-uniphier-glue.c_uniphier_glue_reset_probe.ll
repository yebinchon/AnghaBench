; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier-glue.c_uniphier_glue_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier-glue.c_uniphier_glue_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_glue_reset_priv = type { %struct.TYPE_10__*, %struct.TYPE_8__*, i32*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i8**, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_CLKS = common dso_local global i32 0, align 4
@MAX_RSTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@reset_simple_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_glue_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_glue_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_glue_reset_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.uniphier_glue_reset_priv* @devm_kzalloc(%struct.device* %14, i32 64, i32 %15)
  store %struct.uniphier_glue_reset_priv* %16, %struct.uniphier_glue_reset_priv** %5, align 8
  %17 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %18 = icmp ne %struct.uniphier_glue_reset_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %280

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.TYPE_8__* @of_device_get_match_data(%struct.device* %23)
  %25 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %26 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %25, i32 0, i32 1
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %28 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %33 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MAX_CLKS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %41 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX_RSTS, align 4
  %46 = icmp sgt i32 %44, %45
  br label %47

47:                                               ; preds = %39, %31, %22
  %48 = phi i1 [ true, %31 ], [ true, %22 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %280

55:                                               ; preds = %47
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %6, align 8
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i32 @resource_size(%struct.resource* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = call i32 @devm_ioremap_resource(%struct.device* %61, %struct.resource* %62)
  %64 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %65 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %68 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %75 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %280

79:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %83 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %80
  %89 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %90 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %99 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %111 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %116 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = call i32 @devm_clk_bulk_get(%struct.device* %109, i32 %114, %struct.TYPE_10__* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %280

123:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %170, %123
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %127 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %125, %130
  br i1 %131, label %132, label %173

132:                                              ; preds = %124
  %133 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %134 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %8, align 8
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @devm_reset_control_get_shared(%struct.device* %142, i8* %143)
  %145 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %146 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %152 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @IS_ERR(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %132
  %161 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %162 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %2, align 4
  br label %280

169:                                              ; preds = %132
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %124

173:                                              ; preds = %124
  %174 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %175 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %174, i32 0, i32 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %180 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = call i32 @clk_bulk_prepare_enable(i32 %178, %struct.TYPE_10__* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %173
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %2, align 4
  br label %280

187:                                              ; preds = %173
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %209, %187
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %191 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %190, i32 0, i32 1
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %189, %194
  br i1 %195, label %196, label %212

196:                                              ; preds = %188
  %197 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %198 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @reset_control_deassert(i32 %203)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %196
  br label %255

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %188

212:                                              ; preds = %188
  %213 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %214 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = call i32 @spin_lock_init(i32* %215)
  %217 = load i32, i32* @THIS_MODULE, align 4
  %218 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %219 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 3
  store i32 %217, i32* %221, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @BITS_PER_BYTE, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %226 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 8
  %229 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %230 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  store i32* @reset_simple_ops, i32** %232, align 8
  %233 = load %struct.device*, %struct.device** %4, align 8
  %234 = getelementptr inbounds %struct.device, %struct.device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %237 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i32 %235, i32* %239, align 4
  %240 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %241 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %245 = call i32 @platform_set_drvdata(%struct.platform_device* %243, %struct.uniphier_glue_reset_priv* %244)
  %246 = load %struct.device*, %struct.device** %4, align 8
  %247 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %248 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = call i32 @devm_reset_controller_register(%struct.device* %246, %struct.TYPE_9__* %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %212
  br label %255

254:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %280

255:                                              ; preds = %253, %207
  br label %256

256:                                              ; preds = %260, %255
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %11, align 4
  %259 = icmp ne i32 %257, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %256
  %261 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %262 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @reset_control_assert(i32 %267)
  br label %256

269:                                              ; preds = %256
  %270 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %271 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %270, i32 0, i32 1
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.uniphier_glue_reset_priv*, %struct.uniphier_glue_reset_priv** %5, align 8
  %276 = getelementptr inbounds %struct.uniphier_glue_reset_priv, %struct.uniphier_glue_reset_priv* %275, i32 0, i32 0
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = call i32 @clk_bulk_disable_unprepare(i32 %274, %struct.TYPE_10__* %277)
  %279 = load i32, i32* %10, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %269, %254, %185, %160, %121, %73, %52, %19
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.uniphier_glue_reset_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_glue_reset_priv*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_9__*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
