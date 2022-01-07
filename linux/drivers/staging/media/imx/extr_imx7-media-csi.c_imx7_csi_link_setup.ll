; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.imx7_csi = type { i32, %struct.v4l2_subdev*, %struct.media_entity*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"link setup %s -> %s\0A\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @imx7_csi_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.imx7_csi*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store %struct.media_pad* %1, %struct.media_pad** %6, align 8
  store %struct.media_pad* %2, %struct.media_pad** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %14 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %9, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %16 = call %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.imx7_csi* %16, %struct.imx7_csi** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %18 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %20, i32 0, i32 1
  %22 = load %struct.media_entity*, %struct.media_entity** %21, align 8
  %23 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %26 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %25, i32 0, i32 1
  %27 = load %struct.media_entity*, %struct.media_entity** %26, align 8
  %28 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %32 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %35 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %4
  %41 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %42 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i32 0, i32 1
  %43 = load %struct.media_entity*, %struct.media_entity** %42, align 8
  %44 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %120

49:                                               ; preds = %40
  %50 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %51 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %50, i32 0, i32 1
  %52 = load %struct.media_entity*, %struct.media_entity** %51, align 8
  %53 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %52)
  store %struct.v4l2_subdev* %53, %struct.v4l2_subdev** %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %60 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %59, i32 0, i32 1
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %60, align 8
  %62 = icmp ne %struct.v4l2_subdev* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %120

66:                                               ; preds = %58
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %68 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %69 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %68, i32 0, i32 1
  store %struct.v4l2_subdev* %67, %struct.v4l2_subdev** %69, align 8
  br label %73

70:                                               ; preds = %49
  %71 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %72 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %71, i32 0, i32 1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %72, align 8
  br label %73

73:                                               ; preds = %70, %66
  br label %103

74:                                               ; preds = %4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %81 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %80, i32 0, i32 2
  %82 = load %struct.media_entity*, %struct.media_entity** %81, align 8
  %83 = icmp ne %struct.media_entity* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %120

87:                                               ; preds = %79
  %88 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %89 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %88, i32 0, i32 1
  %90 = load %struct.media_entity*, %struct.media_entity** %89, align 8
  %91 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %92 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %91, i32 0, i32 2
  store %struct.media_entity* %90, %struct.media_entity** %92, align 8
  br label %102

93:                                               ; preds = %74
  %94 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %95 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %94, i32 0, i32 3
  %96 = call i32 @v4l2_ctrl_handler_free(i32* %95)
  %97 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %98 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %97, i32 0, i32 3
  %99 = call i32 @v4l2_ctrl_handler_init(i32* %98, i32 0)
  %100 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %101 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %100, i32 0, i32 2
  store %struct.media_entity* null, %struct.media_entity** %101, align 8
  br label %102

102:                                              ; preds = %93, %87
  br label %103

103:                                              ; preds = %102, %73
  %104 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %105 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %104, i32 0, i32 2
  %106 = load %struct.media_entity*, %struct.media_entity** %105, align 8
  %107 = icmp ne %struct.media_entity* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %110 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %109, i32 0, i32 1
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %110, align 8
  %112 = icmp ne %struct.v4l2_subdev* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %103
  %114 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %115 = call i32 @imx7_csi_init(%struct.imx7_csi* %114)
  store i32 %115, i32* %12, align 4
  br label %119

116:                                              ; preds = %108
  %117 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %118 = call i32 @imx7_csi_deinit(%struct.imx7_csi* %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %84, %63, %46
  %121 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %122 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %12, align 4
  ret i32 %124
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @imx7_csi_init(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_deinit(%struct.imx7_csi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
