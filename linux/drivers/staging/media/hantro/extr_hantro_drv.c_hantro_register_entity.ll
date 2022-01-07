; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_register_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_register_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_device = type { i32 }
%struct.media_entity = type { i8*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.media_pad = type { i32 }
%struct.video_device = type { i32, i32 }

@MEDIA_ENTITY_TYPE_BASE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_IO_V4L = common dso_local global i32 0, align 4
@VIDEO_MAJOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_device*, %struct.media_entity*, i8*, %struct.media_pad*, i32, i32, %struct.video_device*)* @hantro_register_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_register_entity(%struct.media_device* %0, %struct.media_entity* %1, i8* %2, %struct.media_pad* %3, i32 %4, i32 %5, %struct.video_device* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.media_device*, align 8
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.media_pad*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.video_device*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.media_device* %0, %struct.media_device** %9, align 8
  store %struct.media_entity* %1, %struct.media_entity** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.media_pad* %3, %struct.media_pad** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.video_device* %6, %struct.video_device** %15, align 8
  %18 = load i32, i32* @MEDIA_ENTITY_TYPE_BASE, align 4
  %19 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %20 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @MEDIA_ENT_F_IO_V4L, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %7
  %25 = load i32, i32* @VIDEO_MAJOR, align 4
  %26 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %27 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.video_device*, %struct.video_device** %15, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %34 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %24, %7
  %38 = load %struct.media_device*, %struct.media_device** %9, align 8
  %39 = getelementptr inbounds %struct.media_device, %struct.media_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load %struct.video_device*, %struct.video_device** %15, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @devm_kasprintf(i32 %40, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %45)
  store i8* %46, i8** %16, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %76

52:                                               ; preds = %37
  %53 = load i8*, i8** %16, align 8
  %54 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %55 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %58 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %62 = call i32 @media_entity_pads_init(%struct.media_entity* %59, i32 %60, %struct.media_pad* %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %8, align 4
  br label %76

67:                                               ; preds = %52
  %68 = load %struct.media_device*, %struct.media_device** %9, align 8
  %69 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %70 = call i32 @media_device_register_entity(%struct.media_device* %68, %struct.media_entity* %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %8, align 4
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %73, %65, %49
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.media_pad*) #1

declare dso_local i32 @media_device_register_entity(%struct.media_device*, %struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
