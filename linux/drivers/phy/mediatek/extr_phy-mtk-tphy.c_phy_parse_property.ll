; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_phy_parse_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_phy_parse_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_tphy = type { i32 }
%struct.mtk_phy_instance = type { i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@PHY_TYPE_USB2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"mediatek,bc12\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"mediatek,eye-src\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"mediatek,eye-vrt\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"mediatek,eye-term\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"bc12:%d, src:%d, vrt:%d, term:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_tphy*, %struct.mtk_phy_instance*)* @phy_parse_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_parse_property(%struct.mtk_tphy* %0, %struct.mtk_phy_instance* %1) #0 {
  %3 = alloca %struct.mtk_tphy*, align 8
  %4 = alloca %struct.mtk_phy_instance*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.mtk_tphy* %0, %struct.mtk_tphy** %3, align 8
  store %struct.mtk_phy_instance* %1, %struct.mtk_phy_instance** %4, align 8
  %6 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %7 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PHY_TYPE_USB2, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @device_property_read_bool(%struct.device* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %22, i32 0, i32 3
  %24 = call i32 @device_property_read_u32(%struct.device* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %26, i32 0, i32 2
  %28 = call i32 @device_property_read_u32(%struct.device* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %30, i32 0, i32 1
  %32 = call i32 @device_property_read_u32(%struct.device* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %31)
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
