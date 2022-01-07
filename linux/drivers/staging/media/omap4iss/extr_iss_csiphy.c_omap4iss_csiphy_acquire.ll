; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_omap4iss_csiphy_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_omap4iss_csiphy_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csiphy = type { i32, i32, i32 }

@CSI2_COMPLEXIO_CFG_PWD_CMD_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_csiphy_acquire(%struct.iss_csiphy* %0) #0 {
  %2 = alloca %struct.iss_csiphy*, align 8
  %3 = alloca i32, align 4
  store %struct.iss_csiphy* %0, %struct.iss_csiphy** %2, align 8
  %4 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %5 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %8 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @omap4iss_csi2_reset(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %16 = call i32 @csiphy_dphy_config(%struct.iss_csiphy* %15)
  %17 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %18 = call i32 @csiphy_lanes_config(%struct.iss_csiphy* %17)
  %19 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %20 = load i32, i32* @CSI2_COMPLEXIO_CFG_PWD_CMD_ON, align 4
  %21 = call i32 @csiphy_set_power(%struct.iss_csiphy* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %27 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %24, %13
  %29 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %30 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omap4iss_csi2_reset(i32) #1

declare dso_local i32 @csiphy_dphy_config(%struct.iss_csiphy*) #1

declare dso_local i32 @csiphy_lanes_config(%struct.iss_csiphy*) #1

declare dso_local i32 @csiphy_set_power(%struct.iss_csiphy*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
