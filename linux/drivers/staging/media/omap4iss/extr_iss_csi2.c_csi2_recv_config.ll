; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_recv_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_recv_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32 }
%struct.iss_csi2_ctrl_cfg = type { i32, i64, i64, i64, i64 }

@CSI2_CTRL_FRAME = common dso_local global i32 0, align 4
@CSI2_CTRL_VP_CLK_EN = common dso_local global i32 0, align 4
@CSI2_CTRL_VP_ONLY_EN = common dso_local global i32 0, align 4
@CSI2_CTRL_VP_OUT_CTRL_MASK = common dso_local global i32 0, align 4
@CSI2_CTRL_VP_OUT_CTRL_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTRL_ECC_EN = common dso_local global i32 0, align 4
@CSI2_CTRL_MFLAG_LEVH_MASK = common dso_local global i32 0, align 4
@CSI2_CTRL_MFLAG_LEVL_MASK = common dso_local global i32 0, align 4
@CSI2_CTRL_MFLAG_LEVH_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTRL_MFLAG_LEVL_SHIFT = common dso_local global i32 0, align 4
@CSI2_CTRL_BURST_SIZE_EXPAND = common dso_local global i32 0, align 4
@CSI2_CTRL_NON_POSTED_WRITE = common dso_local global i32 0, align 4
@CSI2_CTRL_ENDIANNESS = common dso_local global i32 0, align 4
@CSI2_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, %struct.iss_csi2_ctrl_cfg*)* @csi2_recv_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_recv_config(%struct.iss_csi2_device* %0, %struct.iss_csi2_ctrl_cfg* %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca %struct.iss_csi2_ctrl_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store %struct.iss_csi2_ctrl_cfg* %1, %struct.iss_csi2_ctrl_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iss_csi2_ctrl_cfg*, %struct.iss_csi2_ctrl_cfg** %4, align 8
  %7 = getelementptr inbounds %struct.iss_csi2_ctrl_cfg, %struct.iss_csi2_ctrl_cfg* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @CSI2_CTRL_FRAME, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @CSI2_CTRL_FRAME, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = load %struct.iss_csi2_ctrl_cfg*, %struct.iss_csi2_ctrl_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.iss_csi2_ctrl_cfg, %struct.iss_csi2_ctrl_cfg* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @CSI2_CTRL_VP_CLK_EN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @CSI2_CTRL_VP_CLK_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.iss_csi2_ctrl_cfg*, %struct.iss_csi2_ctrl_cfg** %4, align 8
  %35 = getelementptr inbounds %struct.iss_csi2_ctrl_cfg, %struct.iss_csi2_ctrl_cfg* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @CSI2_CTRL_VP_ONLY_EN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load i32, i32* @CSI2_CTRL_VP_ONLY_EN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* @CSI2_CTRL_VP_OUT_CTRL_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.iss_csi2_ctrl_cfg*, %struct.iss_csi2_ctrl_cfg** %4, align 8
  %53 = getelementptr inbounds %struct.iss_csi2_ctrl_cfg, %struct.iss_csi2_ctrl_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CSI2_CTRL_VP_OUT_CTRL_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.iss_csi2_ctrl_cfg*, %struct.iss_csi2_ctrl_cfg** %4, align 8
  %60 = getelementptr inbounds %struct.iss_csi2_ctrl_cfg, %struct.iss_csi2_ctrl_cfg* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load i32, i32* @CSI2_CTRL_ECC_EN, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %47
  %68 = load i32, i32* @CSI2_CTRL_ECC_EN, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* @CSI2_CTRL_MFLAG_LEVH_MASK, align 4
  %74 = load i32, i32* @CSI2_CTRL_MFLAG_LEVL_MASK, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @CSI2_CTRL_MFLAG_LEVH_SHIFT, align 4
  %80 = shl i32 2, %79
  %81 = load i32, i32* @CSI2_CTRL_MFLAG_LEVL_SHIFT, align 4
  %82 = shl i32 4, %81
  %83 = or i32 %80, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @CSI2_CTRL_BURST_SIZE_EXPAND, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @CSI2_CTRL_NON_POSTED_WRITE, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @CSI2_CTRL_ENDIANNESS, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %96 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %99 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CSI2_CTRL, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @iss_reg_write(i32 %97, i32 %100, i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
