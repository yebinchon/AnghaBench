; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_save_power_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_save_power_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.mt7601u_rate_power }
%struct.mt7601u_rate_power = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32, i32, i32)* @mt7601u_save_power_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_save_power_rate(%struct.mt7601u_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mt7601u_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7601u_rate_power*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store %struct.mt7601u_rate_power* %13, %struct.mt7601u_rate_power** %9, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %132 [
    i32 0, label %15
    i32 1, label %76
    i32 2, label %113
  ]

15:                                               ; preds = %4
  %16 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %17 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 0
  %23 = and i32 %22, 255
  %24 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %19, i32 %20, i32 %23)
  %25 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %26 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %28, i32 %29, i32 %32)
  %34 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %35 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %39, i32* %45, align 4
  %46 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %47 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %53 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %51, i32* %57, align 4
  %58 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %59 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %61, i32 %62, i32 %65)
  %67 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %68 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 1
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %72, 24
  %74 = and i32 %73, 255
  %75 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %70, i32 %71, i32 %74)
  br label %132

76:                                               ; preds = %4
  %77 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %78 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 2
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 0
  %84 = and i32 %83, 255
  %85 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %80, i32 %81, i32 %84)
  %86 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %87 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 3
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 255
  %94 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %89, i32 %90, i32 %93)
  %95 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %96 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %98, i32 %99, i32 %102)
  %104 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %105 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 1
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = ashr i32 %109, 24
  %111 = and i32 %110, 255
  %112 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %107, i32 %108, i32 %111)
  br label %132

113:                                              ; preds = %4
  %114 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %115 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 2
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 0
  %121 = and i32 %120, 255
  %122 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %117, i32 %118, i32 %121)
  %123 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %9, align 8
  %124 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 3
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 255
  %131 = call i32 @mt7601u_set_power_rate(%struct.TYPE_4__* %126, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %4, %113, %76, %15
  ret void
}

declare dso_local i32 @mt7601u_set_power_rate(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
