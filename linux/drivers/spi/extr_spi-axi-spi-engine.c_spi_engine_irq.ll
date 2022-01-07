; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_engine = type { i32, i32, i64, %struct.spi_message*, i32, i8*, i8* }
%struct.spi_message = type { i32, i32, i64 }

@SPI_ENGINE_REG_INT_PENDING = common dso_local global i64 0, align 8
@SPI_ENGINE_INT_SYNC = common dso_local global i32 0, align 4
@SPI_ENGINE_REG_SYNC_ID = common dso_local global i64 0, align 8
@SPI_ENGINE_INT_CMD_ALMOST_EMPTY = common dso_local global i32 0, align 4
@SPI_ENGINE_INT_SDO_ALMOST_EMPTY = common dso_local global i32 0, align 4
@SPI_ENGINE_INT_SDI_ALMOST_FULL = common dso_local global i32 0, align 4
@SPI_ENGINE_REG_INT_ENABLE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spi_engine_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_engine_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_message*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.spi_master*
  store %struct.spi_master* %11, %struct.spi_master** %5, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %13 = call %struct.spi_engine* @spi_master_get_devdata(%struct.spi_master* %12)
  store %struct.spi_engine* %13, %struct.spi_engine** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %15 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SPI_ENGINE_REG_INT_PENDING, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i8* @readl_relaxed(i64 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SPI_ENGINE_INT_SYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load i32, i32* @SPI_ENGINE_INT_SYNC, align 4
  %27 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %28 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SPI_ENGINE_REG_INT_PENDING, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  %33 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %34 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPI_ENGINE_REG_SYNC_ID, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i8* @readl_relaxed(i64 %37)
  %39 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %40 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %25, %2
  %42 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %43 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SPI_ENGINE_INT_CMD_ALMOST_EMPTY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %51 = call i32 @spi_engine_write_cmd_fifo(%struct.spi_engine* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @SPI_ENGINE_INT_CMD_ALMOST_EMPTY, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @SPI_ENGINE_INT_SDO_ALMOST_EMPTY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %65 = call i32 @spi_engine_write_tx_fifo(%struct.spi_engine* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @SPI_ENGINE_INT_SDO_ALMOST_EMPTY, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SPI_ENGINE_INT_SDI_ALMOST_FULL, align 4
  %75 = load i32, i32* @SPI_ENGINE_INT_SYNC, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %81 = call i32 @spi_engine_read_rx_fifo(%struct.spi_engine* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @SPI_ENGINE_INT_SDI_ALMOST_FULL, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @SPI_ENGINE_INT_SYNC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %88
  %94 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %95 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %94, i32 0, i32 3
  %96 = load %struct.spi_message*, %struct.spi_message** %95, align 8
  %97 = icmp ne %struct.spi_message* %96, null
  br i1 %97, label %98, label %128

98:                                               ; preds = %93
  %99 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %100 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %99, i32 0, i32 6
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %103 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %102, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %101, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %98
  %107 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %108 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %107, i32 0, i32 3
  %109 = load %struct.spi_message*, %struct.spi_message** %108, align 8
  store %struct.spi_message* %109, %struct.spi_message** %9, align 8
  %110 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %111 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @kfree(i32 %112)
  %114 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %115 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %117 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.spi_message*, %struct.spi_message** %9, align 8
  %120 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %122 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %121, i32 0, i32 3
  store %struct.spi_message* null, %struct.spi_message** %122, align 8
  %123 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %124 = call i32 @spi_finalize_current_message(%struct.spi_master* %123)
  %125 = load i32, i32* @SPI_ENGINE_INT_SYNC, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %106, %98, %93
  br label %129

129:                                              ; preds = %128, %88
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %136 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %140 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %143 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SPI_ENGINE_REG_INT_ENABLE, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel_relaxed(i32 %141, i64 %146)
  br label %148

148:                                              ; preds = %132, %129
  %149 = load %struct.spi_engine*, %struct.spi_engine** %6, align 8
  %150 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %149, i32 0, i32 1
  %151 = call i32 @spin_unlock(i32* %150)
  %152 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %152
}

declare dso_local %struct.spi_engine* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spi_engine_write_cmd_fifo(%struct.spi_engine*) #1

declare dso_local i32 @spi_engine_write_tx_fifo(%struct.spi_engine*) #1

declare dso_local i32 @spi_engine_read_rx_fifo(%struct.spi_engine*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spi_finalize_current_message(%struct.spi_master*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
