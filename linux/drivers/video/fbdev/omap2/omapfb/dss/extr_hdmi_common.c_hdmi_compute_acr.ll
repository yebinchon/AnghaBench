; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_common.c_hdmi_compute_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_common.c_hdmi_compute_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_compute_acr(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %110

20:                                               ; preds = %14
  store i32 100, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %51 [
    i32 32000, label %22
    i32 48000, label %22
    i32 96000, label %22
    i32 192000, label %22
    i32 44100, label %42
    i32 88200, label %42
    i32 176400, label %42
  ]

22:                                               ; preds = %20, %20, %20, %20
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 125
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 27027000
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 74250000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  store i32 1, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 150
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 27027000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %33
  br label %54

42:                                               ; preds = %20, %20, %20
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 125
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 27027000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49, %42
  br label %54

51:                                               ; preds = %20
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %110

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  switch i32 %58, label %73 [
    i32 32000, label %59
    i32 44100, label %61
    i32 48000, label %63
    i32 88200, label %65
    i32 96000, label %67
    i32 176400, label %69
    i32 192000, label %71
  ]

59:                                               ; preds = %57
  %60 = load i32*, i32** %8, align 8
  store i32 8192, i32* %60, align 4
  br label %76

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  store i32 12544, i32* %62, align 4
  br label %76

63:                                               ; preds = %57
  %64 = load i32*, i32** %8, align 8
  store i32 8192, i32* %64, align 4
  br label %76

65:                                               ; preds = %57
  %66 = load i32*, i32** %8, align 8
  store i32 25088, i32* %66, align 4
  br label %76

67:                                               ; preds = %57
  %68 = load i32*, i32** %8, align 8
  store i32 16384, i32* %68, align 4
  br label %76

69:                                               ; preds = %57
  %70 = load i32*, i32** %8, align 8
  store i32 50176, i32* %70, align 4
  br label %76

71:                                               ; preds = %57
  %72 = load i32*, i32** %8, align 8
  store i32 32768, i32* %72, align 4
  br label %76

73:                                               ; preds = %57
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %110

76:                                               ; preds = %71, %69, %67, %65, %63, %61, %59
  br label %97

77:                                               ; preds = %54
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %93 [
    i32 32000, label %79
    i32 44100, label %81
    i32 48000, label %83
    i32 88200, label %85
    i32 96000, label %87
    i32 176400, label %89
    i32 192000, label %91
  ]

79:                                               ; preds = %77
  %80 = load i32*, i32** %8, align 8
  store i32 4096, i32* %80, align 4
  br label %96

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  store i32 6272, i32* %82, align 4
  br label %96

83:                                               ; preds = %77
  %84 = load i32*, i32** %8, align 8
  store i32 6144, i32* %84, align 4
  br label %96

85:                                               ; preds = %77
  %86 = load i32*, i32** %8, align 8
  store i32 12544, i32* %86, align 4
  br label %96

87:                                               ; preds = %77
  %88 = load i32*, i32** %8, align 8
  store i32 12288, i32* %88, align 4
  br label %96

89:                                               ; preds = %77
  %90 = load i32*, i32** %8, align 8
  store i32 25088, i32* %90, align 4
  br label %96

91:                                               ; preds = %77
  %92 = load i32*, i32** %8, align 8
  store i32 24576, i32* %92, align 4
  br label %96

93:                                               ; preds = %77
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %110

96:                                               ; preds = %91, %89, %87, %85, %83, %81, %79
  br label %97

97:                                               ; preds = %96, %76
  %98 = load i32, i32* %6, align 4
  %99 = sdiv i32 %98, 1000
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 128
  %103 = mul nsw i32 %99, %102
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = sdiv i32 %106, 10
  %108 = sdiv i32 %105, %107
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %97, %93, %73, %51, %17
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
