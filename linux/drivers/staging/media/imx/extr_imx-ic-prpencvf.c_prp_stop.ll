; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.imx_ic_priv* }
%struct.imx_ic_priv = type { i32, i32 }

@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wait last EOF timeout\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"upstream stream off failed: %d\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prp_priv*)* @prp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prp_stop(%struct.prp_priv* %0) #0 {
  %2 = alloca %struct.prp_priv*, align 8
  %3 = alloca %struct.imx_ic_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %2, align 8
  %6 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %7 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %6, i32 0, i32 8
  %8 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %7, align 8
  store %struct.imx_ic_priv* %8, %struct.imx_ic_priv** %3, align 8
  %9 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %10 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %9, i32 0, i32 7
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %14 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %16 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %15, i32 0, i32 7
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %20 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %19, i32 0, i32 6
  %21 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %22 = call i32 @msecs_to_jiffies(i32 %21)
  %23 = call i32 @wait_for_completion_timeout(i32* %20, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %28 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %27, i32 0, i32 1
  %29 = call i32 (i32*, i8*, ...) @v4l2_warn(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %32 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @video, align 4
  %35 = load i32, i32* @s_stream, align 4
  %36 = call i32 @v4l2_subdev_call(i32 %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ENOIOCTLCMD, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %46 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32*, i8*, ...) @v4l2_warn(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %39, %30
  %50 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %51 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %54 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %57 = call i32 @devm_free_irq(i32 %52, i32 %55, %struct.prp_priv* %56)
  %58 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %59 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %62 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %65 = call i32 @devm_free_irq(i32 %60, i32 %63, %struct.prp_priv* %64)
  %66 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %67 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %68 = call i32 @prp_unsetup(%struct.prp_priv* %66, i32 %67)
  %69 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %70 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %73 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %72, i32 0, i32 2
  %74 = call i32 @imx_media_free_dma_buf(i32 %71, i32* %73)
  %75 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %76 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %75, i32 0, i32 1
  %77 = call i32 @del_timer_sync(i32* %76)
  %78 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %79 = call i32 @prp_put_ipu_resources(%struct.prp_priv* %78)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, ...) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.prp_priv*) #1

declare dso_local i32 @prp_unsetup(%struct.prp_priv*, i32) #1

declare dso_local i32 @imx_media_free_dma_buf(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @prp_put_ipu_resources(%struct.prp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
