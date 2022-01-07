; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i32 }
%struct.phy = type { i32 }
%struct.serdes_macro = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PHY_MODE_ETHERNET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ocelot_serdes_muxes = common dso_local global %struct.TYPE_5__* null, align 8
@PHY_INTERFACE_MODE_QSGMII = common dso_local global i32 0, align 4
@HSIO_HW_CFG = common dso_local global i32 0, align 4
@SERDES1G_MAX = common dso_local global i64 0, align 8
@SERDES6G_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32)* @serdes_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_set_mode(%struct.phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.serdes_macro*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.phy*, %struct.phy** %5, align 8
  %12 = call %struct.serdes_macro* @phy_get_drvdata(%struct.phy* %11)
  store %struct.serdes_macro* %12, %struct.serdes_macro** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PHY_MODE_ETHERNET, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %146

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %140, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %143

25:                                               ; preds = %20
  %26 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %27 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %54, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %37, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %46, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45, %36, %25
  br label %140

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PHY_INTERFACE_MODE_QSGMII, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %61 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %140

71:                                               ; preds = %59, %55
  %72 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %73 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HSIO_HW_CFG, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %83, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %71
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %146

95:                                               ; preds = %71
  %96 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %97 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SERDES1G_MAX, align 8
  %100 = icmp sle i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %103 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %108 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @serdes_init_s1g(i32 %106, i64 %109)
  store i32 %110, i32* %4, align 4
  br label %146

111:                                              ; preds = %95
  %112 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %113 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SERDES6G_MAX, align 8
  %116 = icmp sle i64 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %111
  %118 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %119 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.serdes_macro*, %struct.serdes_macro** %8, align 8
  %124 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SERDES1G_MAX, align 8
  %127 = add nsw i64 %126, 1
  %128 = sub nsw i64 %125, %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocelot_serdes_muxes, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @serdes_init_s6g(i32 %122, i64 %128, i32 %134)
  store i32 %135, i32* %4, align 4
  br label %146

136:                                              ; preds = %111
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %146

140:                                              ; preds = %70, %54
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %20

143:                                              ; preds = %20
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %143, %137, %117, %101, %93, %16
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.serdes_macro* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @serdes_init_s1g(i32, i64) #1

declare dso_local i32 @serdes_init_s6g(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
