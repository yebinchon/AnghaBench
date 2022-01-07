; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.omap2_mcspi_cs*, %struct.spi_master* }
%struct.omap2_mcspi_cs = type { i32 }
%struct.spi_master = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.omap2_mcspi = type { i32 }

@OMAP2_MCSPI_MAX_FIFODEPTH = common dso_local global i32 0, align 4
@OMAP2_MCSPI_MAX_FIFOWCNT = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_FFER = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCONF_FFET = common dso_local global i32 0, align 4
@OMAP2_MCSPI_XFERLEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*, i32)* @omap2_mcspi_set_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_set_fifo(%struct.spi_device* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_master*, align 8
  %8 = alloca %struct.omap2_mcspi_cs*, align 8
  %9 = alloca %struct.omap2_mcspi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load %struct.spi_master*, %struct.spi_master** %16, align 8
  store %struct.spi_master* %17, %struct.spi_master** %7, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %19, align 8
  store %struct.omap2_mcspi_cs* %20, %struct.omap2_mcspi_cs** %8, align 8
  %21 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %22 = call %struct.omap2_mcspi* @spi_master_get_devdata(%struct.spi_master* %21)
  store %struct.omap2_mcspi* %22, %struct.omap2_mcspi** %9, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %24 = call i32 @mcspi_cached_chconf0(%struct.spi_device* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %104

27:                                               ; preds = %3
  %28 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %29 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mcspi_bytes_per_word(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = srem i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %105

39:                                               ; preds = %27
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @OMAP2_MCSPI_MAX_FIFODEPTH, align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %11, align 4
  br label %54

52:                                               ; preds = %44, %39
  %53 = load i32, i32* @OMAP2_MCSPI_MAX_FIFODEPTH, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %56 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @OMAP2_MCSPI_MAX_FIFOWCNT, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %105

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 16
  store i32 %66, i32* %14, align 4
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i32, i32* @OMAP2_MCSPI_CHCONF_FFER, align 4
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 1
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %71, %64
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32, i32* @OMAP2_MCSPI_CHCONF_FFET, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %95 = load i32, i32* @OMAP2_MCSPI_XFERLEVEL, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @mcspi_write_reg(%struct.spi_master* %94, i32 %95, i32 %96)
  %98 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @mcspi_write_chconf0(%struct.spi_device* %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %9, align 8
  %103 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %131

104:                                              ; preds = %3
  br label %105

105:                                              ; preds = %104, %63, %38
  %106 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %107 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* @OMAP2_MCSPI_CHCONF_FFER, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %13, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %117 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i32, i32* @OMAP2_MCSPI_CHCONF_FFET, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @mcspi_write_chconf0(%struct.spi_device* %126, i32 %127)
  %129 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %9, align 8
  %130 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %93
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @mcspi_cached_chconf0(%struct.spi_device*) #1

declare dso_local i32 @mcspi_bytes_per_word(i32) #1

declare dso_local i32 @mcspi_write_reg(%struct.spi_master*, i32, i32) #1

declare dso_local i32 @mcspi_write_chconf0(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
