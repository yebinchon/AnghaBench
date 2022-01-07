; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_write_bitbang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_write_bitbang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @rtl8225_write_bitbang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_write_bitbang(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8187_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %15, align 8
  store %struct.rtl8187_priv* %16, %struct.rtl8187_priv** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 15
  %21 = or i32 %18, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %24 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %22, i32* %26)
  %28 = and i32 %27, 65523
  store i32 %28, i32* %8, align 4
  %29 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %30 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %29, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, 7
  %42 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %35, i32* %39, i32 %41)
  %43 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %45 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @rtl818x_ioread16(%struct.rtl8187_priv* %43, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %50 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %51 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, 7
  %56 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %49, i32* %53, i32 %55)
  %57 = call i32 @udelay(i32 10)
  %58 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %59 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %60 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 4
  %65 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %58, i32* %62, i32 %64)
  %66 = call i32 @udelay(i32 2)
  %67 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %68 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %69 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %67, i32* %71, i32 %72)
  %74 = call i32 @udelay(i32 10)
  store i32 15, i32* %12, align 4
  br label %75

75:                                               ; preds = %127, %3
  %76 = load i32, i32* %12, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %130

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %83, %84
  %86 = or i32 %79, %85
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %92 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %93 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %91, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %78
  %99 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %100 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %101 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, 2
  %106 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %99, i32* %103, i32 %105)
  %107 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %108 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %109 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, 2
  %114 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %107, i32* %111, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %98
  %119 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %120 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %121 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %119, i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %118, %98
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %12, align 4
  br label %75

130:                                              ; preds = %75
  %131 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %132 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %133 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, 4
  %138 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %131, i32* %135, i32 %137)
  %139 = call i32 @udelay(i32 10)
  %140 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %141 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %142 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, 4
  %147 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %140, i32* %144, i32 %146)
  %148 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %149 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %150 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %148, i32* %152, i32 %153)
  ret void
}

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
