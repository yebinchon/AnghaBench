; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csi_priv = type { i32, i32, i32, i32, i32 }

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"stream ON\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stream OFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @csi_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csi_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.csi_priv* %8, %struct.csi_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %10 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %13 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %18 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EPIPE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %73

24:                                               ; preds = %16
  %25 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %26 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = icmp ne i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %56

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %39 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %43 = call i32 @csi_start(%struct.csi_priv* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %73

47:                                               ; preds = %37
  br label %55

48:                                               ; preds = %34
  %49 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %50 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %54 = call i32 @csi_stop(%struct.csi_priv* %53)
  br label %55

55:                                               ; preds = %48, %47
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 -1
  %61 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %62 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %66 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %71 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %56
  br label %73

73:                                               ; preds = %72, %46, %21
  %74 = load %struct.csi_priv*, %struct.csi_priv** %5, align 8
  %75 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @csi_start(%struct.csi_priv*) #1

declare dso_local i32 @csi_stop(%struct.csi_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
