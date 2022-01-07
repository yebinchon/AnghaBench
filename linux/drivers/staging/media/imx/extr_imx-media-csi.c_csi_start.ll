; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i64, i64, i32, i64, i32, i32, %struct.v4l2_fract* }
%struct.v4l2_fract = type { i32 }

@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@IPU_CSI_DEST_IDMAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"CSI enable error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_priv*)* @csi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_start(%struct.csi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi_priv*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %3, align 8
  %6 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %7 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %6, i32 0, i32 6
  %8 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %9 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %10 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %8, i64 %11
  store %struct.v4l2_fract* %12, %struct.v4l2_fract** %4, align 8
  %13 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %14 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @video, align 4
  %17 = load i32, i32* @s_stream, align 4
  %18 = call i32 @v4l2_subdev_call(i32 %15, i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ENOIOCTLCMD, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  br label %29

28:                                               ; preds = %21, %1
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %123

35:                                               ; preds = %29
  %36 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %37 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IPU_CSI_DEST_IDMAC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %43 = call i32 @csi_idmac_start(%struct.csi_priv* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %115

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %50 = call i32 @csi_setup(%struct.csi_priv* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %105

54:                                               ; preds = %48
  %55 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %56 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %61 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IPU_CSI_DEST_IDMAC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %67 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %70 = call i32 @imx_media_fim_set_stream(i64 %68, %struct.v4l2_fract* %69, i32 1)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %105

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %59, %54
  %76 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %77 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ipu_csi_enable(i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %84 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %83, i32 0, i32 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @v4l2_err(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %88

87:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %123

88:                                               ; preds = %82
  %89 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %90 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %95 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IPU_CSI_DEST_IDMAC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %101 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @imx_media_fim_set_stream(i64 %102, %struct.v4l2_fract* null, i32 0)
  br label %104

104:                                              ; preds = %99, %93, %88
  br label %105

105:                                              ; preds = %104, %73, %53
  %106 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %107 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IPU_CSI_DEST_IDMAC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %113 = call i32 @csi_idmac_stop(%struct.csi_priv* %112)
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %46
  %116 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %117 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @video, align 4
  %120 = load i32, i32* @s_stream, align 4
  %121 = call i32 @v4l2_subdev_call(i32 %118, i32 %119, i32 %120, i32 0)
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %115, %87, %33
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @csi_idmac_start(%struct.csi_priv*) #1

declare dso_local i32 @csi_setup(%struct.csi_priv*) #1

declare dso_local i32 @imx_media_fim_set_stream(i64, %struct.v4l2_fract*, i32) #1

declare dso_local i32 @ipu_csi_enable(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @csi_idmac_stop(%struct.csi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
