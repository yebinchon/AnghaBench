; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVRAM_OFFSET = common dso_local global i64 0, align 8
@rtc_lock = common dso_local global i32 0, align 4
@can_bank2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @cmos_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_nvram_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i64, i64* @NVRAM_OFFSET, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = call i32 @spin_lock_irq(i32* @rtc_lock)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %42, %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 128
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @CMOS_READ(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %9, align 8
  store i8 %27, i8* %28, align 1
  br label %41

30:                                               ; preds = %21
  %31 = load i64, i64* @can_bank2, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cmos_read_bank2(i32 %34)
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  store i8 %36, i8* %37, align 1
  br label %40

39:                                               ; preds = %30
  br label %49

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %18

49:                                               ; preds = %39, %18
  %50 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @CMOS_READ(i32) #1

declare dso_local i32 @cmos_read_bank2(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
