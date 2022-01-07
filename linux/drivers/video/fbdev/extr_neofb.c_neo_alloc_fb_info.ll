; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neo_alloc_fb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neo_alloc_fb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, i32*, %struct.TYPE_2__, %struct.neofb_par* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.neofb_par = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@nopciburst = common dso_local global i32 0, align 4
@nostretch = common dso_local global i32 0, align 4
@libretto = common dso_local global i32 0, align 4
@internal = common dso_local global i32 0, align 4
@external = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MagicGraph 128\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"MagicGraph 128V\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MagicGraph 128ZV\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MagicGraph 128ZV+\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MagicGraph 128XD\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"MagicGraph 256AV\00", align 1
@FBINFO_HWACCEL_IMAGEBLIT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"MagicGraph 256AV+\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"MagicGraph 256ZX\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"MagicGraph 256XL+\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@neofb_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_info* (%struct.pci_dev*, %struct.pci_device_id*)* @neo_alloc_fb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_info* @neo_alloc_fb_info(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.neofb_par*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call %struct.fb_info* @framebuffer_alloc(i32 24, i32* %9)
  store %struct.fb_info* %10, %struct.fb_info** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %12 = icmp ne %struct.fb_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.fb_info* null, %struct.fb_info** %3, align 8
  br label %175

14:                                               ; preds = %2
  %15 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 4
  %17 = load %struct.neofb_par*, %struct.neofb_par** %16, align 8
  store %struct.neofb_par* %17, %struct.neofb_par** %7, align 8
  %18 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @nopciburst, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.neofb_par*, %struct.neofb_par** %7, align 8
  %29 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @nostretch, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.neofb_par*, %struct.neofb_par** %7, align 8
  %35 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @libretto, align 4
  %37 = load %struct.neofb_par*, %struct.neofb_par** %7, align 8
  %38 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @internal, align 4
  %40 = load %struct.neofb_par*, %struct.neofb_par** %7, align 8
  %41 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @external, align 4
  %43 = load %struct.neofb_par*, %struct.neofb_par** %7, align 8
  %44 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @FBINFO_DEFAULT, align 4
  %46 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %144 [
    i32 136, label %54
    i32 135, label %60
    i32 134, label %66
    i32 133, label %72
    i32 132, label %78
    i32 131, label %84
    i32 130, label %99
    i32 129, label %114
    i32 128, label %129
  ]

54:                                               ; preds = %14
  %55 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snprintf(i32 %58, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %144

60:                                               ; preds = %14
  %61 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snprintf(i32 %64, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %144

66:                                               ; preds = %14
  %67 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @snprintf(i32 %70, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %144

72:                                               ; preds = %14
  %73 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snprintf(i32 %76, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %144

78:                                               ; preds = %14
  %79 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @snprintf(i32 %82, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %144

84:                                               ; preds = %14
  %85 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @snprintf(i32 %88, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %91 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %144

99:                                               ; preds = %14
  %100 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snprintf(i32 %103, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %106 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %144

114:                                              ; preds = %14
  %115 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @snprintf(i32 %118, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %121 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %144

129:                                              ; preds = %14
  %130 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @snprintf(i32 %133, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %136 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %14, %129, %114, %99, %84, %78, %72, %66, %60, %54
  %145 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %146 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 5
  store i32 %145, i32* %148, align 8
  %149 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  store i64 0, i64* %151, align 8
  %152 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %153 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  store i32 4, i32* %157, align 4
  %158 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %159 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %162 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %165 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 2
  store i32* @neofb_ops, i32** %168, align 8
  %169 = load %struct.neofb_par*, %struct.neofb_par** %7, align 8
  %170 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  store %struct.fb_info* %174, %struct.fb_info** %3, align 8
  br label %175

175:                                              ; preds = %144, %13
  %176 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  ret %struct.fb_info* %176
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
