; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.sh_mobile_lcdc_info* }
%struct.sh_mobile_lcdc_info = type { %struct.sh_mobile_lcdc_chan*, i32, %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.sh_mobile_lcdc_chan*, i32, i32, %struct.sh_mobile_lcdc_priv*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sh_mobile_lcdc_priv = type { i32, %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_chan*, i32, i32, i32, %struct.TYPE_7__* }
%struct.sh_mobile_lcdc_overlay = type { %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot get platform resources\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sh_mobile_lcdc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to request irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unsupported interface type\0A\00", align 1
@LDCNT2R_ME = common dso_local global i32 0, align 4
@lcdc_offs_mainlcd = common dso_local global i32 0, align 4
@LDCNT2R_SE = common dso_local global i32 0, align 4
@lcdc_offs_sublcd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"no channels defined\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"unable to setup clocks\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"unable to start hardware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_mobile_lcdc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_info*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %12 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %13 = alloca %struct.sh_mobile_lcdc_overlay*, align 8
  %14 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %15 = alloca %struct.sh_mobile_lcdc_overlay*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %18, align 8
  store %struct.sh_mobile_lcdc_info* %19, %struct.sh_mobile_lcdc_info** %4, align 8
  %20 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %21 = icmp ne %struct.sh_mobile_lcdc_info* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %356

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %6, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i32 @platform_get_irq(%struct.platform_device* %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36, %28
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %356

45:                                               ; preds = %36
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.sh_mobile_lcdc_priv* @kzalloc(i32 48, i32 %46)
  store %struct.sh_mobile_lcdc_priv* %47, %struct.sh_mobile_lcdc_priv** %5, align 8
  %48 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %49 = icmp ne %struct.sh_mobile_lcdc_priv* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %356

53:                                               ; preds = %45
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %57 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %56, i32 0, i32 6
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %74, %53
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %61 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %60, i32 0, i32 2
  %62 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %61, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %62)
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %66, i32 0, i32 2
  %68 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %68, i64 %70
  %72 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %71, i32 0, i32 10
  %73 = call i32 @mutex_init(i32* %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %80 = call i32 @platform_set_drvdata(%struct.platform_device* %78, %struct.sh_mobile_lcdc_priv* %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @sh_mobile_lcdc_irq, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_name(%struct.TYPE_7__* %84)
  %86 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %87 = call i32 @request_irq(i32 %81, i32 %82, i32 0, i32 %85, %struct.sh_mobile_lcdc_priv* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(%struct.TYPE_7__* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %352

94:                                               ; preds = %77
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %97 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %99 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %98, i32 0, i32 5
  %100 = call i32 @atomic_set(i32* %99, i32 -1)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %183, %94
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %104 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %103, i32 0, i32 2
  %105 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %104, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %105)
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %186

108:                                              ; preds = %101
  %109 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %110 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %109, i32 0, i32 2
  %111 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %111, i64 %113
  store %struct.sh_mobile_lcdc_chan* %114, %struct.sh_mobile_lcdc_chan** %11, align 8
  %115 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %116 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %117 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %116, i32 0, i32 9
  store %struct.sh_mobile_lcdc_priv* %115, %struct.sh_mobile_lcdc_priv** %117, align 8
  %118 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %119 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %118, i32 0, i32 2
  %120 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %120, i64 %122
  %124 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %125 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %124, i32 0, i32 6
  store %struct.sh_mobile_lcdc_chan* %123, %struct.sh_mobile_lcdc_chan** %125, align 8
  %126 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %127 = call i32 @sh_mobile_lcdc_check_interface(%struct.sh_mobile_lcdc_chan* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %108
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_err(%struct.TYPE_7__* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %352

134:                                              ; preds = %108
  %135 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %136 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %135, i32 0, i32 8
  %137 = call i32 @init_waitqueue_head(i32* %136)
  %138 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %139 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %138, i32 0, i32 7
  %140 = call i32 @init_completion(i32* %139)
  %141 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %142 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %141, i32 0, i32 6
  %143 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %142, align 8
  %144 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %134
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %152 = call i32 @sh_mobile_lcdc_bl_probe(%struct.TYPE_7__* %150, %struct.sh_mobile_lcdc_chan* %151)
  %153 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %154 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %134
  %156 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %157 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %156, i32 0, i32 2
  %158 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %158, i64 %160
  %162 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  switch i32 %163, label %182 [
    i32 129, label %164
    i32 128, label %173
  ]

164:                                              ; preds = %155
  %165 = load i32, i32* @LDCNT2R_ME, align 4
  %166 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %167 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @lcdc_offs_mainlcd, align 4
  %169 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %170 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %182

173:                                              ; preds = %155
  %174 = load i32, i32* @LDCNT2R_SE, align 4
  %175 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %176 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @lcdc_offs_sublcd, align 4
  %178 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %11, align 8
  %179 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %155, %173, %164
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %101

186:                                              ; preds = %101
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %186
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call i32 @dev_err(%struct.TYPE_7__* %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %8, align 4
  br label %352

195:                                              ; preds = %186
  %196 = load i32, i32* %7, align 4
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %200 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %199, i32 0, i32 2
  %201 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %200, align 8
  %202 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %201, i64 0
  %203 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %206 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %198, %195
  %208 = load %struct.resource*, %struct.resource** %6, align 8
  %209 = getelementptr inbounds %struct.resource, %struct.resource* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.resource*, %struct.resource** %6, align 8
  %212 = call i32 @resource_size(%struct.resource* %211)
  %213 = call i32 @ioremap_nocache(i32 %210, i32 %212)
  %214 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %215 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 8
  %216 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %217 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %207
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %8, align 4
  br label %352

223:                                              ; preds = %207
  %224 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %225 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %226 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @sh_mobile_lcdc_setup_clocks(%struct.sh_mobile_lcdc_priv* %224, i32 %227)
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 @dev_err(%struct.TYPE_7__* %233, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %352

235:                                              ; preds = %223
  %236 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %237 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %236, i32 0, i32 0
  %238 = call i32 @pm_runtime_enable(%struct.TYPE_7__* %237)
  store i32 0, i32* %10, align 4
  br label %239

239:                                              ; preds = %256, %235
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %239
  %244 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %245 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %244, i32 0, i32 2
  %246 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %246, i64 %248
  store %struct.sh_mobile_lcdc_chan* %249, %struct.sh_mobile_lcdc_chan** %12, align 8
  %250 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %12, align 8
  %251 = call i32 @sh_mobile_lcdc_channel_init(%struct.sh_mobile_lcdc_chan* %250)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %243
  br label %352

255:                                              ; preds = %243
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %10, align 4
  br label %239

259:                                              ; preds = %239
  store i32 0, i32* %10, align 4
  br label %260

260:                                              ; preds = %294, %259
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %263 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %262, i32 0, i32 0
  %264 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %263, align 8
  %265 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %264)
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %267, label %297

267:                                              ; preds = %260
  %268 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %269 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %268, i32 0, i32 1
  %270 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %269, align 8
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %270, i64 %272
  store %struct.sh_mobile_lcdc_overlay* %273, %struct.sh_mobile_lcdc_overlay** %13, align 8
  %274 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %275 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %274, i32 0, i32 0
  %276 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %275, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %276, i64 %278
  %280 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %13, align 8
  %281 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %280, i32 0, i32 1
  store %struct.sh_mobile_lcdc_chan* %279, %struct.sh_mobile_lcdc_chan** %281, align 8
  %282 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %283 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %282, i32 0, i32 2
  %284 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %283, align 8
  %285 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %284, i64 0
  %286 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %13, align 8
  %287 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %286, i32 0, i32 0
  store %struct.sh_mobile_lcdc_chan* %285, %struct.sh_mobile_lcdc_chan** %287, align 8
  %288 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %13, align 8
  %289 = call i32 @sh_mobile_lcdc_overlay_init(%struct.sh_mobile_lcdc_overlay* %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %267
  br label %352

293:                                              ; preds = %267
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %10, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %10, align 4
  br label %260

297:                                              ; preds = %260
  %298 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %299 = call i32 @sh_mobile_lcdc_start(%struct.sh_mobile_lcdc_priv* %298)
  store i32 %299, i32* %8, align 4
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %297
  %303 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %304 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %303, i32 0, i32 0
  %305 = call i32 @dev_err(%struct.TYPE_7__* %304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %352

306:                                              ; preds = %297
  store i32 0, i32* %10, align 4
  br label %307

307:                                              ; preds = %324, %306
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %7, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %327

311:                                              ; preds = %307
  %312 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %313 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %312, i32 0, i32 2
  %314 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %314, i64 %316
  store %struct.sh_mobile_lcdc_chan* %317, %struct.sh_mobile_lcdc_chan** %14, align 8
  %318 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %14, align 8
  %319 = call i32 @sh_mobile_lcdc_channel_fb_register(%struct.sh_mobile_lcdc_chan* %318)
  store i32 %319, i32* %8, align 4
  %320 = load i32, i32* %8, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %311
  br label %352

323:                                              ; preds = %311
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %10, align 4
  br label %307

327:                                              ; preds = %307
  store i32 0, i32* %10, align 4
  br label %328

328:                                              ; preds = %348, %327
  %329 = load i32, i32* %10, align 4
  %330 = load %struct.sh_mobile_lcdc_info*, %struct.sh_mobile_lcdc_info** %4, align 8
  %331 = getelementptr inbounds %struct.sh_mobile_lcdc_info, %struct.sh_mobile_lcdc_info* %330, i32 0, i32 0
  %332 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %331, align 8
  %333 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %332)
  %334 = icmp slt i32 %329, %333
  br i1 %334, label %335, label %351

335:                                              ; preds = %328
  %336 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %5, align 8
  %337 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %336, i32 0, i32 1
  %338 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %337, align 8
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %338, i64 %340
  store %struct.sh_mobile_lcdc_overlay* %341, %struct.sh_mobile_lcdc_overlay** %15, align 8
  %342 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %15, align 8
  %343 = call i32 @sh_mobile_lcdc_overlay_fb_register(%struct.sh_mobile_lcdc_overlay* %342)
  store i32 %343, i32* %8, align 4
  %344 = load i32, i32* %8, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %335
  br label %352

347:                                              ; preds = %335
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %10, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %10, align 4
  br label %328

351:                                              ; preds = %328
  store i32 0, i32* %2, align 4
  br label %356

352:                                              ; preds = %346, %322, %302, %292, %254, %231, %220, %189, %130, %90
  %353 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %354 = call i32 @sh_mobile_lcdc_remove(%struct.platform_device* %353)
  %355 = load i32, i32* %8, align 4
  store i32 %355, i32* %2, align 4
  br label %356

356:                                              ; preds = %352, %351, %50, %39, %22
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.sh_mobile_lcdc_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sh_mobile_lcdc_check_interface(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sh_mobile_lcdc_bl_probe(%struct.TYPE_7__*, %struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @sh_mobile_lcdc_setup_clocks(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @sh_mobile_lcdc_channel_init(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @sh_mobile_lcdc_overlay_init(%struct.sh_mobile_lcdc_overlay*) #1

declare dso_local i32 @sh_mobile_lcdc_start(%struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @sh_mobile_lcdc_channel_fb_register(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @sh_mobile_lcdc_overlay_fb_register(%struct.sh_mobile_lcdc_overlay*) #1

declare dso_local i32 @sh_mobile_lcdc_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
