; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.prp_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PRP_NUM_PADS = common dso_local global i32 0, align 4
@PRP_SINK_PAD = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CS_SEL_YUV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @prp_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.prp_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev* %8)
  store %struct.prp_priv* %9, %struct.prp_priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PRP_NUM_PADS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PRP_SINK_PAD, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %25 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %36 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %39 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 30, i32* %40, align 4
  %41 = load i32, i32* @CS_SEL_YUV, align 4
  %42 = call i32 @imx_media_enum_ipu_format(i32* %7, i32 0, i32 %41)
  %43 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %44 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %47 = call i32 @imx_media_init_mbus_fmt(i32* %44, i32 640, i32 480, i32 %45, i32 %46, i32* null)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %60

52:                                               ; preds = %34
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %53, i32 0, i32 0
  %55 = load i32, i32* @PRP_NUM_PADS, align 4
  %56 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %57 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @media_entity_pads_init(i32* %54, i32 %55, %struct.TYPE_4__* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %50
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev*) #1

declare dso_local i32 @imx_media_enum_ipu_format(i32*, i32, i32) #1

declare dso_local i32 @imx_media_init_mbus_fmt(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
