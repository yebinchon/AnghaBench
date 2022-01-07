; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_get_ipu_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_get_ipu_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.prp_priv = type { %struct.ipuv3_channel*, %struct.ipuv3_channel*, %struct.ipuv3_channel*, %struct.ipuv3_channel*, %struct.imx_ic_priv* }
%struct.ipuv3_channel = type { i32 }
%struct.imx_ic_priv = type { i32, i32, i32 }
%struct.ipu_ic = type opaque

@.str = private unnamed_addr constant [18 x i8] c"failed to get IC\0A\00", align 1
@prp_channel = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"could not get IDMAC channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prp_priv*)* @prp_get_ipu_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_get_ipu_resources(%struct.prp_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.prp_priv*, align 8
  %4 = alloca %struct.imx_ic_priv*, align 8
  %5 = alloca %struct.ipu_ic*, align 8
  %6 = alloca %struct.ipuv3_channel*, align 8
  %7 = alloca %struct.ipuv3_channel*, align 8
  %8 = alloca %struct.ipuv3_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %3, align 8
  %11 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %12 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %11, i32 0, i32 4
  %13 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %12, align 8
  store %struct.imx_ic_priv* %13, %struct.imx_ic_priv** %4, align 8
  %14 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %15 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %18 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.ipuv3_channel* @ipu_ic_get(i32 %19, i32 %20)
  %22 = bitcast %struct.ipuv3_channel* %21 to %struct.ipu_ic*
  store %struct.ipu_ic* %22, %struct.ipu_ic** %5, align 8
  %23 = load %struct.ipu_ic*, %struct.ipu_ic** %5, align 8
  %24 = bitcast %struct.ipu_ic* %23 to %struct.ipuv3_channel*
  %25 = call i64 @IS_ERR(%struct.ipuv3_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %29 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %28, i32 0, i32 1
  %30 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ipu_ic*, %struct.ipu_ic** %5, align 8
  %32 = bitcast %struct.ipu_ic* %31 to %struct.ipuv3_channel*
  %33 = call i32 @PTR_ERR(%struct.ipuv3_channel* %32)
  store i32 %33, i32* %9, align 4
  br label %126

34:                                               ; preds = %1
  %35 = load %struct.ipu_ic*, %struct.ipu_ic** %5, align 8
  %36 = bitcast %struct.ipu_ic* %35 to %struct.ipuv3_channel*
  %37 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %38 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %37, i32 0, i32 3
  store %struct.ipuv3_channel* %36, %struct.ipuv3_channel** %38, align 8
  %39 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %40 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prp_channel, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ipuv3_channel* @ipu_idmac_get(i32 %41, i32 %47)
  store %struct.ipuv3_channel* %48, %struct.ipuv3_channel** %6, align 8
  %49 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %50 = call i64 @IS_ERR(%struct.ipuv3_channel* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %34
  %53 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %54 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prp_channel, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %63 = call i32 @PTR_ERR(%struct.ipuv3_channel* %62)
  store i32 %63, i32* %9, align 4
  br label %126

64:                                               ; preds = %34
  %65 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %66 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %67 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %66, i32 0, i32 2
  store %struct.ipuv3_channel* %65, %struct.ipuv3_channel** %67, align 8
  %68 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %69 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prp_channel, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.ipuv3_channel* @ipu_idmac_get(i32 %70, i32 %76)
  store %struct.ipuv3_channel* %77, %struct.ipuv3_channel** %7, align 8
  %78 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %7, align 8
  %79 = call i64 @IS_ERR(%struct.ipuv3_channel* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %64
  %82 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %83 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prp_channel, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %7, align 8
  %92 = call i32 @PTR_ERR(%struct.ipuv3_channel* %91)
  store i32 %92, i32* %9, align 4
  br label %126

93:                                               ; preds = %64
  %94 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %7, align 8
  %95 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %96 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %95, i32 0, i32 1
  store %struct.ipuv3_channel* %94, %struct.ipuv3_channel** %96, align 8
  %97 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %98 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prp_channel, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.ipuv3_channel* @ipu_idmac_get(i32 %99, i32 %105)
  store %struct.ipuv3_channel* %106, %struct.ipuv3_channel** %8, align 8
  %107 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %8, align 8
  %108 = call i64 @IS_ERR(%struct.ipuv3_channel* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %93
  %111 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %112 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prp_channel, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %8, align 8
  %121 = call i32 @PTR_ERR(%struct.ipuv3_channel* %120)
  store i32 %121, i32* %9, align 4
  br label %126

122:                                              ; preds = %93
  %123 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %8, align 8
  %124 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %125 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %124, i32 0, i32 0
  store %struct.ipuv3_channel* %123, %struct.ipuv3_channel** %125, align 8
  store i32 0, i32* %2, align 4
  br label %130

126:                                              ; preds = %110, %81, %52, %27
  %127 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %128 = call i32 @prp_put_ipu_resources(%struct.prp_priv* %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.ipuv3_channel* @ipu_ic_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ipuv3_channel*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.ipuv3_channel*) #1

declare dso_local %struct.ipuv3_channel* @ipu_idmac_get(i32, i32) #1

declare dso_local i32 @prp_put_ipu_resources(%struct.prp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
