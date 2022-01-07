; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.imx_ic_priv = type { i32, %struct.prp_priv* }
%struct.prp_priv = type { i32, i32, i32, i32, i32 }

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: stream %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @prp_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_ic_priv*, align 8
  %6 = alloca %struct.prp_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.imx_ic_priv* %9, %struct.imx_ic_priv** %5, align 8
  %10 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %11 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %10, i32 0, i32 1
  %12 = load %struct.prp_priv*, %struct.prp_priv** %11, align 8
  store %struct.prp_priv* %12, %struct.prp_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %14 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %17 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %22 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %27 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @EPIPE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %114

33:                                               ; preds = %25, %20
  %34 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %35 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %97

43:                                               ; preds = %33
  %44 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %45 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %59 = call i32 @prp_start(%struct.prp_priv* %58)
  store i32 %59, i32* %7, align 4
  br label %63

60:                                               ; preds = %43
  %61 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %62 = call i32 @prp_stop(%struct.prp_priv* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %114

67:                                               ; preds = %63
  %68 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %69 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @video, align 4
  %72 = load i32, i32* @s_stream, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @v4l2_subdev_call(i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ENOIOCTLCMD, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  br label %85

84:                                               ; preds = %77, %67
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %94 = call i32 @prp_stop(%struct.prp_priv* %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %114

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %42
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 -1
  %102 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %103 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %107 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %112 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %97
  br label %114

114:                                              ; preds = %113, %95, %66, %30
  %115 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %116 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @prp_start(%struct.prp_priv*) #1

declare dso_local i32 @prp_stop(%struct.prp_priv*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
