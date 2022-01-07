; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.vdic_priv = type { i32, i32, i32, i32, i64, i32 }

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: stream %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @vdic_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vdic_priv*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.vdic_priv* %9, %struct.vdic_priv** %5, align 8
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %11 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %14 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %19 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @EPIPE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %118

25:                                               ; preds = %17
  %26 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %27 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %32 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %33)
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %6, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %37 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = icmp ne i32 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %101

45:                                               ; preds = %35
  %46 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %47 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %61 = call i32 @vdic_start(%struct.vdic_priv* %60)
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %45
  %63 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %64 = call i32 @vdic_stop(%struct.vdic_priv* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %118

69:                                               ; preds = %65
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %71 = icmp ne %struct.v4l2_subdev* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %74 = load i32, i32* @video, align 4
  %75 = load i32, i32* @s_stream, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %73, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @ENOIOCTLCMD, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  br label %88

87:                                               ; preds = %80, %72
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %97 = call i32 @vdic_stop(%struct.vdic_priv* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %118

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %69
  br label %101

101:                                              ; preds = %100, %44
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 -1
  %106 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %107 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %111 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %116 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %101
  br label %118

118:                                              ; preds = %117, %98, %68, %22
  %119 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %120 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @vdic_start(%struct.vdic_priv*) #1

declare dso_local i32 @vdic_stop(%struct.vdic_priv*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
