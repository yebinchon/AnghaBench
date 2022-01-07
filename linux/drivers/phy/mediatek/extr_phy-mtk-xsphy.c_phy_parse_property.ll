; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_phy_parse_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_phy_parse_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_xsphy = type { i32 }
%struct.xsphy_instance = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"mediatek,efuse-intr\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"mediatek,eye-src\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"mediatek,eye-vrt\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"mediatek,eye-term\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"intr:%d, src:%d, vrt:%d, term:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"mediatek,efuse-tx-imp\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"mediatek,efuse-rx-imp\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"intr:%d, tx-imp:%d, rx-imp:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"incompatible phy type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_xsphy*, %struct.xsphy_instance*)* @phy_parse_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_parse_property(%struct.mtk_xsphy* %0, %struct.xsphy_instance* %1) #0 {
  %3 = alloca %struct.mtk_xsphy*, align 8
  %4 = alloca %struct.xsphy_instance*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.mtk_xsphy* %0, %struct.mtk_xsphy** %3, align 8
  store %struct.xsphy_instance* %1, %struct.xsphy_instance** %4, align 8
  %6 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %7 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %6, i32 0, i32 7
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %11 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %68 [
    i32 129, label %13
    i32 128, label %44
  ]

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %16 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %15, i32 0, i32 3
  %17 = call i32 @device_property_read_u32(%struct.device* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %20 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %19, i32 0, i32 6
  %21 = call i32 @device_property_read_u32(%struct.device* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %24 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %23, i32 0, i32 5
  %25 = call i32 @device_property_read_u32(%struct.device* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %28 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %27, i32 0, i32 4
  %29 = call i32 @device_property_read_u32(%struct.device* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %28)
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %32 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %35 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %38 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %41 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %42)
  br label %73

44:                                               ; preds = %2
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %47 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %46, i32 0, i32 3
  %48 = call i32 @device_property_read_u32(%struct.device* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %47)
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %51 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %50, i32 0, i32 2
  %52 = call i32 @device_property_read_u32(%struct.device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %51)
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %55 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %54, i32 0, i32 1
  %56 = call i32 @device_property_read_u32(%struct.device* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32* %55)
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %59 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %62 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %65 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  br label %73

68:                                               ; preds = %2
  %69 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %3, align 8
  %70 = getelementptr inbounds %struct.mtk_xsphy, %struct.mtk_xsphy* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %44, %13
  ret void
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
