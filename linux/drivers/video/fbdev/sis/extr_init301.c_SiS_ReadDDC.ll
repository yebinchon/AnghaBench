; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_ReadDDC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_ReadDDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i16, i8*)* @SiS_ReadDDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_ReadDDC(%struct.SiS_Private* %0, i16 zeroext %1, i8* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8* %2, i8** %7, align 8
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i16 -1, i16* %4, align 2
  br label %100

17:                                               ; preds = %3
  store i16 0, i16* %8, align 2
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %19 = call i32 @SiS_SetSwitchDDC2(%struct.SiS_Private* %18)
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %21 = call i32 @SiS_PrepareDDC(%struct.SiS_Private* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %95, label %23

23:                                               ; preds = %17
  store i16 127, i16* %9, align 2
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i16 255, i16* %9, align 2
  br label %28

28:                                               ; preds = %27, %23
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i16 0, i16* %10, align 2
  br label %29

29:                                               ; preds = %65, %28
  %30 = load i16, i16* %10, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %9, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = call i64 @SiS_ReadDDC2Data(%struct.SiS_Private* %36)
  %38 = trunc i64 %37 to i8
  %39 = load i8*, i8** %7, align 8
  %40 = load i16, i16* %10, align 2
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = load i16, i16* %10, align 2
  %45 = zext i16 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %11, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = load i16, i16* %10, align 2
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %12, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %12, align 1
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %64 = call i32 @SiS_SendACK(%struct.SiS_Private* %63, i32 0)
  br label %65

65:                                               ; preds = %35
  %66 = load i16, i16* %10, align 2
  %67 = add i16 %66, 1
  store i16 %67, i16* %10, align 2
  br label %29

68:                                               ; preds = %29
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %70 = call i64 @SiS_ReadDDC2Data(%struct.SiS_Private* %69)
  %71 = trunc i64 %70 to i8
  %72 = load i8*, i8** %7, align 8
  %73 = load i16, i16* %10, align 2
  %74 = zext i16 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 %71, i8* %75, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = load i16, i16* %10, align 2
  %78 = zext i16 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %83, %81
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %11, align 1
  %86 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %87 = call i32 @SiS_SendACK(%struct.SiS_Private* %86, i32 1)
  %88 = load i8, i8* %12, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %68
  %91 = load i8, i8* %11, align 1
  %92 = zext i8 %91 to i16
  store i16 %92, i16* %8, align 2
  br label %94

93:                                               ; preds = %68
  store i16 -1, i16* %8, align 2
  br label %94

94:                                               ; preds = %93, %90
  br label %96

95:                                               ; preds = %17
  store i16 -1, i16* %8, align 2
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %98 = call i32 @SiS_SetStop(%struct.SiS_Private* %97)
  %99 = load i16, i16* %8, align 2
  store i16 %99, i16* %4, align 2
  br label %100

100:                                              ; preds = %96, %16
  %101 = load i16, i16* %4, align 2
  ret i16 %101
}

declare dso_local i32 @SiS_SetSwitchDDC2(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_PrepareDDC(%struct.SiS_Private*) #1

declare dso_local i64 @SiS_ReadDDC2Data(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SendACK(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_SetStop(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
