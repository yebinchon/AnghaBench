; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.iss_csi2_device = type { i32, %struct.iss_csi2_ctrl_cfg }
%struct.iss_csi2_ctrl_cfg = type { i32, i32 }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@CSI2_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CSI2_OUTPUT_IPIPEIF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @csi2_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.iss_csi2_device*, align 8
  %12 = alloca %struct.iss_csi2_ctrl_cfg*, align 8
  %13 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %15 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %14)
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %10, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %17 = call %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.iss_csi2_device* %17, %struct.iss_csi2_device** %11, align 8
  %18 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %19 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %18, i32 0, i32 1
  store %struct.iss_csi2_ctrl_cfg* %19, %struct.iss_csi2_ctrl_cfg** %12, align 8
  %20 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %21 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %24 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @is_media_entity_v4l2_subdev(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, 131072
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %4
  %32 = load i32, i32* %13, align 4
  switch i32 %32, label %93 [
    i32 128, label %33
    i32 131200, label %63
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %40 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %118

49:                                               ; preds = %38
  %50 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %51 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %52 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %62

55:                                               ; preds = %33
  %56 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %59 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %49
  br label %96

63:                                               ; preds = %31
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %70 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CSI2_OUTPUT_IPIPEIF, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %118

79:                                               ; preds = %68
  %80 = load i32, i32* @CSI2_OUTPUT_IPIPEIF, align 4
  %81 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %82 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %92

85:                                               ; preds = %63
  %86 = load i32, i32* @CSI2_OUTPUT_IPIPEIF, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %89 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %79
  br label %96

93:                                               ; preds = %31
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %118

96:                                               ; preds = %92, %62
  %97 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %98 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 0, i32 1
  %105 = load %struct.iss_csi2_ctrl_cfg*, %struct.iss_csi2_ctrl_cfg** %12, align 8
  %106 = getelementptr inbounds %struct.iss_csi2_ctrl_cfg, %struct.iss_csi2_ctrl_cfg* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %11, align 8
  %108 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CSI2_OUTPUT_IPIPEIF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.iss_csi2_ctrl_cfg*, %struct.iss_csi2_ctrl_cfg** %12, align 8
  %117 = getelementptr inbounds %struct.iss_csi2_ctrl_cfg, %struct.iss_csi2_ctrl_cfg* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %96, %93, %76, %46
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_media_entity_v4l2_subdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
