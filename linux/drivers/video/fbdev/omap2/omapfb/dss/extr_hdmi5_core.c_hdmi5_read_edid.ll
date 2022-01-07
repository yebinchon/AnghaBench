; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5_core.c_hdmi5_read_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5_core.c_hdmi5_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_core_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi5_read_edid(%struct.hdmi_core_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_core_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdmi_core_data* %0, %struct.hdmi_core_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 128
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %22 = call i32 @hdmi_core_ddc_init(%struct.hdmi_core_data* %21)
  %23 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @hdmi_core_ddc_edid(%struct.hdmi_core_data* %23, i32* %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %61

29:                                               ; preds = %20
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 126
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %29
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EDID_LENGTH, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @hdmi_core_ddc_edid(%struct.hdmi_core_data* %44, i32* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %61

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %55, %28
  %62 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %63 = call i32 @hdmi_core_ddc_uninit(%struct.hdmi_core_data* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @hdmi_core_ddc_init(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_core_ddc_edid(%struct.hdmi_core_data*, i32*, i32) #1

declare dso_local i32 @hdmi_core_ddc_uninit(%struct.hdmi_core_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
