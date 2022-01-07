; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_get_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32* }

@PART_TOP_PRCM_ELP_SOC = common dso_local global i64 0, align 8
@WL18XX_REG_FUSE_BD_ADDR_1 = common dso_local global i32 0, align 4
@WL18XX_REG_FUSE_BD_ADDR_2 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"MAC address from fuse not available, using random locally administered addresses.\00", align 1
@PART_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_get_mac(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %9 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @PART_TOP_PRCM_ELP_SOC, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @wlcore_set_partition(%struct.wl1271* %8, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %95

18:                                               ; preds = %1
  %19 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %20 = load i32, i32* @WL18XX_REG_FUSE_BD_ADDR_1, align 4
  %21 = call i32 @wlcore_read32(%struct.wl1271* %19, i32 %20, i32* %3)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %95

25:                                               ; preds = %18
  %26 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %27 = load i32, i32* @WL18XX_REG_FUSE_BD_ADDR_2, align 4
  %28 = call i32 @wlcore_read32(%struct.wl1271* %26, i32 %27, i32* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %95

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 65535
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, -16777216
  %38 = lshr i32 %37, 24
  %39 = add i32 %35, %38
  %40 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 16777215
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %32
  %51 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %6, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %7, align 8
  %60 = call i32 @eth_random_addr(i32* %59)
  %61 = getelementptr inbounds i32, i32* %59, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = shl i32 %62, 16
  %64 = getelementptr inbounds i32, i32* %59, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = add nsw i32 %63, %66
  %68 = getelementptr inbounds i32, i32* %59, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %67, %69
  %71 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds i32, i32* %59, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 16
  %76 = getelementptr inbounds i32, i32* %59, i64 4
  %77 = load i32, i32* %76, align 16
  %78 = shl i32 %77, 8
  %79 = add nsw i32 %75, %78
  %80 = getelementptr inbounds i32, i32* %59, i64 5
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %79, %81
  %83 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = call i32 @wl1271_warning(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %86 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %87

87:                                               ; preds = %55, %50, %32
  %88 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %89 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @PART_DOWN, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = call i32 @wlcore_set_partition(%struct.wl1271* %88, i32* %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %87, %31, %24, %17
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_read32(%struct.wl1271*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @wl1271_warning(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
