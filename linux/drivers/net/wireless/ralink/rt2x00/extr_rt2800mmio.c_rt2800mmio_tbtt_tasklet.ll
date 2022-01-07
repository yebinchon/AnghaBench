; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_tbtt_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_tbtt_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i64, %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32 }

@BCN_TBTT_OFFSET = common dso_local global i32 0, align 4
@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_BEACON_INTERVAL = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@INT_MASK_CSR_TBTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800mmio_tbtt_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2800_drv_data*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %7, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 3
  %10 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  store %struct.rt2800_drv_data* %10, %struct.rt2800_drv_data** %4, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = call i32 @rt2x00lib_beacondone(%struct.rt2x00_dev* %11)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %1
  %18 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %19 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BCN_TBTT_OFFSET, align 4
  %22 = sub nsw i32 %21, 2
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @BCN_TIME_CFG, align 4
  %27 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @BCN_TIME_CFG_BEACON_INTERVAL, align 4
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 16
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @rt2x00_set_field32(i32* %5, i32 %28, i32 %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @BCN_TIME_CFG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %35, i32 %36, i32 %37)
  br label %61

39:                                               ; preds = %17
  %40 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %41 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BCN_TBTT_OFFSET, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = load i32, i32* @BCN_TIME_CFG, align 4
  %49 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @BCN_TIME_CFG_BEACON_INTERVAL, align 4
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 16
  %55 = call i32 @rt2x00_set_field32(i32* %5, i32 %50, i32 %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = load i32, i32* @BCN_TIME_CFG, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %46, %39
  br label %61

61:                                               ; preds = %60, %24
  %62 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %63 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @BCN_TBTT_OFFSET, align 4
  %67 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %68 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = srem i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %61, %1
  %72 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 1
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = load i32, i32* @INT_MASK_CSR_TBTT, align 4
  %80 = call i32 @rt2800mmio_enable_interrupt(%struct.rt2x00_dev* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %71
  ret void
}

declare dso_local i32 @rt2x00lib_beacondone(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800mmio_enable_interrupt(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
