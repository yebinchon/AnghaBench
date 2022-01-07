; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mips_flash_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mips_flash_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.ssb_mipscore = type { %struct.TYPE_6__*, %struct.ssb_pflash, %struct.ssb_sflash }
%struct.TYPE_6__ = type { i32, %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ssb_pflash = type { i32, i32, i64, i64 }
%struct.ssb_sflash = type { i64, i64, i64 }

@SSB_FLASH1 = common dso_local global i64 0, align 8
@SSB_FLASH1_SZ = common dso_local global i64 0, align 8
@SSB_CHIPCO_CAP_FLASHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found serial flash\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Found parallel flash\0A\00", align 1
@SSB_FLASH2 = common dso_local global i64 0, align 8
@SSB_FLASH2_SZ = common dso_local global i64 0, align 8
@SSB_CHIPCO_FLASH_CFG = common dso_local global i32 0, align 4
@SSB_CHIPCO_CFG_DS16 = common dso_local global i32 0, align 4
@ssb_pflash_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@ssb_pflash_resource = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_mipscore*)* @ssb_mips_flash_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_mips_flash_detect(%struct.ssb_mipscore* %0) #0 {
  %2 = alloca %struct.ssb_mipscore*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_sflash*, align 8
  %5 = alloca %struct.ssb_pflash*, align 8
  store %struct.ssb_mipscore* %0, %struct.ssb_mipscore** %2, align 8
  %6 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %7 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %9, align 8
  store %struct.ssb_bus* %10, %struct.ssb_bus** %3, align 8
  %11 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %12 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %11, i32 0, i32 2
  store %struct.ssb_sflash* %12, %struct.ssb_sflash** %4, align 8
  %13 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %14 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %13, i32 0, i32 1
  store %struct.ssb_pflash* %14, %struct.ssb_pflash** %5, align 8
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %16 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %15, i32 0, i32 0
  %17 = call i32 @ssb_chipco_available(%struct.TYPE_7__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %21 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %23 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %22, i32 0, i32 1
  store i32 2, i32* %23, align 4
  %24 = load i64, i64* @SSB_FLASH1, align 8
  %25 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %26 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* @SSB_FLASH1_SZ, align 8
  %28 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %29 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %79

30:                                               ; preds = %1
  %31 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %32 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SSB_CHIPCO_CAP_FLASHT, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %78 [
    i32 128, label %37
    i32 130, label %37
    i32 129, label %47
  ]

37:                                               ; preds = %30, %30
  %38 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %39 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %45 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %44, i32 0, i32 0
  %46 = call i32 @ssb_sflash_init(%struct.TYPE_7__* %45)
  br label %78

47:                                               ; preds = %30
  %48 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %49 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %55 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i64, i64* @SSB_FLASH2, align 8
  %57 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %58 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* @SSB_FLASH2_SZ, align 8
  %60 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %61 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %63 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SSB_CHIPCO_FLASH_CFG, align 4
  %67 = call i32 @ssb_read32(i32 %65, i32 %66)
  %68 = load i32, i32* @SSB_CHIPCO_CFG_DS16, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %47
  %72 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %73 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %77

74:                                               ; preds = %47
  %75 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %76 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %75, i32 0, i32 1
  store i32 2, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %30, %77, %37
  br label %79

79:                                               ; preds = %78, %19
  %80 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %81 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %105

85:                                               ; preds = %79
  %86 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %87 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %92 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ssb_pflash_data, i32 0, i32 0), align 4
  %94 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %95 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ssb_pflash_resource, i32 0, i32 1), align 8
  %97 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %98 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ssb_pflash*, %struct.ssb_pflash** %5, align 8
  %101 = getelementptr inbounds %struct.ssb_pflash, %struct.ssb_pflash* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  store i64 %103, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ssb_pflash_resource, i32 0, i32 0), align 8
  br label %104

104:                                              ; preds = %90, %85
  br label %105

105:                                              ; preds = %104, %84
  ret void
}

declare dso_local i32 @ssb_chipco_available(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ssb_sflash_init(%struct.TYPE_7__*) #1

declare dso_local i32 @ssb_read32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
