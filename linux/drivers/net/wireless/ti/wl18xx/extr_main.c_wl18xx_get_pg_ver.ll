; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_get_pg_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_get_pg_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }

@PART_TOP_PRCM_ELP_SOC = common dso_local global i64 0, align 8
@WL18XX_REG_FUSE_DATA_2_3 = common dso_local global i32 0, align 4
@WL18XX_PACKAGE_TYPE_OFFSET = common dso_local global i32 0, align 4
@WL18XX_REG_FUSE_DATA_1_3 = common dso_local global i32 0, align 4
@WL18XX_PG_VER_MASK = common dso_local global i32 0, align 4
@WL18XX_PG_VER_OFFSET = common dso_local global i32 0, align 4
@WL18XX_ROM_VER_MASK = common dso_local global i32 0, align 4
@WL18XX_ROM_VER_OFFSET = common dso_local global i32 0, align 4
@WL18XX_PACKAGE_TYPE_WSP = common dso_local global i32 0, align 4
@WL18XX_METAL_VER_MASK = common dso_local global i32 0, align 4
@WL18XX_METAL_VER_OFFSET = common dso_local global i32 0, align 4
@WL18XX_NEW_METAL_VER_MASK = common dso_local global i32 0, align 4
@WL18XX_NEW_METAL_VER_OFFSET = common dso_local global i32 0, align 4
@WL18XX_RDL_VER_MASK = common dso_local global i32 0, align 4
@WL18XX_RDL_VER_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"wl18xx HW: %s, PG %d.%d (ROM 0x%x)\00", align 1
@PART_BOOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32*)* @wl18xx_get_pg_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_get_pg_ver(%struct.wl1271* %0, i32* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %13 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @PART_TOP_PRCM_ELP_SOC, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @wlcore_set_partition(%struct.wl1271* %12, i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %101

22:                                               ; preds = %2
  %23 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %24 = load i32, i32* @WL18XX_REG_FUSE_DATA_2_3, align 4
  %25 = call i32 @wlcore_read32(%struct.wl1271* %23, i32 %24, i32* %5)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %101

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @WL18XX_PACKAGE_TYPE_OFFSET, align 4
  %32 = ashr i32 %30, %31
  %33 = and i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %35 = load i32, i32* @WL18XX_REG_FUSE_DATA_1_3, align 4
  %36 = call i32 @wlcore_read32(%struct.wl1271* %34, i32 %35, i32* %5)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %101

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @WL18XX_PG_VER_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @WL18XX_PG_VER_OFFSET, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @WL18XX_ROM_VER_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @WL18XX_ROM_VER_OFFSET, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 14
  br i1 %52, label %53, label %63

53:                                               ; preds = %40
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @WL18XX_PACKAGE_TYPE_WSP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @WL18XX_METAL_VER_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @WL18XX_METAL_VER_OFFSET, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %7, align 4
  br label %69

63:                                               ; preds = %53, %40
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @WL18XX_NEW_METAL_VER_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @WL18XX_NEW_METAL_VER_OFFSET, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %71 = load i32, i32* @WL18XX_REG_FUSE_DATA_2_3, align 4
  %72 = call i32 @wlcore_read32(%struct.wl1271* %70, i32 %71, i32* %5)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %101

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @WL18XX_RDL_VER_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @WL18XX_RDL_VER_OFFSET, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @wl18xx_rdl_name(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @wl1271_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %4, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %76
  %94 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %95 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %96 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @PART_BOOT, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i32 @wlcore_set_partition(%struct.wl1271* %94, i32* %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %93, %75, %39, %28, %21
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_read32(%struct.wl1271*, i32, i32*) #1

declare dso_local i32 @wl1271_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wl18xx_rdl_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
