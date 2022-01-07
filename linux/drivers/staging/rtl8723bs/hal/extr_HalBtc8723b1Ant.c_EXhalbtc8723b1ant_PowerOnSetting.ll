; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_PowerOnSetting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_PowerOnSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32)*, i64, i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i8* }

@BIT0 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BTC_INTF_USB = common dso_local global i64 0, align 8
@BTC_ANTENNA_AT_AUX_PORT = common dso_local global i8* null, align 8
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i8* null, align 8
@BTC_INTF_PCI = common dso_local global i64 0, align 8
@BTC_INTF_SDIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_PowerOnSetting(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 6
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %10 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %9, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = call i32 %10(%struct.TYPE_15__* %11, i32 103, i32 32)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = call i32 %15(%struct.TYPE_15__* %16, i32 2)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 5
  %20 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BIT0, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BIT1, align 4
  %26 = or i32 %24, %25
  %27 = call i32 %20(%struct.TYPE_15__* %21, i32 2, i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %29, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = call i32 %30(%struct.TYPE_15__* %31, i32 1893, i32 24)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 4
  %35 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = call i32 %35(%struct.TYPE_15__* %36, i32 1902, i32 4)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTC_INTF_USB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %1
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = call i32 %46(%struct.TYPE_15__* %47, i32 2376, i32 0)
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 %53(%struct.TYPE_15__* %54, i32 65032, i32 %55)
  %57 = load i8*, i8** @BTC_ANTENNA_AT_AUX_PORT, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %119

60:                                               ; preds = %1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %67, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = call i32 %68(%struct.TYPE_15__* %69, i32 2376, i32 640)
  %71 = load i8*, i8** @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %91

74:                                               ; preds = %60
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = call i32 %82(%struct.TYPE_15__* %83, i32 2376, i32 0)
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load i8*, i8** @BTC_ANTENNA_AT_AUX_PORT, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %79, %74
  br label %91

91:                                               ; preds = %90, %65
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BTC_INTF_PCI, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 %100(%struct.TYPE_15__* %101, i32 900, i32 %102)
  br label %118

104:                                              ; preds = %91
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BTC_INTF_SDIO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 %113(%struct.TYPE_15__* %114, i32 96, i32 %115)
  br label %117

117:                                              ; preds = %110, %104
  br label %118

118:                                              ; preds = %117, %97
  br label %119

119:                                              ; preds = %118, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
