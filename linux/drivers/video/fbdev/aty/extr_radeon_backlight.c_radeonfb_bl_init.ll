; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_backlight.c_radeonfb_bl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_backlight.c_radeonfb_bl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.backlight_device*, i32 }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.backlight_properties = type { i64, i32 }
%struct.radeon_bl_privdata = type { i32, %struct.radeonfb_info* }

@MT_LCD = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"radeonfb: Memory allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"radeonbl%d\00", align 1
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@FB_BACKLIGHT_LEVELS = common dso_local global i64 0, align 8
@radeon_bl_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"radeonfb: Backlight registration failed\0A\00", align 1
@CHIP_FAMILY_RV200 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV250 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV280 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RV350 = common dso_local global i64 0, align 8
@FB_BACKLIGHT_MAX = common dso_local global i32 0, align 4
@MAX_RADEON_LEVEL = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"radeonfb: Backlight initialized (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeonfb_bl_init(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca %struct.backlight_properties, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.radeon_bl_privdata*, align 8
  %6 = alloca [12 x i8], align 1
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %7 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %8 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MT_LCD, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %118

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.radeon_bl_privdata* @kmalloc(i32 16, i32 %14)
  store %struct.radeon_bl_privdata* %15, %struct.radeon_bl_privdata** %5, align 8
  %16 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %5, align 8
  %17 = icmp ne %struct.radeon_bl_privdata* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %115

20:                                               ; preds = %13
  %21 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %22 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %23 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snprintf(i8* %21, i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @memset(%struct.backlight_properties* %3, i32 0, i32 16)
  %29 = load i32, i32* @BACKLIGHT_RAW, align 4
  %30 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i64, i64* @FB_BACKLIGHT_LEVELS, align 8
  %32 = sub nsw i64 %31, 1
  %33 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %35 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %36 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %5, align 8
  %41 = call %struct.backlight_device* @backlight_device_register(i8* %34, i32 %39, %struct.radeon_bl_privdata* %40, i32* @radeon_bl_data, %struct.backlight_properties* %3)
  store %struct.backlight_device* %41, %struct.backlight_device** %4, align 8
  %42 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %43 = call i64 @IS_ERR(%struct.backlight_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %20
  %46 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %47 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct.backlight_device* null, %struct.backlight_device** %49, align 8
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %115

51:                                               ; preds = %20
  %52 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %53 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_bl_privdata, %struct.radeon_bl_privdata* %53, i32 0, i32 1
  store %struct.radeonfb_info* %52, %struct.radeonfb_info** %54, align 8
  %55 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %56 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHIP_FAMILY_RV200, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %51
  %61 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %62 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHIP_FAMILY_RV250, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %68 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CHIP_FAMILY_RV280, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %74 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHIP_FAMILY_RV350, align 8
  %77 = icmp ne i64 %75, %76
  br label %78

78:                                               ; preds = %72, %66, %60, %51
  %79 = phi i1 [ false, %66 ], [ false, %60 ], [ false, %51 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_bl_privdata, %struct.radeon_bl_privdata* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %84 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %85 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store %struct.backlight_device* %83, %struct.backlight_device** %87, align 8
  %88 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %89 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* @FB_BACKLIGHT_MAX, align 4
  %92 = mul nsw i32 63, %91
  %93 = load i32, i32* @MAX_RADEON_LEVEL, align 4
  %94 = sdiv i32 %92, %93
  %95 = load i32, i32* @FB_BACKLIGHT_MAX, align 4
  %96 = mul nsw i32 217, %95
  %97 = load i32, i32* @MAX_RADEON_LEVEL, align 4
  %98 = sdiv i32 %96, %97
  %99 = call i32 @fb_bl_default_curve(%struct.TYPE_4__* %90, i32 0, i32 %94, i32 %98)
  %100 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %101 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %105 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %108 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %109 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %112 = call i32 @backlight_update_status(%struct.backlight_device* %111)
  %113 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %114 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  br label %118

115:                                              ; preds = %45, %18
  %116 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %5, align 8
  %117 = call i32 @kfree(%struct.radeon_bl_privdata* %116)
  br label %118

118:                                              ; preds = %115, %78, %12
  ret void
}

declare dso_local %struct.radeon_bl_privdata* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32, %struct.radeon_bl_privdata*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @fb_bl_default_curve(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @kfree(%struct.radeon_bl_privdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
