; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_message_show_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_message_show_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @message_show_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_show_helper(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %39, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = icmp ule i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %44

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @spk_msg_get(i32 %28)
  %30 = call i32 @scnprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %16

44:                                               ; preds = %23, %16
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
