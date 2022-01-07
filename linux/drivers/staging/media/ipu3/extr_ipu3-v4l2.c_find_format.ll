; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_fmt = type { i64, i64 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@formats = common dso_local global %struct.imgu_fmt* null, align 8
@VID_CAPTURE = common dso_local global i64 0, align 8
@DEF_VID_CAPTURE = common dso_local global i64 0, align 8
@DEF_VID_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imgu_fmt* (%struct.v4l2_format*, i64)* @find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imgu_fmt* @find_format(%struct.v4l2_format* %0, i64 %1) #0 {
  %3 = alloca %struct.imgu_fmt*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %40, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.imgu_fmt*, %struct.imgu_fmt** @formats, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.imgu_fmt* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = load %struct.imgu_fmt*, %struct.imgu_fmt** @formats, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.imgu_fmt, %struct.imgu_fmt* %13, i64 %15
  %17 = getelementptr inbounds %struct.imgu_fmt, %struct.imgu_fmt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %12
  %26 = load %struct.imgu_fmt*, %struct.imgu_fmt** @formats, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.imgu_fmt, %struct.imgu_fmt* %26, i64 %28
  %30 = getelementptr inbounds %struct.imgu_fmt, %struct.imgu_fmt* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.imgu_fmt*, %struct.imgu_fmt** @formats, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.imgu_fmt, %struct.imgu_fmt* %35, i64 %37
  store %struct.imgu_fmt* %38, %struct.imgu_fmt** %3, align 8
  br label %57

39:                                               ; preds = %25, %12
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %7

43:                                               ; preds = %7
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @VID_CAPTURE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.imgu_fmt*, %struct.imgu_fmt** @formats, align 8
  %49 = load i64, i64* @DEF_VID_CAPTURE, align 8
  %50 = getelementptr inbounds %struct.imgu_fmt, %struct.imgu_fmt* %48, i64 %49
  br label %55

51:                                               ; preds = %43
  %52 = load %struct.imgu_fmt*, %struct.imgu_fmt** @formats, align 8
  %53 = load i64, i64* @DEF_VID_OUTPUT, align 8
  %54 = getelementptr inbounds %struct.imgu_fmt, %struct.imgu_fmt* %52, i64 %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi %struct.imgu_fmt* [ %50, %47 ], [ %54, %51 ]
  store %struct.imgu_fmt* %56, %struct.imgu_fmt** %3, align 8
  br label %57

57:                                               ; preds = %55, %34
  %58 = load %struct.imgu_fmt*, %struct.imgu_fmt** %3, align 8
  ret %struct.imgu_fmt* %58
}

declare dso_local i32 @ARRAY_SIZE(%struct.imgu_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
