; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_init_fb_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_init_fb_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.mx3fb_data = type { i32, %struct.device*, %struct.fb_info* }
%struct.device = type { i32 }
%struct.fb_info = type { i32, %struct.mx3fb_info*, %struct.TYPE_4__, i32 }
%struct.mx3fb_info = type { i64, i32, i32, %struct.mx3fb_data*, %struct.idmac_channel* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.idmac_channel = type { i32, %struct.TYPE_3__, %struct.mx3fb_data* }
%struct.TYPE_3__ = type { i64 }
%struct.mx3fb_platform_data = type { i8*, i32, i32, %struct.fb_videomode* }

@di_mappings = common dso_local global %struct.fb_videomode* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Illegal display data format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IDMAC_SDC_0 = common dso_local global i64 0, align 8
@mx3fb_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fb_mode = common dso_local global i8* null, align 8
@mx3fb_modedb = common dso_local global %struct.fb_videomode* null, align 8
@default_bpp = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DI_HSP_CLK_PER = common dso_local global i32 0, align 4
@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"disabling irq %d\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"registered, using mode %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx3fb_data*, %struct.idmac_channel*)* @init_fb_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fb_chan(%struct.mx3fb_data* %0, %struct.idmac_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mx3fb_data*, align 8
  %5 = alloca %struct.idmac_channel*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mx3fb_platform_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.mx3fb_info*, align 8
  %12 = alloca %struct.fb_videomode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mx3fb_data* %0, %struct.mx3fb_data** %4, align 8
  store %struct.idmac_channel* %1, %struct.idmac_channel** %5, align 8
  %15 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %16 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.mx3fb_platform_data* @dev_get_platdata(%struct.device* %18)
  store %struct.mx3fb_platform_data* %19, %struct.mx3fb_platform_data** %7, align 8
  %20 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %21 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %24 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fb_videomode*, %struct.fb_videomode** @di_mappings, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %26)
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %197

37:                                               ; preds = %2
  %38 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %39 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %40 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %39, i32 0, i32 2
  store %struct.mx3fb_data* %38, %struct.mx3fb_data** %40, align 8
  %41 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %42 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %45 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IDMAC_SDC_0, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %197

53:                                               ; preds = %37
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call %struct.fb_info* @mx3fb_init_fbinfo(%struct.device* %54, i32* @mx3fb_ops)
  store %struct.fb_info* %55, %struct.fb_info** %10, align 8
  %56 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %57 = icmp ne %struct.fb_info* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %197

61:                                               ; preds = %53
  %62 = load i8*, i8** @fb_mode, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** @fb_mode, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i8*, i8** @fb_mode, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %190

72:                                               ; preds = %66
  %73 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %74 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %73, i32 0, i32 3
  %75 = load %struct.fb_videomode*, %struct.fb_videomode** %74, align 8
  %76 = icmp ne %struct.fb_videomode* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %79 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %84 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %83, i32 0, i32 3
  %85 = load %struct.fb_videomode*, %struct.fb_videomode** %84, align 8
  store %struct.fb_videomode* %85, %struct.fb_videomode** %12, align 8
  %86 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %87 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %14, align 4
  br label %93

89:                                               ; preds = %77, %72
  %90 = load %struct.fb_videomode*, %struct.fb_videomode** @mx3fb_modedb, align 8
  store %struct.fb_videomode* %90, %struct.fb_videomode** %12, align 8
  %91 = load %struct.fb_videomode*, %struct.fb_videomode** @mx3fb_modedb, align 8
  %92 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %91)
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 2
  %96 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %97 = load i8*, i8** @fb_mode, align 8
  %98 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @default_bpp, align 4
  %101 = call i32 @fb_find_mode(%struct.TYPE_4__* %95, %struct.fb_info* %96, i8* %97, %struct.fb_videomode* %98, i32 %99, i32* null, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %93
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %190

106:                                              ; preds = %93
  %107 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 3
  %111 = call i32 @fb_videomode_to_modelist(%struct.fb_videomode* %107, i32 %108, i32* %110)
  %112 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 2
  %117 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %121 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %122 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %121, i32 0, i32 2
  store %struct.fb_info* %120, %struct.fb_info** %122, align 8
  %123 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %124 = load i32, i32* @DI_HSP_CLK_PER, align 4
  %125 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %123, i32 1048592, i32 %124)
  %126 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %127 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %126, i32 255)
  %128 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %129 = call i32 @sdc_set_global_alpha(%struct.mx3fb_data* %128, i32 1, i32 255)
  %130 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %131 = load i64, i64* @IDMAC_SDC_0, align 8
  %132 = call i32 @sdc_set_color_key(%struct.mx3fb_data* %130, i64 %131, i32 0, i32 0)
  %133 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 1
  %135 = load %struct.mx3fb_info*, %struct.mx3fb_info** %134, align 8
  store %struct.mx3fb_info* %135, %struct.mx3fb_info** %11, align 8
  %136 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %137 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %138 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %137, i32 0, i32 4
  store %struct.idmac_channel* %136, %struct.idmac_channel** %138, align 8
  %139 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %140 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %144 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %146 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %147 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %146, i32 0, i32 3
  store %struct.mx3fb_data* %145, %struct.mx3fb_data** %147, align 8
  %148 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %149 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %150 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %152 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %155 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %157 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %156, i32 0, i32 1
  %158 = call i32 @init_completion(i32* %157)
  %159 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %160 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @disable_irq(i32 %161)
  %163 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %164 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %163, i32 0, i32 1
  %165 = load %struct.device*, %struct.device** %164, align 8
  %166 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %167 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @dev_dbg(%struct.device* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %171 = call i32 @__set_par(%struct.fb_info* %170, i32 0)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %106
  br label %189

175:                                              ; preds = %106
  %176 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %177 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %178 = call i32 @__blank(i32 %176, %struct.fb_info* %177)
  %179 = load %struct.device*, %struct.device** %6, align 8
  %180 = load i8*, i8** @fb_mode, align 8
  %181 = call i32 @dev_info(%struct.device* %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %180)
  %182 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %183 = call i32 @register_framebuffer(%struct.fb_info* %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %188

187:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %197

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %188, %174
  br label %190

190:                                              ; preds = %189, %103, %69
  %191 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %192 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %191, i32 0, i32 0
  %193 = call i32 @fb_dealloc_cmap(i32* %192)
  %194 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %195 = call i32 @framebuffer_release(%struct.fb_info* %194)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %190, %187, %58, %50, %29
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.mx3fb_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fb_videomode*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.fb_info* @mx3fb_init_fbinfo(%struct.device*, i32*) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_4__*, %struct.fb_info*, i8*, %struct.fb_videomode*, i32, i32*, i32) #1

declare dso_local i32 @fb_videomode_to_modelist(%struct.fb_videomode*, i32, i32*) #1

declare dso_local i32 @mx3fb_write_reg(%struct.mx3fb_data*, i32, i32) #1

declare dso_local i32 @sdc_set_brightness(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @sdc_set_global_alpha(%struct.mx3fb_data*, i32, i32) #1

declare dso_local i32 @sdc_set_color_key(%struct.mx3fb_data*, i64, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @__set_par(%struct.fb_info*, i32) #1

declare dso_local i32 @__blank(i32, %struct.fb_info*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
