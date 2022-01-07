; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_imx_media_fim_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_imx_media_fim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_fim = type { i32, %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.imx_media_fim* @imx_media_fim_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.imx_media_fim*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.imx_media_fim*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.imx_media_fim* @devm_kzalloc(i32 %8, i32 16, i32 %9)
  store %struct.imx_media_fim* %10, %struct.imx_media_fim** %4, align 8
  %11 = load %struct.imx_media_fim*, %struct.imx_media_fim** %4, align 8
  %12 = icmp ne %struct.imx_media_fim* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.imx_media_fim* @ERR_PTR(i32 %15)
  store %struct.imx_media_fim* %16, %struct.imx_media_fim** %2, align 8
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = load %struct.imx_media_fim*, %struct.imx_media_fim** %4, align 8
  %20 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %19, i32 0, i32 1
  store %struct.v4l2_subdev* %18, %struct.v4l2_subdev** %20, align 8
  %21 = load %struct.imx_media_fim*, %struct.imx_media_fim** %4, align 8
  %22 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.imx_media_fim*, %struct.imx_media_fim** %4, align 8
  %25 = call i32 @init_fim_controls(%struct.imx_media_fim* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.imx_media_fim* @ERR_PTR(i32 %29)
  store %struct.imx_media_fim* %30, %struct.imx_media_fim** %2, align 8
  br label %33

31:                                               ; preds = %17
  %32 = load %struct.imx_media_fim*, %struct.imx_media_fim** %4, align 8
  store %struct.imx_media_fim* %32, %struct.imx_media_fim** %2, align 8
  br label %33

33:                                               ; preds = %31, %28, %13
  %34 = load %struct.imx_media_fim*, %struct.imx_media_fim** %2, align 8
  ret %struct.imx_media_fim* %34
}

declare dso_local %struct.imx_media_fim* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.imx_media_fim* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_fim_controls(%struct.imx_media_fim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
