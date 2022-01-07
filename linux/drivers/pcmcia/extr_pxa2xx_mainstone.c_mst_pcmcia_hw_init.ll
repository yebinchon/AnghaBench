; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_mainstone.c_mst_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_mainstone.c_mst_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { %struct.max1600*, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.max1600 = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"bdetect\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adetect\00", align 1
@SOC_STAT_CD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"bbvd1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"abvd1\00", align 1
@SOC_STAT_BVD1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"bbvd2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"abvd2\00", align 1
@SOC_STAT_BVD2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"bready\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"aready\00", align 1
@SOC_STAT_RDY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"bvs1\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"avs1\00", align 1
@SOC_STAT_VS1 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"bvs2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"avs2\00", align 1
@SOC_STAT_VS2 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"breset\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"areset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@MAX1600_CHAN_B = common dso_local global i32 0, align 4
@MAX1600_CHAN_A = common dso_local global i32 0, align 4
@MAX1600_CODE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*)* @mst_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mst_pcmcia_hw_init(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max1600*, align 8
  %6 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  %7 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %8 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %13 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %18 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %19 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i64, i64* @SOC_STAT_CD, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %17, i8** %23, align 8
  %24 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %25 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %30 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %31 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i64, i64* @SOC_STAT_BVD1, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i8* %29, i8** %35, align 8
  %36 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %37 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %42 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %43 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* @SOC_STAT_BVD2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i8* %41, i8** %47, align 8
  %48 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %49 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %54 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %55 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %54, i32 0, i32 3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* @SOC_STAT_RDY, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* %53, i8** %59, align 8
  %60 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %61 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %66 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %67 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* @SOC_STAT_VS1, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i8* %65, i8** %71, align 8
  %72 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %73 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %78 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %79 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i64, i64* @SOC_STAT_VS2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i8* %77, i8** %83, align 8
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %86 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)
  %91 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %92 = call i32 @devm_gpiod_get(%struct.device* %84, i8* %90, i32 %91)
  %93 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %94 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %96 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %1
  %101 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %102 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %129

105:                                              ; preds = %1
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %108 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @MAX1600_CHAN_B, align 4
  br label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @MAX1600_CHAN_A, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load i32, i32* @MAX1600_CODE_HIGH, align 4
  %118 = call i32 @max1600_init(%struct.device* %106, %struct.max1600** %5, i32 %116, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %129

123:                                              ; preds = %115
  %124 = load %struct.max1600*, %struct.max1600** %5, align 8
  %125 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %126 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %125, i32 0, i32 0
  store %struct.max1600* %124, %struct.max1600** %126, align 8
  %127 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %128 = call i32 @soc_pcmcia_request_gpiods(%struct.soc_pcmcia_socket* %127)
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %123, %121, %100
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @max1600_init(%struct.device*, %struct.max1600**, i32, i32) #1

declare dso_local i32 @soc_pcmcia_request_gpiods(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
