; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_omap4iss_csiphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_omap4iss_csiphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32, i32, %struct.iss_csiphy, %struct.iss_csiphy }
%struct.iss_csiphy = type { i32, i32, i32, i64, i32, i32*, %struct.iss_device* }

@ISS_CSIPHY1_NUM_DATA_LANES = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_CSI2_A_REGS1 = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_CAMERARX_CORE1 = common dso_local global i32 0, align 4
@ISS_CSIPHY2_NUM_DATA_LANES = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_CSI2_B_REGS1 = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_CAMERARX_CORE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_csiphy_init(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  %3 = alloca %struct.iss_csiphy*, align 8
  %4 = alloca %struct.iss_csiphy*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  %5 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %6 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %5, i32 0, i32 3
  store %struct.iss_csiphy* %6, %struct.iss_csiphy** %3, align 8
  %7 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %8 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %7, i32 0, i32 2
  store %struct.iss_csiphy* %8, %struct.iss_csiphy** %4, align 8
  %9 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %10 = load %struct.iss_csiphy*, %struct.iss_csiphy** %3, align 8
  %11 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %10, i32 0, i32 6
  store %struct.iss_device* %9, %struct.iss_device** %11, align 8
  %12 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %13 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %12, i32 0, i32 1
  %14 = load %struct.iss_csiphy*, %struct.iss_csiphy** %3, align 8
  %15 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %14, i32 0, i32 5
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* @ISS_CSIPHY1_NUM_DATA_LANES, align 4
  %17 = load %struct.iss_csiphy*, %struct.iss_csiphy** %3, align 8
  %18 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.iss_csiphy*, %struct.iss_csiphy** %3, align 8
  %20 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @OMAP4_ISS_MEM_CSI2_A_REGS1, align 4
  %22 = load %struct.iss_csiphy*, %struct.iss_csiphy** %3, align 8
  %23 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @OMAP4_ISS_MEM_CAMERARX_CORE1, align 4
  %25 = load %struct.iss_csiphy*, %struct.iss_csiphy** %3, align 8
  %26 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iss_csiphy*, %struct.iss_csiphy** %3, align 8
  %28 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %27, i32 0, i32 0
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %31 = load %struct.iss_csiphy*, %struct.iss_csiphy** %4, align 8
  %32 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %31, i32 0, i32 6
  store %struct.iss_device* %30, %struct.iss_device** %32, align 8
  %33 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %34 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %33, i32 0, i32 0
  %35 = load %struct.iss_csiphy*, %struct.iss_csiphy** %4, align 8
  %36 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* @ISS_CSIPHY2_NUM_DATA_LANES, align 4
  %38 = load %struct.iss_csiphy*, %struct.iss_csiphy** %4, align 8
  %39 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.iss_csiphy*, %struct.iss_csiphy** %4, align 8
  %41 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @OMAP4_ISS_MEM_CSI2_B_REGS1, align 4
  %43 = load %struct.iss_csiphy*, %struct.iss_csiphy** %4, align 8
  %44 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @OMAP4_ISS_MEM_CAMERARX_CORE2, align 4
  %46 = load %struct.iss_csiphy*, %struct.iss_csiphy** %4, align 8
  %47 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.iss_csiphy*, %struct.iss_csiphy** %4, align 8
  %49 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %48, i32 0, i32 0
  %50 = call i32 @mutex_init(i32* %49)
  ret i32 0
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
