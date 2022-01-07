; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_omap4iss_ipipeif_register_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_omap4iss_ipipeif_register_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipeif_device = type { i32, i32 }
%struct.v4l2_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_ipipeif_register_entities(%struct.iss_ipipeif_device* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iss_ipipeif_device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca i32, align 4
  store %struct.iss_ipipeif_device* %0, %struct.iss_ipipeif_device** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %8 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %4, align 8
  %9 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %8, i32 0, i32 1
  %10 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %7, i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %4, align 8
  %16 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %15, i32 0, i32 0
  %17 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %18 = call i32 @omap4iss_video_register(i32* %16, %struct.v4l2_device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %27

23:                                               ; preds = %21, %13
  %24 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %4, align 8
  %25 = call i32 @omap4iss_ipipeif_unregister_entities(%struct.iss_ipipeif_device* %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, i32*) #1

declare dso_local i32 @omap4iss_video_register(i32*, %struct.v4l2_device*) #1

declare dso_local i32 @omap4iss_ipipeif_unregister_entities(%struct.iss_ipipeif_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
