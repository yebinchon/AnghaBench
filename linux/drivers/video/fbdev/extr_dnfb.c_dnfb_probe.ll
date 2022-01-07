; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_dnfb.c_dnfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_dnfb.c_dnfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, %struct.TYPE_6__, i32*, %struct.TYPE_5__, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@dn_fb_ops = common dso_local global i32 0, align 4
@dnfb_fix = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dnfb_var = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@AP_CONTROL_3A = common dso_local global i32 0, align 4
@RESET_CREG = common dso_local global i32 0, align 4
@AP_WRITE_ENABLE = common dso_local global i32 0, align 4
@AP_CONTROL_0 = common dso_local global i32 0, align 4
@NORMAL_MODE = common dso_local global i32 0, align 4
@AP_CONTROL_1 = common dso_local global i32 0, align 4
@AD_BLT = common dso_local global i32 0, align 4
@DST_EQ_SRC = common dso_local global i32 0, align 4
@NORM_CREG1 = common dso_local global i32 0, align 4
@AP_CONTROL_2 = common dso_local global i32 0, align 4
@S_DATA_PLN = common dso_local global i32 0, align 4
@AP_ROP_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"apollo frame buffer alive and kicking !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dnfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnfb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.fb_info* @framebuffer_alloc(i32 0, i32* %7)
  store %struct.fb_info* %8, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = icmp ne %struct.fb_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %97

14:                                               ; preds = %1
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 4
  store i32* @dn_fb_ops, i32** %16, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 1
  %19 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_6__* @dnfb_fix to i8*), i64 8, i1 false)
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 3
  %22 = bitcast %struct.TYPE_5__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_5__* @dnfb_var to i8*), i64 48, i1 false)
  %23 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_4__* %36 to i8*
  %41 = bitcast %struct.TYPE_4__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = bitcast %struct.TYPE_4__* %33 to i8*
  %43 = bitcast %struct.TYPE_4__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = call i32 @fb_alloc_cmap(i32* %52, i32 2, i32 0)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %14
  br label %93

57:                                               ; preds = %14
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = call i32 @register_framebuffer(%struct.fb_info* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = call i32 @fb_dealloc_cmap(i32* %64)
  br label %93

66:                                               ; preds = %57
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.fb_info* %68)
  %70 = load i32, i32* @AP_CONTROL_3A, align 4
  %71 = load i32, i32* @RESET_CREG, align 4
  %72 = call i32 @out_8(i32 %70, i32 %71)
  %73 = load i32, i32* @AP_WRITE_ENABLE, align 4
  %74 = call i32 @out_be16(i32 %73, i32 0)
  %75 = load i32, i32* @AP_CONTROL_0, align 4
  %76 = load i32, i32* @NORMAL_MODE, align 4
  %77 = call i32 @out_8(i32 %75, i32 %76)
  %78 = load i32, i32* @AP_CONTROL_1, align 4
  %79 = load i32, i32* @AD_BLT, align 4
  %80 = load i32, i32* @DST_EQ_SRC, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NORM_CREG1, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @out_8(i32 %78, i32 %83)
  %85 = load i32, i32* @AP_CONTROL_2, align 4
  %86 = load i32, i32* @S_DATA_PLN, align 4
  %87 = call i32 @out_8(i32 %85, i32 %86)
  %88 = load i32, i32* @AP_ROP_1, align 4
  %89 = call i32 @SWAP(i32 3)
  %90 = call i32 @out_be16(i32 %88, i32 %89)
  %91 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %97

93:                                               ; preds = %62, %56
  %94 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %95 = call i32 @framebuffer_release(%struct.fb_info* %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %66, %11
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

declare dso_local i32 @out_8(i32, i32) #1

declare dso_local i32 @out_be16(i32, i32) #1

declare dso_local i32 @SWAP(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
