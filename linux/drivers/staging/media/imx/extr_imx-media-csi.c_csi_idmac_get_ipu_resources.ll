; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_get_ipu_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_get_ipu_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i32, %struct.ipuv3_channel*, i32, i32, %struct.ipuv3_channel* }
%struct.ipuv3_channel = type { i32 }
%struct.ipu_smfc = type opaque

@IPUV3_CHANNEL_CSI0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to get SMFC\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not get IDMAC channel %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_priv*)* @csi_idmac_get_ipu_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_idmac_get_ipu_resources(%struct.csi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_smfc*, align 8
  %7 = alloca %struct.ipuv3_channel*, align 8
  store %struct.csi_priv* %0, %struct.csi_priv** %3, align 8
  %8 = load i32, i32* @IPUV3_CHANNEL_CSI0, align 4
  %9 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %10 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %14 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.ipuv3_channel* @ipu_smfc_get(i32 %15, i32 %16)
  %18 = bitcast %struct.ipuv3_channel* %17 to %struct.ipu_smfc*
  store %struct.ipu_smfc* %18, %struct.ipu_smfc** %6, align 8
  %19 = load %struct.ipu_smfc*, %struct.ipu_smfc** %6, align 8
  %20 = bitcast %struct.ipu_smfc* %19 to %struct.ipuv3_channel*
  %21 = call i64 @IS_ERR(%struct.ipuv3_channel* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %25 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %24, i32 0, i32 2
  %26 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ipu_smfc*, %struct.ipu_smfc** %6, align 8
  %28 = bitcast %struct.ipu_smfc* %27 to %struct.ipuv3_channel*
  %29 = call i32 @PTR_ERR(%struct.ipuv3_channel* %28)
  store i32 %29, i32* %5, align 4
  br label %54

30:                                               ; preds = %1
  %31 = load %struct.ipu_smfc*, %struct.ipu_smfc** %6, align 8
  %32 = bitcast %struct.ipu_smfc* %31 to %struct.ipuv3_channel*
  %33 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %34 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %33, i32 0, i32 4
  store %struct.ipuv3_channel* %32, %struct.ipuv3_channel** %34, align 8
  %35 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %36 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.ipuv3_channel* @ipu_idmac_get(i32 %37, i32 %38)
  store %struct.ipuv3_channel* %39, %struct.ipuv3_channel** %7, align 8
  %40 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %7, align 8
  %41 = call i64 @IS_ERR(%struct.ipuv3_channel* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %45 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.ipuv3_channel* %48)
  store i32 %49, i32* %5, align 4
  br label %54

50:                                               ; preds = %30
  %51 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %7, align 8
  %52 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %53 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %52, i32 0, i32 1
  store %struct.ipuv3_channel* %51, %struct.ipuv3_channel** %53, align 8
  store i32 0, i32* %2, align 4
  br label %58

54:                                               ; preds = %43, %23
  %55 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %56 = call i32 @csi_idmac_put_ipu_resources(%struct.csi_priv* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.ipuv3_channel* @ipu_smfc_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ipuv3_channel*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.ipuv3_channel*) #1

declare dso_local %struct.ipuv3_channel* @ipu_idmac_get(i32, i32) #1

declare dso_local i32 @csi_idmac_put_ipu_resources(%struct.csi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
