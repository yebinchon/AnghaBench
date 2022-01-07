; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_tccb_add_dcw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_tccb_add_dcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcw = type { i32*, i8*, i32, i8*, i8* }
%struct.tccb = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dcw* @tccb_add_dcw(%struct.tccb* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.dcw*, align 8
  %9 = alloca %struct.tccb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dcw*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tccb* %0, %struct.tccb** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.tccb*, %struct.tccb** %9, align 8
  %20 = call i32 @tca_size(%struct.tccb* %19)
  store i32 %20, i32* %18, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = getelementptr i8, i8* %21, i64 40
  %23 = ptrtoint i8* %22 to i32
  %24 = call i32 @ALIGN(i32 %23, i32 4)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %18, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 4, %26
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = add i64 %30, 4
  %32 = load i64, i64* %10, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %7
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.dcw* @ERR_PTR(i32 %36)
  store %struct.dcw* %37, %struct.dcw** %8, align 8
  br label %79

38:                                               ; preds = %7
  %39 = load %struct.tccb*, %struct.tccb** %9, align 8
  %40 = getelementptr inbounds %struct.tccb, %struct.tccb* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = bitcast i32* %44 to %struct.dcw*
  store %struct.dcw* %45, %struct.dcw** %16, align 8
  %46 = load %struct.dcw*, %struct.dcw** %16, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @memset(%struct.dcw* %46, i32 0, i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.dcw*, %struct.dcw** %16, align 8
  %51 = getelementptr inbounds %struct.dcw, %struct.dcw* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.dcw*, %struct.dcw** %16, align 8
  %54 = getelementptr inbounds %struct.dcw, %struct.dcw* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.dcw*, %struct.dcw** %16, align 8
  %57 = getelementptr inbounds %struct.dcw, %struct.dcw* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.dcw*, %struct.dcw** %16, align 8
  %60 = getelementptr inbounds %struct.dcw, %struct.dcw* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %38
  %64 = load %struct.dcw*, %struct.dcw** %16, align 8
  %65 = getelementptr inbounds %struct.dcw, %struct.dcw* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @memcpy(i32* %67, i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %63, %38
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.tccb*, %struct.tccb** %9, align 8
  %74 = getelementptr inbounds %struct.tccb, %struct.tccb* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %72
  store i32 %77, i32* %75, align 8
  %78 = load %struct.dcw*, %struct.dcw** %16, align 8
  store %struct.dcw* %78, %struct.dcw** %8, align 8
  br label %79

79:                                               ; preds = %71, %34
  %80 = load %struct.dcw*, %struct.dcw** %8, align 8
  ret %struct.dcw* %80
}

declare dso_local i32 @tca_size(%struct.tccb*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.dcw* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.dcw*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
