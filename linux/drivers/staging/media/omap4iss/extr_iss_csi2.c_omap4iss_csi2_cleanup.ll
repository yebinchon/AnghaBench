; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { %struct.iss_csi2_device, %struct.iss_csi2_device }
%struct.iss_csi2_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap4iss_csi2_cleanup(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca %struct.iss_csi2_device*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  %5 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %6 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %5, i32 0, i32 1
  store %struct.iss_csi2_device* %6, %struct.iss_csi2_device** %3, align 8
  %7 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %8 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %7, i32 0, i32 0
  store %struct.iss_csi2_device* %8, %struct.iss_csi2_device** %4, align 8
  %9 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %10 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %9, i32 0, i32 1
  %11 = call i32 @omap4iss_video_cleanup(i32* %10)
  %12 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %13 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @media_entity_cleanup(i32* %14)
  %16 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %17 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %16, i32 0, i32 1
  %18 = call i32 @omap4iss_video_cleanup(i32* %17)
  %19 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %20 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @media_entity_cleanup(i32* %21)
  ret void
}

declare dso_local i32 @omap4iss_video_cleanup(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
