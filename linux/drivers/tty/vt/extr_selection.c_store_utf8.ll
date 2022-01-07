; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_selection.c_store_utf8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_selection.c_store_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @store_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_utf8(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  store i32 1, i32* %3, align 4
  br label %89

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2048
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 6
  %19 = or i32 192, %18
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 63
  %25 = or i32 128, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %28, align 1
  store i32 2, i32* %3, align 4
  br label %89

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 65536
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 12
  %35 = or i32 224, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 6
  %41 = and i32 %40, 63
  %42 = or i32 128, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 63
  %48 = or i32 128, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %49, i8* %51, align 1
  store i32 3, i32* %3, align 4
  br label %89

52:                                               ; preds = %29
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 1114112
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 18
  %58 = or i32 240, %57
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %59, i8* %61, align 1
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 12
  %64 = and i32 %63, 63
  %65 = or i32 128, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* %4, align 4
  %70 = ashr i32 %69, 6
  %71 = and i32 %70, 63
  %72 = or i32 128, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 63
  %78 = or i32 128, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 %79, i8* %81, align 1
  store i32 4, i32* %3, align 4
  br label %89

82:                                               ; preds = %52
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 -17, i8* %84, align 1
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8 -65, i8* %86, align 1
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 -67, i8* %88, align 1
  store i32 3, i32* %3, align 4
  br label %89

89:                                               ; preds = %82, %55, %32, %16, %8
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
