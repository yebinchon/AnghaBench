; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_init_fim_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_init_fim_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_fim = type { i8**, i8**, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { i32 }

@FIM_NUM_CONTROLS = common dso_local global i32 0, align 4
@FIM_NUM_ICAP_CONTROLS = common dso_local global i32 0, align 4
@fim_ctrl = common dso_local global i32* null, align 8
@fim_icap_ctrl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_media_fim*)* @init_fim_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fim_controls(%struct.imx_media_fim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_media_fim*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx_media_fim* %0, %struct.imx_media_fim** %3, align 8
  %7 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %8 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %7, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %10 = load i32, i32* @FIM_NUM_CONTROLS, align 4
  %11 = load i32, i32* @FIM_NUM_ICAP_CONTROLS, align 4
  %12 = add nsw i32 %10, %11
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %9, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FIM_NUM_CONTROLS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %20 = load i32*, i32** @fim_ctrl, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %19, i32* %23, i32* null)
  %25 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %26 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %24, i8** %30, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FIM_NUM_ICAP_CONTROLS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %41 = load i32*, i32** @fim_icap_ctrl, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %40, i32* %44, i32* null)
  %46 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %47 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %75

64:                                               ; preds = %55
  %65 = load i32, i32* @FIM_NUM_CONTROLS, align 4
  %66 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %67 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = call i32 @v4l2_ctrl_cluster(i32 %65, i8** %68)
  %70 = load i32, i32* @FIM_NUM_ICAP_CONTROLS, align 4
  %71 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %72 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = call i32 @v4l2_ctrl_cluster(i32 %70, i8** %73)
  store i32 0, i32* %2, align 4
  br label %79

75:                                               ; preds = %60
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %77 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %64
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
