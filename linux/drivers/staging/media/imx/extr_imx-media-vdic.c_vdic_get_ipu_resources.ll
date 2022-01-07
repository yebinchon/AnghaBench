; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_get_ipu_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_get_ipu_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdic_priv = type { i32, %struct.ipuv3_channel*, i32, %struct.ipuv3_channel*, %struct.ipuv3_channel*, i32, %struct.ipuv3_channel* }
%struct.ipuv3_channel = type { i32 }
%struct.ipu_vdi = type opaque

@.str = private unnamed_addr constant [20 x i8] c"failed to get VDIC\0A\00", align 1
@IPUV3_CHANNEL_MEM_VDI_PREV = common dso_local global i32 0, align 4
@IPUV3_CHANNEL_MEM_VDI_CUR = common dso_local global i32 0, align 4
@IPUV3_CHANNEL_MEM_VDI_NEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not get IDMAC channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdic_priv*)* @vdic_get_ipu_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_get_ipu_resources(%struct.vdic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdic_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipuv3_channel*, align 8
  %7 = alloca %struct.ipu_vdi*, align 8
  store %struct.vdic_priv* %0, %struct.vdic_priv** %3, align 8
  %8 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %9 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ipuv3_channel* @ipu_vdi_get(i32 %10)
  %12 = bitcast %struct.ipuv3_channel* %11 to %struct.ipu_vdi*
  store %struct.ipu_vdi* %12, %struct.ipu_vdi** %7, align 8
  %13 = load %struct.ipu_vdi*, %struct.ipu_vdi** %7, align 8
  %14 = bitcast %struct.ipu_vdi* %13 to %struct.ipuv3_channel*
  %15 = call i64 @IS_ERR(%struct.ipuv3_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %19 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ipu_vdi*, %struct.ipu_vdi** %7, align 8
  %22 = bitcast %struct.ipu_vdi* %21 to %struct.ipuv3_channel*
  %23 = call i32 @PTR_ERR(%struct.ipuv3_channel* %22)
  store i32 %23, i32* %4, align 4
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.ipu_vdi*, %struct.ipu_vdi** %7, align 8
  %26 = bitcast %struct.ipu_vdi* %25 to %struct.ipuv3_channel*
  %27 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %28 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %27, i32 0, i32 6
  store %struct.ipuv3_channel* %26, %struct.ipuv3_channel** %28, align 8
  %29 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %30 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %82, label %33

33:                                               ; preds = %24
  %34 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %35 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IPUV3_CHANNEL_MEM_VDI_PREV, align 4
  %38 = call %struct.ipuv3_channel* @ipu_idmac_get(i32 %36, i32 %37)
  store %struct.ipuv3_channel* %38, %struct.ipuv3_channel** %6, align 8
  %39 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %40 = call i64 @IS_ERR(%struct.ipuv3_channel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @IPUV3_CHANNEL_MEM_VDI_PREV, align 4
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %45 = call i32 @PTR_ERR(%struct.ipuv3_channel* %44)
  store i32 %45, i32* %4, align 4
  br label %83

46:                                               ; preds = %33
  %47 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %48 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %49 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %48, i32 0, i32 4
  store %struct.ipuv3_channel* %47, %struct.ipuv3_channel** %49, align 8
  %50 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %51 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IPUV3_CHANNEL_MEM_VDI_CUR, align 4
  %54 = call %struct.ipuv3_channel* @ipu_idmac_get(i32 %52, i32 %53)
  store %struct.ipuv3_channel* %54, %struct.ipuv3_channel** %6, align 8
  %55 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %56 = call i64 @IS_ERR(%struct.ipuv3_channel* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* @IPUV3_CHANNEL_MEM_VDI_CUR, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %61 = call i32 @PTR_ERR(%struct.ipuv3_channel* %60)
  store i32 %61, i32* %4, align 4
  br label %83

62:                                               ; preds = %46
  %63 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %64 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %65 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %64, i32 0, i32 3
  store %struct.ipuv3_channel* %63, %struct.ipuv3_channel** %65, align 8
  %66 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %67 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IPUV3_CHANNEL_MEM_VDI_NEXT, align 4
  %70 = call %struct.ipuv3_channel* @ipu_idmac_get(i32 %68, i32 %69)
  store %struct.ipuv3_channel* %70, %struct.ipuv3_channel** %6, align 8
  %71 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %72 = call i64 @IS_ERR(%struct.ipuv3_channel* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load i32, i32* @IPUV3_CHANNEL_MEM_VDI_NEXT, align 4
  store i32 %75, i32* %5, align 4
  %76 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %77 = call i32 @PTR_ERR(%struct.ipuv3_channel* %76)
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %62
  %79 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %80 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %81 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %80, i32 0, i32 1
  store %struct.ipuv3_channel* %79, %struct.ipuv3_channel** %81, align 8
  br label %82

82:                                               ; preds = %78, %24
  store i32 0, i32* %2, align 4
  br label %92

83:                                               ; preds = %74, %58, %42
  %84 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %85 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %17
  %89 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %90 = call i32 @vdic_put_ipu_resources(%struct.vdic_priv* %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.ipuv3_channel* @ipu_vdi_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.ipuv3_channel*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.ipuv3_channel*) #1

declare dso_local %struct.ipuv3_channel* @ipu_idmac_get(i32, i32) #1

declare dso_local i32 @vdic_put_ipu_resources(%struct.vdic_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
