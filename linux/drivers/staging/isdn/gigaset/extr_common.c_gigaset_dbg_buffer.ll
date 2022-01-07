; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_dbg_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_dbg_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"%s (%u bytes): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_dbg_buffer(i32 %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 79, i64* %11, align 8
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  store i8* %14, i8** %12, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %13, align 8
  br label %16

16:                                               ; preds = %85, %4
  %17 = load i64, i64* %13, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %13, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %89

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %10, align 1
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 126
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 94
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %27, %20
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %11, align 8
  %38 = icmp ne i64 %36, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %89

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %12, align 8
  store i8 92, i8* %41, align 1
  br label %43

43:                                               ; preds = %40, %31
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %11, align 8
  %51 = icmp ne i64 %49, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %89

53:                                               ; preds = %48
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  store i8 126, i8* %54, align 1
  %56 = load i8, i8* %10, align 1
  %57 = zext i8 %56 to i32
  %58 = xor i32 %57, 128
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %10, align 1
  br label %60

60:                                               ; preds = %53, %43
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 32
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8, i8* %10, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 127
  br i1 %67, label %68, label %80

68:                                               ; preds = %64, %60
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %11, align 8
  %71 = icmp ne i64 %69, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %89

73:                                               ; preds = %68
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  store i8 94, i8* %74, align 1
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, 64
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %10, align 1
  br label %80

80:                                               ; preds = %73, %64
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %11, align 8
  %83 = icmp ne i64 %81, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %89

85:                                               ; preds = %80
  %86 = load i8, i8* %10, align 1
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %12, align 8
  store i8 %86, i8* %87, align 1
  br label %16

89:                                               ; preds = %84, %72, %52, %39, %16
  %90 = load i8*, i8** %12, align 8
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %5, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %96 = call i32 @gig_dbg(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %92, i32 %94, i8* %95)
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
