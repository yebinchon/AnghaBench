; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_get_recording_class_AB.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_get_recording_class_AB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmlogrdr_get_recording_class_AB.cp_command = internal constant [25 x i8] c"QUERY COMMAND RECORDING \00", align 16
@.str = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmlogrdr_get_recording_class_AB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_get_recording_class_AB() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [80 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %7 = call i32 @cpcmd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @vmlogrdr_get_recording_class_AB.cp_command, i64 0, i64 0), i8* %6, i32 80, i32* null)
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %9 = call i32 @strnlen(i8* %8, i32 80)
  store i32 %9, i32* %4, align 4
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @strnchr(i8* %10, i32 %11, i8 signext 61)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %59

16:                                               ; preds = %0
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %19, i32 3)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %59

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %59

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %55, %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 65
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 66
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %39
  store i32 1, i32* %1, align 4
  br label %59

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %35

58:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %53, %27, %22, %15
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @cpcmd(i8*, i8*, i32, i32*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i8* @strnchr(i8*, i32, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
