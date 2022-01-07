; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_csiphy_lanes_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_csiphy_lanes_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csiphy = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@CSI2_COMPLEXIO_CFG = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_CFG_CLOCK_POL = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_CFG_CLOCK_POSITION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csiphy*)* @csiphy_lanes_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_lanes_config(%struct.iss_csiphy* %0) #0 {
  %2 = alloca %struct.iss_csiphy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iss_csiphy* %0, %struct.iss_csiphy** %2, align 8
  %5 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %6 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %9 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CSI2_COMPLEXIO_CFG, align 4
  %12 = call i32 @iss_reg_read(i32 %7, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %64, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %16 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  %22 = call i32 @CSI2_COMPLEXIO_CFG_DATA_POL(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  %25 = call i32 @CSI2_COMPLEXIO_CFG_DATA_POSITION_MASK(i32 %24)
  %26 = or i32 %22, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %31 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %19
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, 1
  %43 = call i32 @CSI2_COMPLEXIO_CFG_DATA_POL(i32 %42)
  br label %45

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 0, %44 ]
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %50 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 1
  %60 = call i32 @CSI2_COMPLEXIO_CFG_DATA_POSITION_SHIFT(i32 %59)
  %61 = shl i32 %57, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %3, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %13

67:                                               ; preds = %13
  %68 = load i32, i32* @CSI2_COMPLEXIO_CFG_CLOCK_POL, align 4
  %69 = load i32, i32* @CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %75 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @CSI2_COMPLEXIO_CFG_CLOCK_POL, align 4
  br label %83

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %88 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CSI2_COMPLEXIO_CFG_CLOCK_POSITION_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %97 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %100 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CSI2_COMPLEXIO_CFG, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @iss_reg_write(i32 %98, i32 %101, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @iss_reg_read(i32, i32, i32) #1

declare dso_local i32 @CSI2_COMPLEXIO_CFG_DATA_POL(i32) #1

declare dso_local i32 @CSI2_COMPLEXIO_CFG_DATA_POSITION_MASK(i32) #1

declare dso_local i32 @CSI2_COMPLEXIO_CFG_DATA_POSITION_SHIFT(i32) #1

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
