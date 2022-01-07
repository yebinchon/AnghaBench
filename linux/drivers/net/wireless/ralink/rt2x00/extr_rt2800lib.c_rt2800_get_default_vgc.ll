; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_default_vgc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_default_vgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@RT3070 = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3290 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@RT3593 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@RT6352 = common dso_local global i32 0, align 4
@RT3883 = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_get_default_vgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_get_default_vgc(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %76

9:                                                ; preds = %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = load i32, i32* @RT3070, align 4
  %12 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %64, label %14

14:                                               ; preds = %9
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = load i32, i32* @RT3071, align 4
  %17 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %14
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = load i32, i32* @RT3090, align 4
  %22 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = load i32, i32* @RT3290, align 4
  %27 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %24
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = load i32, i32* @RT3390, align 4
  %32 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %29
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = load i32, i32* @RT3572, align 4
  %37 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %34
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = load i32, i32* @RT3593, align 4
  %42 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = load i32, i32* @RT5390, align 4
  %47 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load i32, i32* @RT5392, align 4
  %52 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = load i32, i32* @RT5592, align 4
  %57 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = load i32, i32* @RT6352, align 4
  %62 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59, %54, %49, %44, %39, %34, %29, %24, %19, %14, %9
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 28, %68
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %72 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 46, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %64
  br label %127

76:                                               ; preds = %1
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = load i32, i32* @RT3593, align 4
  %79 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %83 = load i32, i32* @RT3883, align 4
  %84 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81, %76
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 5
  %91 = sdiv i32 %90, 3
  %92 = add nsw i32 32, %91
  store i32 %92, i32* %3, align 4
  br label %126

93:                                               ; preds = %81
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %95 = load i32, i32* @RT5592, align 4
  %96 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 36, %102
  store i32 %103, i32* %3, align 4
  br label %125

104:                                              ; preds = %93
  %105 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %107 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %106, i32 0, i32 2
  %108 = call i32 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %104
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %113, 5
  %115 = sdiv i32 %114, 3
  %116 = add nsw i32 50, %115
  store i32 %116, i32* %3, align 4
  br label %124

117:                                              ; preds = %104
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %119 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %120, 5
  %122 = sdiv i32 %121, 3
  %123 = add nsw i32 58, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %110
  br label %125

125:                                              ; preds = %124, %98
  br label %126

126:                                              ; preds = %125, %86
  br label %127

127:                                              ; preds = %126, %75
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
