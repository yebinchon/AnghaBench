; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmos_rtc = type { i32, i32, i32 }

@NVRAM_OFFSET = common dso_local global i64 0, align 8
@rtc_lock = common dso_local global i32 0, align 4
@can_bank2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @cmos_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_nvram_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cmos_rtc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cmos_rtc*
  store %struct.cmos_rtc* %13, %struct.cmos_rtc** %9, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i64, i64* @NVRAM_OFFSET, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = call i32 @spin_lock_irq(i32* @rtc_lock)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %69, %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.cmos_rtc*, %struct.cmos_rtc** %9, align 8
  %27 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.cmos_rtc*, %struct.cmos_rtc** %9, align 8
  %33 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.cmos_rtc*, %struct.cmos_rtc** %9, align 8
  %39 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30, %24
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  br label %68

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = icmp ult i32 %46, 128
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @CMOS_WRITE(i32 %52, i32 %53)
  br label %67

55:                                               ; preds = %45
  %56 = load i64, i64* @can_bank2, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @cmos_write_bank2(i32 %62, i32 %63)
  br label %66

65:                                               ; preds = %55
  br label %76

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %8, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %21

76:                                               ; preds = %65, %21
  %77 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @CMOS_WRITE(i32, i32) #1

declare dso_local i32 @cmos_write_bank2(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
