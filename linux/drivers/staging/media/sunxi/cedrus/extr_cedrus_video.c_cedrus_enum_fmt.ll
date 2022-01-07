; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_format = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.cedrus_ctx = type { %struct.cedrus_dev* }
%struct.cedrus_dev = type { i32 }

@CEDRUS_FORMATS_COUNT = common dso_local global i32 0, align 4
@cedrus_formats = common dso_local global %struct.cedrus_format* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.v4l2_fmtdesc*, i32)* @cedrus_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_enum_fmt(%struct.file* %0, %struct.v4l2_fmtdesc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.v4l2_fmtdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cedrus_ctx*, align 8
  %9 = alloca %struct.cedrus_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cedrus_format*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.v4l2_fmtdesc* %1, %struct.v4l2_fmtdesc** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file* %14)
  store %struct.cedrus_ctx* %15, %struct.cedrus_ctx** %8, align 8
  %16 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %16, i32 0, i32 0
  %18 = load %struct.cedrus_dev*, %struct.cedrus_dev** %17, align 8
  store %struct.cedrus_dev* %18, %struct.cedrus_dev** %9, align 8
  %19 = load %struct.cedrus_dev*, %struct.cedrus_dev** %9, align 8
  %20 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %67, %3
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @CEDRUS_FORMATS_COUNT, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %22
  %27 = load %struct.cedrus_format*, %struct.cedrus_format** @cedrus_formats, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %27, i64 %29
  store %struct.cedrus_format* %30, %struct.cedrus_format** %11, align 8
  %31 = load %struct.cedrus_format*, %struct.cedrus_format** %11, align 8
  %32 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.cedrus_format*, %struct.cedrus_format** %11, align 8
  %37 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.cedrus_format*, %struct.cedrus_format** %11, align 8
  %42 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %67

46:                                               ; preds = %35, %26
  %47 = load %struct.cedrus_format*, %struct.cedrus_format** @cedrus_formats, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %47, i64 %49
  %51 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %67

57:                                               ; preds = %46
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %70

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %64, %56, %45
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %22

70:                                               ; preds = %63, %22
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @CEDRUS_FORMATS_COUNT, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.cedrus_format*, %struct.cedrus_format** @cedrus_formats, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %75, i64 %77
  %79 = getelementptr inbounds %struct.cedrus_format, %struct.cedrus_format* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %4, align 4
  br label %86

83:                                               ; preds = %70
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %74
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
