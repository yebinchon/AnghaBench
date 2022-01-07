; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { i32, i32 }
%struct.imgu_device = type { i32 }

@IMGU_MAX_PIPE_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imgu_css_cleanup(%struct.imgu_css* %0) #0 {
  %2 = alloca %struct.imgu_css*, align 8
  %3 = alloca %struct.imgu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %2, align 8
  %5 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %6 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.imgu_device* @dev_get_drvdata(i32 %7)
  store %struct.imgu_device* %8, %struct.imgu_device** %3, align 8
  %9 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %10 = call i32 @imgu_css_stop_streaming(%struct.imgu_css* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IMGU_MAX_PIPE_NUM, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @imgu_css_pipe_cleanup(%struct.imgu_css* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %24 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %25 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %24, i32 0, i32 0
  %26 = call i32 @imgu_dmamap_free(%struct.imgu_device* %23, i32* %25)
  %27 = load %struct.imgu_css*, %struct.imgu_css** %2, align 8
  %28 = call i32 @imgu_css_fw_cleanup(%struct.imgu_css* %27)
  ret void
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @imgu_css_stop_streaming(%struct.imgu_css*) #1

declare dso_local i32 @imgu_css_pipe_cleanup(%struct.imgu_css*, i32) #1

declare dso_local i32 @imgu_dmamap_free(%struct.imgu_device*, i32*) #1

declare dso_local i32 @imgu_css_fw_cleanup(%struct.imgu_css*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
