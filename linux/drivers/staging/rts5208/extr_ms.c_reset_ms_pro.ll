; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_reset_ms_pro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_reset_ms_pro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32*, i64*, %struct.ms_info }
%struct.ms_info = type { i32*, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @reset_ms_pro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_ms_pro(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 3
  store %struct.ms_info* %7, %struct.ms_info** %4, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = call i32 @ms_pro_reset_flow(%struct.rtsx_chip* %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @STATUS_SUCCESS, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %15 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %20 = call i32 @ms_pro_reset_flow(%struct.rtsx_chip* %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %66

26:                                               ; preds = %18
  br label %29

27:                                               ; preds = %13
  %28 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %32 = call i32 @ms_read_attribute_info(%struct.rtsx_chip* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @STATUS_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %30
  %39 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %40 = call i64 @CHK_HG8BIT(%struct.ms_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %47 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @MS_CARD, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  store i32 8, i32* %52, align 4
  br label %64

53:                                               ; preds = %38
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %58 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @MS_CARD, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  store i32 4, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %42
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %36, %27, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ms_pro_reset_flow(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_read_attribute_info(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_HG8BIT(%struct.ms_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
