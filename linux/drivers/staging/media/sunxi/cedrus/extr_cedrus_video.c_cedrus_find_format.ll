; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_format = type { i32, i64, i64 }

@CEDRUS_FORMATS_COUNT = common dso_local global i32 0, align 4
@cedrus_formats = common dso_local global %struct.cedrus_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cedrus_format* (i64, i64, i32)* @cedrus_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cedrus_format* @cedrus_find_format(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.cedrus_format*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cedrus_format*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %49, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @CEDRUS_FORMATS_COUNT, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load %struct.cedrus_format*, %struct.cedrus_format** @cedrus_formats, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %15, i64 %17
  store %struct.cedrus_format* %18, %struct.cedrus_format** %8, align 8
  %19 = load %struct.cedrus_format*, %struct.cedrus_format** %8, align 8
  %20 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load %struct.cedrus_format*, %struct.cedrus_format** %8, align 8
  %25 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.cedrus_format*, %struct.cedrus_format** %8, align 8
  %30 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %49

34:                                               ; preds = %23, %14
  %35 = load %struct.cedrus_format*, %struct.cedrus_format** %8, align 8
  %36 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.cedrus_format*, %struct.cedrus_format** %8, align 8
  %42 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %52

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %10

52:                                               ; preds = %47, %10
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @CEDRUS_FORMATS_COUNT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store %struct.cedrus_format* null, %struct.cedrus_format** %4, align 8
  br label %62

57:                                               ; preds = %52
  %58 = load %struct.cedrus_format*, %struct.cedrus_format** @cedrus_formats, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %58, i64 %60
  store %struct.cedrus_format* %61, %struct.cedrus_format** %4, align 8
  br label %62

62:                                               ; preds = %57, %56
  %63 = load %struct.cedrus_format*, %struct.cedrus_format** %4, align 8
  ret %struct.cedrus_format* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
