; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_timing_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_timing_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32 }
%struct.iss_csi2_timing_cfg = type { i32, i64, i64, i64 }

@CSI2_TIMING = common dso_local global i32 0, align 4
@CSI2_TIMING_FORCE_RX_MODE_IO1 = common dso_local global i32 0, align 4
@CSI2_TIMING_STOP_STATE_X16_IO1 = common dso_local global i32 0, align 4
@CSI2_TIMING_STOP_STATE_X4_IO1 = common dso_local global i32 0, align 4
@CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK = common dso_local global i32 0, align 4
@CSI2_TIMING_STOP_STATE_COUNTER_IO1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, %struct.iss_csi2_timing_cfg*)* @csi2_timing_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_timing_config(%struct.iss_csi2_device* %0, %struct.iss_csi2_timing_cfg* %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca %struct.iss_csi2_timing_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store %struct.iss_csi2_timing_cfg* %1, %struct.iss_csi2_timing_cfg** %4, align 8
  %6 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %7 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %10 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CSI2_TIMING, align 4
  %13 = call i32 @iss_reg_read(i32 %8, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @CSI2_TIMING_FORCE_RX_MODE_IO1, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @CSI2_TIMING_FORCE_RX_MODE_IO1, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @CSI2_TIMING_STOP_STATE_X16_IO1, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @CSI2_TIMING_STOP_STATE_X16_IO1, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %4, align 8
  %43 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @CSI2_TIMING_STOP_STATE_X4_IO1, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @CSI2_TIMING_STOP_STATE_X4_IO1, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* @CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.iss_csi2_timing_cfg*, %struct.iss_csi2_timing_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.iss_csi2_timing_cfg, %struct.iss_csi2_timing_cfg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CSI2_TIMING_STOP_STATE_COUNTER_IO1_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %68 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %71 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CSI2_TIMING, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @iss_reg_write(i32 %69, i32 %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @iss_reg_read(i32, i32, i32) #1

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
