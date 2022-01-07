; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_debug.c_mac_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_debug.c_mac_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"======= MAC REG =======\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%03x\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" 0x%08x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_reg_dump(i8* %0, %struct.adapter* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i8*, i8*, ...) @DBG_871X_SEL_NL(i8* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2048
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, i8*, ...) @DBG_871X_SEL_NL(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @rtw_read32(%struct.adapter* %22, i32 %23)
  %25 = call i32 (i8*, i8*, ...) @DBG_871X_SEL(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = srem i32 %26, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 (i8*, i8*, ...) @DBG_871X_SEL(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i32 @DBG_871X_SEL_NL(i8*, i8*, ...) #1

declare dso_local i32 @DBG_871X_SEL(i8*, i8*, ...) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
