; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_unregister_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_unregister_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_device*)* @iss_unregister_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iss_unregister_entities(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  %3 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %4 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %3, i32 0, i32 6
  %5 = call i32 @omap4iss_resizer_unregister_entities(i32* %4)
  %6 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %7 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %6, i32 0, i32 5
  %8 = call i32 @omap4iss_ipipe_unregister_entities(i32* %7)
  %9 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %10 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %9, i32 0, i32 4
  %11 = call i32 @omap4iss_ipipeif_unregister_entities(i32* %10)
  %12 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %13 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %12, i32 0, i32 3
  %14 = call i32 @omap4iss_csi2_unregister_entities(i32* %13)
  %15 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %16 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %15, i32 0, i32 2
  %17 = call i32 @omap4iss_csi2_unregister_entities(i32* %16)
  %18 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %19 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %18, i32 0, i32 1
  %20 = call i32 @v4l2_device_unregister(i32* %19)
  %21 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %22 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %21, i32 0, i32 0
  %23 = call i32 @media_device_unregister(i32* %22)
  ret void
}

declare dso_local i32 @omap4iss_resizer_unregister_entities(i32*) #1

declare dso_local i32 @omap4iss_ipipe_unregister_entities(i32*) #1

declare dso_local i32 @omap4iss_ipipeif_unregister_entities(i32*) #1

declare dso_local i32 @omap4iss_csi2_unregister_entities(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @media_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
