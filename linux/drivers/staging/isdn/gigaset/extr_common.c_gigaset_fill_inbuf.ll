; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_fill_inbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_fill_inbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"received %u bytes\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"buffer state: %u -> %u\00", align 1
@RBUFSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"buffer overflow (%u bytes lost)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"setting tail to %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_fill_inbuf(%struct.inbuf_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inbuf_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inbuf_t* %0, %struct.inbuf_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @DEBUG_INTR, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %21 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %24 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @DEBUG_INTR, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %72, %18
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = sub i32 %38, 1
  %40 = load i32, i32* %10, align 4
  %41 = sub i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %55

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @RBUFSIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %10, align 4
  %49 = sub i32 %47, %48
  store i32 %49, i32* %8, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @RBUFSIZE, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %60 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %94

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %74 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @memcpy(i64 %78, i8* %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %85, %86
  %88 = load i32, i32* @RBUFSIZE, align 4
  %89 = urem i32 %87, %88
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  br label %30

94:                                               ; preds = %58, %30
  %95 = load i32, i32* @DEBUG_INTR, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.inbuf_t*, %struct.inbuf_t** %5, align 8
  %100 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %101, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %94, %17
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
