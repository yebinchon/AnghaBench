; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_debug.c_sd_f0_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_debug.c_sd_f0_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_f0_reg_dump(i8* %0, %struct.adapter* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 255
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = srem i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DBG_871X_SEL_NL(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rtw_sd_f0_read8(%struct.adapter* %19, i32 %20)
  %22 = call i32 (i8*, i8*, ...) @DBG_871X_SEL(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 16
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i8*, i8*, ...) @DBG_871X_SEL(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %37

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 8
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, i8*, ...) @DBG_871X_SEL(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

declare dso_local i32 @DBG_871X_SEL_NL(i8*, i8*, i32) #1

declare dso_local i32 @DBG_871X_SEL(i8*, i8*, ...) #1

declare dso_local i32 @rtw_sd_f0_read8(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
