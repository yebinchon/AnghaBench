; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sqi = type { i32, i64, i64 }

@PESQI_SOFT_RESET = common dso_local global i32 0, align 4
@PESQI_CONF_REG = common dso_local global i64 0, align 8
@PESQI_CMD_THRES_REG = common dso_local global i64 0, align 8
@PESQI_TXTHR_MASK = common dso_local global i32 0, align 4
@PESQI_TXTHR_SHIFT = common dso_local global i32 0, align 4
@PESQI_RXTHR_MASK = common dso_local global i32 0, align 4
@PESQI_RXTHR_SHIFT = common dso_local global i32 0, align 4
@PESQI_INT_THRES_REG = common dso_local global i64 0, align 8
@PESQI_MODE = common dso_local global i32 0, align 4
@PESQI_MODE_DMA = common dso_local global i32 0, align 4
@PESQI_MODE_SHIFT = common dso_local global i32 0, align 4
@PESQI_QUAD_LANE = common dso_local global i32 0, align 4
@PESQI_LANES_SHIFT = common dso_local global i32 0, align 4
@PESQI_BURST_EN = common dso_local global i32 0, align 4
@PESQI_CSEN_SHIFT = common dso_local global i32 0, align 4
@PESQI_BD_POLL_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic32_sqi*)* @pic32_sqi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_sqi_hw_init(%struct.pic32_sqi* %0) #0 {
  %2 = alloca %struct.pic32_sqi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.pic32_sqi* %0, %struct.pic32_sqi** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  %7 = load i32, i32* @PESQI_SOFT_RESET, align 4
  %8 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %9 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PESQI_CONF_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %15 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PESQI_CONF_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PESQI_SOFT_RESET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @readl_poll_timeout_atomic(i64 %18, i32 %19, i32 %25, i32 1, i32 5000)
  %27 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %28 = call i32 @pic32_sqi_disable_int(%struct.pic32_sqi* %27)
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @local_irq_restore(i64 %29)
  %31 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %32 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PESQI_CMD_THRES_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @PESQI_TXTHR_MASK, align 4
  %38 = load i32, i32* @PESQI_TXTHR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @PESQI_RXTHR_MASK, align 4
  %44 = load i32, i32* @PESQI_RXTHR_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @PESQI_TXTHR_SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* @PESQI_RXTHR_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %58 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PESQI_CMD_THRES_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %64 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PESQI_INT_THRES_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @PESQI_TXTHR_MASK, align 4
  %70 = load i32, i32* @PESQI_TXTHR_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @PESQI_RXTHR_MASK, align 4
  %76 = load i32, i32* @PESQI_RXTHR_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @PESQI_TXTHR_SHIFT, align 4
  %82 = shl i32 1, %81
  %83 = load i32, i32* @PESQI_RXTHR_SHIFT, align 4
  %84 = shl i32 1, %83
  %85 = or i32 %82, %84
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %90 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PESQI_INT_THRES_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %96 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PESQI_CONF_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @PESQI_MODE, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @PESQI_MODE_DMA, align 4
  %106 = load i32, i32* @PESQI_MODE_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %112 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PESQI_CONF_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load i32, i32* @PESQI_QUAD_LANE, align 4
  %118 = load i32, i32* @PESQI_LANES_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* @PESQI_BURST_EN, align 4
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* @PESQI_CSEN_SHIFT, align 4
  %126 = shl i32 3, %125
  %127 = load i32, i32* %4, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %131 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PESQI_CONF_REG, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel(i32 %129, i64 %134)
  %136 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %137 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PESQI_BD_POLL_CTRL_REG, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 0, i64 %140)
  %142 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %143 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %145 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %144, i32 0, i32 0
  store i32 -1, i32* %145, align 8
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @pic32_sqi_disable_int(%struct.pic32_sqi*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
