; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-tusb1210.c_tusb1210_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-tusb1210.c_tusb1210_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tusb1210 = type { i32 }

@ULPI_OTG_CTRL = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DRVVBUS_EXT = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_ID_PULLUP = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DP_PULLDOWN = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DM_PULLDOWN = common dso_local global i32 0, align 4
@ULPI_OTG_CTRL_DRVVBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @tusb1210_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb1210_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tusb1210*, align 8
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.phy*, %struct.phy** %5, align 8
  %11 = call %struct.tusb1210* @phy_get_drvdata(%struct.phy* %10)
  store %struct.tusb1210* %11, %struct.tusb1210** %8, align 8
  %12 = load %struct.tusb1210*, %struct.tusb1210** %8, align 8
  %13 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %16 = call i32 @ulpi_read(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %61 [
    i32 128, label %23
    i32 129, label %42
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS_EXT, align 4
  %25 = load i32, i32* @ULPI_OTG_CTRL_ID_PULLUP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ULPI_OTG_CTRL_DP_PULLDOWN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ULPI_OTG_CTRL_DM_PULLDOWN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.tusb1210*, %struct.tusb1210** %8, align 8
  %34 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ulpi_write(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %62

42:                                               ; preds = %21
  %43 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS, align 4
  %44 = load i32, i32* @ULPI_OTG_CTRL_DP_PULLDOWN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ULPI_OTG_CTRL_DM_PULLDOWN, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.tusb1210*, %struct.tusb1210** %8, align 8
  %52 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ulpi_write(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @ULPI_OTG_CTRL_DRVVBUS_EXT, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %62

61:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %42, %23
  %63 = load %struct.tusb1210*, %struct.tusb1210** %8, align 8
  %64 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ULPI_OTG_CTRL, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ulpi_write(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %61, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.tusb1210* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @ulpi_read(i32, i32) #1

declare dso_local i32 @ulpi_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
