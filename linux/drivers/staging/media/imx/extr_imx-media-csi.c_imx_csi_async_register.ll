; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_imx_csi_async_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_imx_csi_async_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.v4l2_async_notifier* }
%struct.v4l2_async_notifier = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@imx_csi_parse_endpoint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_priv*)* @imx_csi_async_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_csi_async_register(%struct.csi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi_priv*, align 8
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.v4l2_async_notifier* @kzalloc(i32 4, i32 %8)
  store %struct.v4l2_async_notifier* %9, %struct.v4l2_async_notifier** %4, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %11 = icmp ne %struct.v4l2_async_notifier* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %17 = call i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier* %16)
  %18 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %19 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call %struct.fwnode_handle* @dev_fwnode(%struct.TYPE_5__* %20)
  store %struct.fwnode_handle* %21, %struct.fwnode_handle** %5, align 8
  %22 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %23 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %66

27:                                               ; preds = %15
  %28 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %29 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @imx_csi_parse_endpoint, align 4
  %36 = call i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(i32 %32, %struct.v4l2_async_notifier* %33, i32 4, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %63

40:                                               ; preds = %27
  %41 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %42 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %41, i32 0, i32 0
  %43 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %44 = call i32 @v4l2_async_subdev_notifier_register(%struct.TYPE_4__* %42, %struct.v4l2_async_notifier* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %63

48:                                               ; preds = %40
  %49 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %50 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %49, i32 0, i32 0
  %51 = call i32 @v4l2_async_register_subdev(%struct.TYPE_4__* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %60

55:                                               ; preds = %48
  %56 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %57 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %58 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.v4l2_async_notifier* %56, %struct.v4l2_async_notifier** %59, align 8
  store i32 0, i32* %2, align 4
  br label %70

60:                                               ; preds = %54
  %61 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %62 = call i32 @v4l2_async_notifier_unregister(%struct.v4l2_async_notifier* %61)
  br label %63

63:                                               ; preds = %60, %47, %39
  %64 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %65 = call i32 @v4l2_async_notifier_cleanup(%struct.v4l2_async_notifier* %64)
  br label %66

66:                                               ; preds = %63, %26
  %67 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %68 = call i32 @kfree(%struct.v4l2_async_notifier* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %55, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.v4l2_async_notifier* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier*) #1

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.TYPE_5__*) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

declare dso_local i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(i32, %struct.v4l2_async_notifier*, i32, i32, i32) #1

declare dso_local i32 @v4l2_async_subdev_notifier_register(%struct.TYPE_4__*, %struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @kfree(%struct.v4l2_async_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
