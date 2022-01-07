; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_convert_to_sfm_char.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_convert_to_sfm_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFM_COLON = common dso_local global i8 0, align 1
@SFM_DOUBLEQUOTE = common dso_local global i8 0, align 1
@SFM_ASTERISK = common dso_local global i8 0, align 1
@SFM_QUESTION = common dso_local global i8 0, align 1
@SFM_LESSTHAN = common dso_local global i8 0, align 1
@SFM_GRTRTHAN = common dso_local global i8 0, align 1
@SFM_PIPE = common dso_local global i8 0, align 1
@SFM_PERIOD = common dso_local global i8 0, align 1
@SFM_SPACE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @convert_to_sfm_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_sfm_char(i8 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sle i32 %12, 31
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %16, 61440
  %18 = trunc i32 %17 to i8
  %19 = call i32 @cpu_to_le16(i8 signext %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %10, %2
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %61 [
    i32 58, label %24
    i32 34, label %27
    i32 42, label %30
    i32 63, label %33
    i32 60, label %36
    i32 62, label %39
    i32 124, label %42
    i32 46, label %45
    i32 32, label %53
  ]

24:                                               ; preds = %21
  %25 = load i8, i8* @SFM_COLON, align 1
  %26 = call i32 @cpu_to_le16(i8 signext %25)
  store i32 %26, i32* %6, align 4
  br label %62

27:                                               ; preds = %21
  %28 = load i8, i8* @SFM_DOUBLEQUOTE, align 1
  %29 = call i32 @cpu_to_le16(i8 signext %28)
  store i32 %29, i32* %6, align 4
  br label %62

30:                                               ; preds = %21
  %31 = load i8, i8* @SFM_ASTERISK, align 1
  %32 = call i32 @cpu_to_le16(i8 signext %31)
  store i32 %32, i32* %6, align 4
  br label %62

33:                                               ; preds = %21
  %34 = load i8, i8* @SFM_QUESTION, align 1
  %35 = call i32 @cpu_to_le16(i8 signext %34)
  store i32 %35, i32* %6, align 4
  br label %62

36:                                               ; preds = %21
  %37 = load i8, i8* @SFM_LESSTHAN, align 1
  %38 = call i32 @cpu_to_le16(i8 signext %37)
  store i32 %38, i32* %6, align 4
  br label %62

39:                                               ; preds = %21
  %40 = load i8, i8* @SFM_GRTRTHAN, align 1
  %41 = call i32 @cpu_to_le16(i8 signext %40)
  store i32 %41, i32* %6, align 4
  br label %62

42:                                               ; preds = %21
  %43 = load i8, i8* @SFM_PIPE, align 1
  %44 = call i32 @cpu_to_le16(i8 signext %43)
  store i32 %44, i32* %6, align 4
  br label %62

45:                                               ; preds = %21
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8, i8* @SFM_PERIOD, align 1
  %50 = call i32 @cpu_to_le16(i8 signext %49)
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %62

53:                                               ; preds = %21
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8, i8* @SFM_SPACE, align 1
  %58 = call i32 @cpu_to_le16(i8 signext %57)
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %62

61:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %60, %52, %42, %39, %36, %33, %30, %27, %24
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @cpu_to_le16(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
