; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_keyhelp.c_help_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_keyhelp.c_help_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPACE = common dso_local global i8 0, align 1
@MSG_FUNCNAMES_END = common dso_local global i32 0, align 4
@MSG_FUNCNAMES_START = common dso_local global i32 0, align 4
@spk_our_keys = common dso_local global i64* null, align 8
@SHIFT_TBL_SIZE = common dso_local global i64 0, align 8
@state_tbl = common dso_local global i64 0, align 8
@letter_offsets = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @help_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help_init() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load i8, i8* @SPACE, align 1
  store i8 %5, i8* %1, align 1
  %6 = load i32, i32* @MSG_FUNCNAMES_END, align 4
  %7 = load i32, i32* @MSG_FUNCNAMES_START, align 4
  %8 = sub nsw i32 %6, %7
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i64*, i64** @spk_our_keys, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SHIFT_TBL_SIZE, align 8
  %14 = add nsw i64 %12, %13
  %15 = add nsw i64 %14, 2
  store i64 %15, i64* @state_tbl, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %43, %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i32, i32* @MSG_FUNCNAMES_START, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i8* @spk_msg_get(i32 %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8, i8* %1, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %43

32:                                               ; preds = %20
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %1, align 1
  %35 = load i32, i32* %2, align 4
  %36 = load i32*, i32** @letter_offsets, align 8
  %37 = load i8, i8* %1, align 1
  %38 = sext i8 %37 to i32
  %39 = and i32 %38, 31
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32 %35, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %16

46:                                               ; preds = %16
  ret i32 0
}

declare dso_local i8* @spk_msg_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
