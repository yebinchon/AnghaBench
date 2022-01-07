; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fb_info = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32, i32*, %struct.uvesafb_par* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.uvesafb_par = type { %struct.vbe_mode_ib*, %struct.TYPE_5__ }
%struct.vbe_mode_ib = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vbe_init() failed with %d\0A\00", align 1
@uvesafb_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"uvesafb\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"request region 0x3c0-0x3e0 failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot reserve video memory at 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"abort, cannot ioremap 0x%x bytes of video memory at 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to register framebuffer device\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"framebuffer at 0x%lx, mapped to 0x%p, using %dk, total %dk\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@uvesafb_dev_attgrp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to register attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uvesafb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vbe_mode_ib*, align 8
  %6 = alloca %struct.uvesafb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.vbe_mode_ib* null, %struct.vbe_mode_ib** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.fb_info* @framebuffer_alloc(i32 1040, %struct.TYPE_8__* %10)
  store %struct.fb_info* %11, %struct.fb_info** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = icmp ne %struct.fb_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %192

17:                                               ; preds = %1
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 6
  %20 = load %struct.uvesafb_par*, %struct.uvesafb_par** %19, align 8
  store %struct.uvesafb_par* %20, %struct.uvesafb_par** %6, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = call i32 @uvesafb_vbe_init(%struct.fb_info* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %184

28:                                               ; preds = %17
  %29 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 5
  store i32* @uvesafb_ops, i32** %30, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = call i32 @uvesafb_vbe_init_mode(%struct.fb_info* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %184

38:                                               ; preds = %28
  %39 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %40 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %39, i32 0, i32 0
  %41 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %41, i64 %43
  store %struct.vbe_mode_ib* %44, %struct.vbe_mode_ib** %5, align 8
  br label %45

45:                                               ; preds = %38
  %46 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = call i64 @fb_alloc_cmap(i32* %47, i32 256, i32 0)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %184

53:                                               ; preds = %45
  %54 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %55 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %5, align 8
  %56 = call i32 @uvesafb_init_info(%struct.fb_info* %54, %struct.vbe_mode_ib* %55)
  %57 = call i32 @request_region(i32 960, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %166

63:                                               ; preds = %53
  %64 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @request_mem_region(i32 %67, i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %63
  %75 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %164

82:                                               ; preds = %63
  %83 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %84 = call i32 @uvesafb_init_mtrr(%struct.fb_info* %83)
  %85 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %86 = call i32 @uvesafb_ioremap(%struct.fb_info* %85)
  %87 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %82
  %92 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %7, align 4
  br label %154

103:                                              ; preds = %82
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %106 = call i32 @platform_set_drvdata(%struct.platform_device* %104, %struct.fb_info* %105)
  %107 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %108 = call i64 @register_framebuffer(%struct.fb_info* %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %149

114:                                              ; preds = %103
  %115 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 1024
  %127 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %128 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %130, 64
  %132 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %118, i32 %121, i32 %126, i32 %131)
  %133 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %134 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @fb_info(%struct.fb_info* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = call i32 @sysfs_create_group(i32* %141, i32* @uvesafb_dev_attgrp)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %114
  %146 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %147 = call i32 @fb_warn(%struct.fb_info* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %114
  store i32 0, i32* %2, align 4
  br label %192

149:                                              ; preds = %110
  %150 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @iounmap(i32 %152)
  br label %154

154:                                              ; preds = %149, %91
  %155 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @release_mem_region(i32 %158, i32 %162)
  br label %164

164:                                              ; preds = %154, %74
  %165 = call i32 @release_region(i32 960, i32 32)
  br label %166

166:                                              ; preds = %164, %59
  %167 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 2
  %169 = call i32 @list_empty(i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 2
  %174 = call i32 @fb_destroy_modelist(i32* %173)
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @fb_destroy_modedb(i32 %179)
  %181 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %182 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %181, i32 0, i32 0
  %183 = call i32 @fb_dealloc_cmap(i32* %182)
  br label %184

184:                                              ; preds = %175, %50, %35, %25
  %185 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %186 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %185, i32 0, i32 0
  %187 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %186, align 8
  %188 = call i32 @kfree(%struct.vbe_mode_ib* %187)
  %189 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %190 = call i32 @framebuffer_release(%struct.fb_info* %189)
  %191 = load i32, i32* %7, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %184, %148, %14
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @uvesafb_vbe_init(%struct.fb_info*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @uvesafb_vbe_init_mode(%struct.fb_info*) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @uvesafb_init_info(%struct.fb_info*, %struct.vbe_mode_ib*) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @uvesafb_init_mtrr(%struct.fb_info*) #1

declare dso_local i32 @uvesafb_ioremap(%struct.fb_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @fb_warn(%struct.fb_info*, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @fb_destroy_modelist(i32*) #1

declare dso_local i32 @fb_destroy_modedb(i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @kfree(%struct.vbe_mode_ib*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
