; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.csi_state = type { i32, i32, %struct.v4l2_subdev*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"link setup %s -> %s\00", align 1
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @mipi_csis_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_pad*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.csi_state*, align 8
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
  %16 = call %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev* %15)
  store %struct.csi_state* %16, %struct.csi_state** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %18 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
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
  %30 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %32 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %31, i32 0, i32 1
  %33 = load %struct.media_entity*, %struct.media_entity** %32, align 8
  %34 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %33)
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %11, align 8
  %35 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %36 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %39 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %51 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %86

57:                                               ; preds = %49
  %58 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %59 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %63

60:                                               ; preds = %44
  %61 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %62 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %85

64:                                               ; preds = %4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %71 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %70, i32 0, i32 2
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %71, align 8
  %73 = icmp ne %struct.v4l2_subdev* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %86

77:                                               ; preds = %69
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %79 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %80 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %79, i32 0, i32 2
  store %struct.v4l2_subdev* %78, %struct.v4l2_subdev** %80, align 8
  br label %84

81:                                               ; preds = %64
  %82 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %83 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %82, i32 0, i32 2
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %83, align 8
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %74, %54
  %87 = load %struct.csi_state*, %struct.csi_state** %10, align 8
  %88 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %12, align 4
  ret i32 %90
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
