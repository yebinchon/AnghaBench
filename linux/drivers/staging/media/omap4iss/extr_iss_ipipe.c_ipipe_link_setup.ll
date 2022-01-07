; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, i32* }
%struct.v4l2_subdev = type { i32 }
%struct.iss_ipipe_device = type { i32, i32 }
%struct.iss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@IPIPE_INPUT_NONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IPIPE_INPUT_IPIPEIF = common dso_local global i32 0, align 4
@IPIPE_OUTPUT_VP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @ipipe_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipipe_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.iss_ipipe_device*, align 8
  %12 = alloca %struct.iss_device*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %14 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %10, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %16 = call %struct.iss_ipipe_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.iss_ipipe_device* %16, %struct.iss_ipipe_device** %11, align 8
  %17 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %11, align 8
  %18 = call %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device* %17)
  store %struct.iss_device* %18, %struct.iss_device** %12, align 8
  %19 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %20 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @is_media_entity_v4l2_subdev(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %97

27:                                               ; preds = %4
  %28 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %93 [
    i32 129, label %31
    i32 128, label %63
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @IPIPE_INPUT_NONE, align 4
  %38 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %11, align 8
  %39 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %96

40:                                               ; preds = %31
  %41 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %11, align 8
  %42 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IPIPE_INPUT_NONE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %97

49:                                               ; preds = %40
  %50 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %51 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.iss_device*, %struct.iss_device** %12, align 8
  %54 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = icmp eq i32* %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @IPIPE_INPUT_IPIPEIF, align 4
  %60 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %11, align 8
  %61 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %49
  br label %96

63:                                               ; preds = %27
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %11, align 8
  %70 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IPIPE_OUTPUT_VP, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %97

79:                                               ; preds = %68
  %80 = load i32, i32* @IPIPE_OUTPUT_VP, align 4
  %81 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %11, align 8
  %82 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %92

85:                                               ; preds = %63
  %86 = load i32, i32* @IPIPE_OUTPUT_VP, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %11, align 8
  %89 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %79
  br label %96

93:                                               ; preds = %27
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %92, %62, %36
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %93, %76, %46, %24
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.iss_ipipe_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
