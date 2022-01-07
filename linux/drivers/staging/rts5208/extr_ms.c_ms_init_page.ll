; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_init_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_init_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MS_NO_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i64, i64)* @ms_init_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_init_page(%struct.rtsx_chip* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %22 = call i32 @memset(i64* %20, i32 255, i32 %21)
  %23 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 248, i64* %23, align 16
  %24 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 255, i64* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %20, i64 2
  store i64 %27, i64* %28, align 16
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %20, i64 3
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %15, align 8
  br label %33

33:                                               ; preds = %60, %5
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %39 = load i32, i32* @MS_CARD, align 4
  %40 = call i32 @detect_card_cd(%struct.rtsx_chip* %38, i32 %39)
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %45 = load i32, i32* @MS_NO_CARD, align 4
  %46 = call i32 @ms_set_err_code(%struct.rtsx_chip* %44, i32 %45)
  %47 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %65

48:                                               ; preds = %37
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %53 = call i32 @ms_write_extra_data(%struct.rtsx_chip* %49, i32 %50, i64 %51, i64* %20, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %65

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %15, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %33

63:                                               ; preds = %33
  %64 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %65

65:                                               ; preds = %63, %57, %43
  %66 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @ms_write_extra_data(%struct.rtsx_chip*, i32, i64, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
