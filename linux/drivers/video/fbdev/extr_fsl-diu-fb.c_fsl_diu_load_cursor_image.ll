; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_load_cursor_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_load_cursor_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { %struct.fsl_diu_data* }
%struct.fsl_diu_data = type { i32* }

@MAX_CURS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i8*, i32, i32, i32, i32)* @fsl_diu_load_cursor_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_diu_load_cursor_image(%struct.fb_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mfb_info*, align 8
  %14 = alloca %struct.fsl_diu_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = load %struct.mfb_info*, %struct.mfb_info** %23, align 8
  store %struct.mfb_info* %24, %struct.mfb_info** %13, align 8
  %25 = load %struct.mfb_info*, %struct.mfb_info** %13, align 8
  %26 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %25, i32 0, i32 0
  %27 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %26, align 8
  store %struct.fsl_diu_data* %27, %struct.fsl_diu_data** %14, align 8
  %28 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %14, align 8
  %29 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @cpu_to_le16(i32 %33)
  store i32 %34, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %76, %6
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  store i32 -2147483648, i32* %20, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @be32_to_cpup(i8* %40)
  store i32 %41, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %42

42:                                               ; preds = %63, %39
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %20, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %16, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %17, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %19, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %20, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %19, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %19, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load i32, i32* @MAX_CURS, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %15, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @DIV_ROUND_UP(i32 %71, i32 8)
  %73 = load i8*, i8** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr i8, i8* %73, i64 %74
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %18, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %18, align 4
  br label %35

79:                                               ; preds = %35
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @be32_to_cpup(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
