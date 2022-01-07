; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_apply_ch14_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_apply_ch14_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, %struct.mt7601u_rate_power }
%struct.mt7601u_rate_power = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MT_BW_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32)* @mt7601u_apply_ch14_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_apply_ch14_fixup(%struct.mt7601u_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7601u_rate_power*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.mt7601u_rate_power* %9, %struct.mt7601u_rate_power** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 14
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MT_BW_20, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %12, %2
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = call i32 @mt7601u_bbp_rmw(%struct.mt7601u_dev* %19, i32 4, i32 32, i32 0)
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %22 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %21, i32 178, i32 255)
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %5, align 8
  %31 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %29, i64* %34, align 8
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %5, align 8
  %43 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  br label %78

47:                                               ; preds = %12
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %49 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %48, i32 4, i32 96)
  %50 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %51 = call i32 @mt7601u_bbp_wr(%struct.mt7601u_dev* %50, i32 178, i32 0)
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 2
  %60 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %5, align 8
  %61 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %59, i64* %64, align 8
  %65 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 2
  %73 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %5, align 8
  %74 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %47, %18
  ret void
}

declare dso_local i32 @mt7601u_bbp_rmw(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_bbp_wr(%struct.mt7601u_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
