; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_MDIO_V1 = common dso_local global i32 0, align 4
@REG_PCIE_MIX_CFG = common dso_local global i64 0, align 8
@BIT_MDIO_WFLAG_V1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MDIO write fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_mdio_write(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %13 = load i32, i32* @REG_MDIO_V1, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @rtw_write16(%struct.rtw_dev* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 32
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 1
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 2
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %27 = load i64, i64* @REG_PCIE_MIX_CFG, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 31
  %30 = call i32 @rtw_write8(%struct.rtw_dev* %26, i64 %27, i32 %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %32 = load i64, i64* @REG_PCIE_MIX_CFG, align 8
  %33 = add nsw i64 %32, 3
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @rtw_write8(%struct.rtw_dev* %31, i64 %33, i32 %34)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %37 = load i64, i64* @REG_PCIE_MIX_CFG, align 8
  %38 = load i32, i32* @BIT_MDIO_WFLAG_V1, align 4
  %39 = call i32 @rtw_write32_mask(%struct.rtw_dev* %36, i64 %37, i32 %38, i32 1)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %41 = load i64, i64* @REG_PCIE_MIX_CFG, align 8
  %42 = load i32, i32* @BIT_MDIO_WFLAG_V1, align 4
  %43 = call i32 @rtw_read32_mask(%struct.rtw_dev* %40, i64 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  store i32 20, i32* %11, align 4
  br label %44

44:                                               ; preds = %52, %4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  br i1 %51, label %52, label %60

52:                                               ; preds = %50
  %53 = call i32 @udelay(i32 10)
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %55 = load i64, i64* @REG_PCIE_MIX_CFG, align 8
  %56 = load i32, i32* @BIT_MDIO_WFLAG_V1, align 4
  %57 = call i32 @rtw_read32_mask(%struct.rtw_dev* %54, i64 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %44

60:                                               ; preds = %50
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @WARN(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i32 @rtw_read32_mask(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
