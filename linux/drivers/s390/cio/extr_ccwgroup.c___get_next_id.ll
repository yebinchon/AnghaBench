; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c___get_next_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c___get_next_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_dev_id = type { i32, i32 }

@CCW_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%2x.%1x.%04x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.ccw_dev_id*)* @__get_next_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_next_id(i8** %0, %struct.ccw_dev_id* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.ccw_dev_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.ccw_dev_id* %1, %struct.ccw_dev_id** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 44)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %10, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 10)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = add nsw i64 %34, 1
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %29, %25
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @CCW_BUS_ID_SIZE, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %43
  br label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %4, align 8
  %60 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %4, align 8
  %63 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %54
  %65 = load i8*, i8** %11, align 8
  %66 = load i8**, i8*** %3, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
