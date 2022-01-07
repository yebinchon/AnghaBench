; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@WPDMA_RST_IDX = common dso_local global i32 0, align 4
@WPDMA_RST_IDX_DTX_IDX0 = common dso_local global i32 0, align 4
@WPDMA_RST_IDX_DTX_IDX1 = common dso_local global i32 0, align 4
@WPDMA_RST_IDX_DTX_IDX2 = common dso_local global i32 0, align 4
@WPDMA_RST_IDX_DTX_IDX3 = common dso_local global i32 0, align 4
@WPDMA_RST_IDX_DTX_IDX4 = common dso_local global i32 0, align 4
@WPDMA_RST_IDX_DTX_IDX5 = common dso_local global i32 0, align 4
@WPDMA_RST_IDX_DRX_IDX0 = common dso_local global i32 0, align 4
@PBF_SYS_CTRL = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@RT3593 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@AUX_CTRL = common dso_local global i32 0, align 4
@AUX_CTRL_FORCE_PCIE_CLK = common dso_local global i32 0, align 4
@AUX_CTRL_WAKE_PCIE_EN = common dso_local global i32 0, align 4
@PWR_PIN_CFG = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_RESET_CSR = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_RESET_BBP = common dso_local global i32 0, align 4
@MAC_SYS_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800mmio_init_registers(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = load i32, i32* @WPDMA_RST_IDX, align 4
  %6 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @WPDMA_RST_IDX_DTX_IDX0, align 4
  %8 = call i32 @rt2x00_set_field32(i32* %3, i32 %7, i32 1)
  %9 = load i32, i32* @WPDMA_RST_IDX_DTX_IDX1, align 4
  %10 = call i32 @rt2x00_set_field32(i32* %3, i32 %9, i32 1)
  %11 = load i32, i32* @WPDMA_RST_IDX_DTX_IDX2, align 4
  %12 = call i32 @rt2x00_set_field32(i32* %3, i32 %11, i32 1)
  %13 = load i32, i32* @WPDMA_RST_IDX_DTX_IDX3, align 4
  %14 = call i32 @rt2x00_set_field32(i32* %3, i32 %13, i32 1)
  %15 = load i32, i32* @WPDMA_RST_IDX_DTX_IDX4, align 4
  %16 = call i32 @rt2x00_set_field32(i32* %3, i32 %15, i32 1)
  %17 = load i32, i32* @WPDMA_RST_IDX_DTX_IDX5, align 4
  %18 = call i32 @rt2x00_set_field32(i32* %3, i32 %17, i32 1)
  %19 = load i32, i32* @WPDMA_RST_IDX_DRX_IDX0, align 4
  %20 = call i32 @rt2x00_set_field32(i32* %3, i32 %19, i32 1)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = load i32, i32* @WPDMA_RST_IDX, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = load i32, i32* @PBF_SYS_CTRL, align 4
  %27 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 3615)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = load i32, i32* @PBF_SYS_CTRL, align 4
  %30 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %28, i32 %29, i32 3584)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i64 @rt2x00_is_pcie(%struct.rt2x00_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %1
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = load i32, i32* @RT3090, align 4
  %37 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %34
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = load i32, i32* @RT3390, align 4
  %42 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = load i32, i32* @RT3572, align 4
  %47 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load i32, i32* @RT3593, align 4
  %52 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = load i32, i32* @RT5390, align 4
  %57 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = load i32, i32* @RT5392, align 4
  %62 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = load i32, i32* @RT5592, align 4
  %67 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64, %59, %54, %49, %44, %39, %34
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = load i32, i32* @AUX_CTRL, align 4
  %72 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @AUX_CTRL_FORCE_PCIE_CLK, align 4
  %74 = call i32 @rt2x00_set_field32(i32* %3, i32 %73, i32 1)
  %75 = load i32, i32* @AUX_CTRL_WAKE_PCIE_EN, align 4
  %76 = call i32 @rt2x00_set_field32(i32* %3, i32 %75, i32 1)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = load i32, i32* @AUX_CTRL, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %69, %64, %1
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %83 = load i32, i32* @PWR_PIN_CFG, align 4
  %84 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %82, i32 %83, i32 3)
  store i32 0, i32* %3, align 4
  %85 = load i32, i32* @MAC_SYS_CTRL_RESET_CSR, align 4
  %86 = call i32 @rt2x00_set_field32(i32* %3, i32 %85, i32 1)
  %87 = load i32, i32* @MAC_SYS_CTRL_RESET_BBP, align 4
  %88 = call i32 @rt2x00_set_field32(i32* %3, i32 %87, i32 1)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = load i32, i32* @MAC_SYS_CTRL, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = load i32, i32* @MAC_SYS_CTRL, align 4
  %95 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %93, i32 %94, i32 0)
  ret i32 0
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_is_pcie(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
