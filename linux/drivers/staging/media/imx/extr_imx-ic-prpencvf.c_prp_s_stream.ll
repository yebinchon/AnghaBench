; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.imx_ic_priv = type { i32, %struct.prp_priv* }
%struct.prp_priv = type { i32, i32, i32, i32 }

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: stream %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
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
  %17 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %22 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EPIPE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %80

28:                                               ; preds = %20
  %29 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %30 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %63

38:                                               ; preds = %28
  %39 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %40 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %54 = call i32 @prp_start(%struct.prp_priv* %53)
  store i32 %54, i32* %7, align 4
  br label %58

55:                                               ; preds = %38
  %56 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %57 = call i32 @prp_stop(%struct.prp_priv* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %80

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 -1
  %68 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %69 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %73 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %78 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %63
  br label %80

80:                                               ; preds = %79, %61, %25
  %81 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %82 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.imx_ic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @prp_start(%struct.prp_priv*) #1

declare dso_local i32 @prp_stop(%struct.prp_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
