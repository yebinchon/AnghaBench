; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.wilc = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.wilc_vif = type { %struct.wilc_priv }
%struct.wilc_priv = type { i64*, i32*, %struct.TYPE_4__**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i32, i64*)* @del_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_key(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.wilc*, align 8
  %12 = alloca %struct.wilc_vif*, align 8
  %13 = alloca %struct.wilc_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = call %struct.wilc* @wiphy_priv(%struct.wiphy* %14)
  store %struct.wilc* %15, %struct.wilc** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %16)
  store %struct.wilc_vif* %17, %struct.wilc_vif** %12, align 8
  %18 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %19 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %18, i32 0, i32 0
  store %struct.wilc_priv* %19, %struct.wilc_priv** %13, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = load %struct.wilc*, %struct.wilc** %11, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = icmp eq %struct.net_device* %20, %27
  br i1 %28, label %29, label %136

29:                                               ; preds = %5
  %30 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %31 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %82

37:                                               ; preds = %29
  %38 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %39 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @kfree(%struct.TYPE_4__* %45)
  %47 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %48 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %55 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @kfree(%struct.TYPE_4__* %61)
  %63 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %64 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %71 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @kfree(%struct.TYPE_4__* %75)
  %77 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %78 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %80
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %81, align 8
  br label %82

82:                                               ; preds = %37, %29
  %83 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %84 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %90, label %135

90:                                               ; preds = %82
  %91 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %92 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = call i32 @kfree(%struct.TYPE_4__* %98)
  %100 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %101 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %102, i64 %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %106, align 8
  %107 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %108 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = call i32 @kfree(%struct.TYPE_4__* %114)
  %116 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %117 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %118, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %122, align 8
  %123 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %124 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %125, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = call i32 @kfree(%struct.TYPE_4__* %128)
  %130 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %131 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %132, i64 %133
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %134, align 8
  br label %135

135:                                              ; preds = %90, %82
  br label %136

136:                                              ; preds = %135, %5
  %137 = load i64, i64* %8, align 8
  %138 = icmp ule i64 %137, 3
  br i1 %138, label %139, label %169

139:                                              ; preds = %136
  %140 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %141 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %139
  %148 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %149 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %155 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @memset(i32 %153, i32 0, i64 %159)
  %161 = load %struct.wilc_priv*, %struct.wilc_priv** %13, align 8
  %162 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* %8, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  store i64 0, i64* %165, align 8
  %166 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @wilc_remove_wep_key(%struct.wilc_vif* %166, i64 %167)
  br label %169

169:                                              ; preds = %147, %139, %136
  ret i32 0
}

declare dso_local %struct.wilc* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @wilc_remove_wep_key(%struct.wilc_vif*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
