; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { {}*, {}* }
%struct.vdic_priv = type { i64, %struct.TYPE_3__*, i32, i32, i64, %struct.v4l2_mbus_framefmt* }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@direct_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@indirect_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdic_priv*)* @vdic_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_start(%struct.vdic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdic_priv*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca i32, align 4
  store %struct.vdic_priv* %0, %struct.vdic_priv** %3, align 8
  %6 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %7 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %6, i32 0, i32 5
  %8 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %9 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %10 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i64 %11
  store %struct.v4l2_mbus_framefmt* %12, %struct.v4l2_mbus_framefmt** %4, align 8
  %13 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %14 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, %struct.TYPE_3__* @direct_ops, %struct.TYPE_3__* @indirect_ops
  %19 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %20 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %19, i32 0, i32 1
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %22 = call i32 @vdic_get_ipu_resources(%struct.vdic_priv* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %29 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ipu_vdi_setup(i32 %30, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %40 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ipu_vdi_set_field_order(i32 %41, i32 %42, i32 %45)
  %47 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %48 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %51 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ipu_vdi_set_motion(i32 %49, i32 %52)
  %54 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %55 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.vdic_priv*)**
  %59 = load i32 (%struct.vdic_priv*)*, i32 (%struct.vdic_priv*)** %58, align 8
  %60 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %61 = call i32 %59(%struct.vdic_priv* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %27
  br label %78

65:                                               ; preds = %27
  %66 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %67 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ipu_vdi_enable(i32 %68)
  %70 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %71 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = bitcast {}** %73 to i32 (%struct.vdic_priv*)**
  %75 = load i32 (%struct.vdic_priv*)*, i32 (%struct.vdic_priv*)** %74, align 8
  %76 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %77 = call i32 %75(%struct.vdic_priv* %76)
  store i32 0, i32* %2, align 4
  br label %82

78:                                               ; preds = %64
  %79 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %80 = call i32 @vdic_put_ipu_resources(%struct.vdic_priv* %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %65, %25
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @vdic_get_ipu_resources(%struct.vdic_priv*) #1

declare dso_local i32 @ipu_vdi_setup(i32, i32, i32, i32) #1

declare dso_local i32 @ipu_vdi_set_field_order(i32, i32, i32) #1

declare dso_local i32 @ipu_vdi_set_motion(i32, i32) #1

declare dso_local i32 @ipu_vdi_enable(i32) #1

declare dso_local i32 @vdic_put_ipu_resources(%struct.vdic_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
