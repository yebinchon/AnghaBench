; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_timing_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_timing_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.ssb_device* }
%struct.ssb_device = type { %struct.TYPE_2__, %struct.ssb_bus* }
%struct.TYPE_2__ = type { i32 }
%struct.ssb_bus = type { i32, i64 }

@SSB_CHIPCO_PROG_CFG = common dso_local global i32 0, align 4
@SSB_PROG_WCNT_3_SHIFT = common dso_local global i32 0, align 4
@SSB_PROG_WCNT_1_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_PROG_WAITCNT = common dso_local global i32 0, align 4
@SSB_FLASH_WCNT_3_SHIFT = common dso_local global i32 0, align 4
@SSB_FLASH_WCNT_1_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_FLASH_WAITCNT = common dso_local global i32 0, align 4
@SSB_CHIPCO_PCMCIA_MEMWAIT = common dso_local global i32 0, align 4
@SSB_PROG_WCNT_2_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_chipco_timing_init(%struct.ssb_chipcommon* %0, i64 %1) #0 {
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 0
  %10 = load %struct.ssb_device*, %struct.ssb_device** %9, align 8
  store %struct.ssb_device* %10, %struct.ssb_device** %5, align 8
  %11 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %12 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %11, i32 0, i32 1
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %12, align 8
  store %struct.ssb_bus* %13, %struct.ssb_bus** %6, align 8
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %15 = load i32, i32* @SSB_CHIPCO_PROG_CFG, align 4
  %16 = call i32 @chipco_write32(%struct.ssb_chipcommon* %14, i32 %15, i32 17)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @DIV_ROUND_UP(i32 10, i64 %17)
  %19 = load i32, i32* @SSB_PROG_WCNT_3_SHIFT, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @DIV_ROUND_UP(i32 40, i64 %21)
  %23 = load i32, i32* @SSB_PROG_WCNT_1_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @DIV_ROUND_UP(i32 240, i64 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %32 = load i32, i32* @SSB_CHIPCO_PROG_WAITCNT, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @chipco_write32(%struct.ssb_chipcommon* %31, i32 %32, i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @DIV_ROUND_UP(i32 10, i64 %35)
  %37 = load i32, i32* @SSB_FLASH_WCNT_3_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @DIV_ROUND_UP(i32 10, i64 %39)
  %41 = load i32, i32* @SSB_FLASH_WCNT_1_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @DIV_ROUND_UP(i32 120, i64 %45)
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %50 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 21349
  br i1 %52, label %59, label %53

53:                                               ; preds = %2
  %54 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %55 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 9
  br i1 %58, label %59, label %64

59:                                               ; preds = %53, %2
  %60 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %61 = load i32, i32* @SSB_CHIPCO_FLASH_WAITCNT, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @chipco_write32(%struct.ssb_chipcommon* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  %65 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %66 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 21349
  br i1 %68, label %85, label %69

69:                                               ; preds = %64
  %70 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %71 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 9
  br i1 %74, label %85, label %75

75:                                               ; preds = %69
  %76 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %77 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 21328
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %82 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80, %69, %64
  %86 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %87 = load i32, i32* @SSB_CHIPCO_PCMCIA_MEMWAIT, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @chipco_write32(%struct.ssb_chipcommon* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80, %75
  %91 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %92 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 21328
  br i1 %94, label %95, label %120

95:                                               ; preds = %90
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @DIV_ROUND_UP(i32 10, i64 %96)
  %98 = load i32, i32* @SSB_PROG_WCNT_3_SHIFT, align 4
  %99 = shl i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @DIV_ROUND_UP(i32 20, i64 %100)
  %102 = load i32, i32* @SSB_PROG_WCNT_2_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @DIV_ROUND_UP(i32 100, i64 %106)
  %108 = load i32, i32* @SSB_PROG_WCNT_1_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @DIV_ROUND_UP(i32 120, i64 %112)
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %117 = load i32, i32* @SSB_CHIPCO_PROG_WAITCNT, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @chipco_write32(%struct.ssb_chipcommon* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %95, %90
  ret void
}

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
