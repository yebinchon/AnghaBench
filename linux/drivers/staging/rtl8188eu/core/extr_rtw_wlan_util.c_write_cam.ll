; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_write_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_write_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@HW_VAR_CAM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_cam(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 3
  store i32 %17, i32* %13, align 4
  store i32 5, i32* %14, align 4
  br label %18

18:                                               ; preds = %98, %5
  %19 = load i32, i32* %14, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %18
  %22 = load i32, i32* %14, align 4
  switch i32 %22, label %54 [
    i32 0, label %23
    i32 1, label %35
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %24, %28
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = or i32 %29, %33
  store i32 %34, i32* %12, align 4
  br label %87

35:                                               ; preds = %21
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %43, %47
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 24
  %53 = or i32 %48, %52
  store i32 %53, i32* %12, align 4
  br label %87

54:                                               ; preds = %21
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %55, 2
  %57 = shl i32 %56, 2
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = or i32 %62, %69
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 2
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %70, %77
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 3
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 24
  %86 = or i32 %78, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %54, %35, %23
  %88 = load i32, i32* %12, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = add i32 %90, %91
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.adapter*, %struct.adapter** %6, align 8
  %95 = load i32, i32* @HW_VAR_CAM_WRITE, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %97 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %94, i32 %95, i32* %96)
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %14, align 4
  br label %18

101:                                              ; preds = %18
  ret void
}

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
