; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spifc.c_meson_spifc_txrx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spifc.c_meson_spifc_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_spifc = type { i32 }
%struct.spi_transfer = type { i32, i64, i64 }

@REG_USER = common dso_local global i32 0, align 4
@USER_UC_MASK = common dso_local global i32 0, align 4
@USER_UC_DOUT_SEL = common dso_local global i32 0, align 4
@REG_USER1 = common dso_local global i32 0, align 4
@USER1_BN_UC_DOUT_SHIFT = common dso_local global i32 0, align 4
@USER_DIN_EN_MS = common dso_local global i32 0, align 4
@REG_USER4 = common dso_local global i32 0, align 4
@USER4_CS_ACT = common dso_local global i32 0, align 4
@REG_SLAVE = common dso_local global i32 0, align 4
@SLAVE_TRST_DONE = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@CMD_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_spifc*, %struct.spi_transfer*, i32, i32, i32, i32)* @meson_spifc_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_spifc_txrx(%struct.meson_spifc* %0, %struct.spi_transfer* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.meson_spifc*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.meson_spifc* %0, %struct.meson_spifc** %7, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %6
  %20 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @meson_spifc_fill_buffer(%struct.meson_spifc* %20, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %6
  %30 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %31 = getelementptr inbounds %struct.meson_spifc, %struct.meson_spifc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REG_USER, align 4
  %34 = load i32, i32* @USER_UC_MASK, align 4
  %35 = load i32, i32* @USER_UC_DOUT_SEL, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %38 = getelementptr inbounds %struct.meson_spifc, %struct.meson_spifc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @REG_USER1, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 8, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @USER1_BN_UC_DOUT_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @regmap_write(i32 %39, i32 %40, i32 %45)
  %47 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %48 = getelementptr inbounds %struct.meson_spifc, %struct.meson_spifc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @REG_USER, align 4
  %51 = load i32, i32* @USER_DIN_EN_MS, align 4
  %52 = load i32, i32* @USER_DIN_EN_MS, align 4
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %29
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %13, align 4
  br label %70

63:                                               ; preds = %56
  %64 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %70, %29
  %72 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %73 = getelementptr inbounds %struct.meson_spifc, %struct.meson_spifc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @REG_USER4, align 4
  %76 = load i32, i32* @USER4_CS_ACT, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @USER4_CS_ACT, align 4
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 %83)
  %85 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %86 = getelementptr inbounds %struct.meson_spifc, %struct.meson_spifc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @REG_SLAVE, align 4
  %89 = load i32, i32* @SLAVE_TRST_DONE, align 4
  %90 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 0)
  %91 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %92 = getelementptr inbounds %struct.meson_spifc, %struct.meson_spifc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @REG_CMD, align 4
  %95 = load i32, i32* @CMD_USER, align 4
  %96 = load i32, i32* @CMD_USER, align 4
  %97 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %99 = call i32 @meson_spifc_wait_ready(%struct.meson_spifc* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %82
  %103 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %104 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.meson_spifc*, %struct.meson_spifc** %7, align 8
  %109 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %110 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @meson_spifc_drain_buffer(%struct.meson_spifc* %108, i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %107, %102, %82
  %118 = load i32, i32* %14, align 4
  ret i32 %118
}

declare dso_local i32 @meson_spifc_fill_buffer(%struct.meson_spifc*, i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @meson_spifc_wait_ready(%struct.meson_spifc*) #1

declare dso_local i32 @meson_spifc_drain_buffer(%struct.meson_spifc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
