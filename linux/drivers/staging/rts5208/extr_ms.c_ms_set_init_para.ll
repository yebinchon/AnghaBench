; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_init_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_init_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i64, i32, i32, i32, i32, %struct.ms_info }
%struct.ms_info = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_set_init_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_set_init_para(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 7
  store %struct.ms_info* %7, %struct.ms_info** %4, align 8
  %8 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %9 = call i64 @CHK_HG8BIT(%struct.ms_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %21 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %28

22:                                               ; preds = %11
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %24 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %27 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %16
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %31 = call i64 @CHK_MSPRO(%struct.ms_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %35 = call i64 @CHK_MS4BIT(%struct.ms_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33, %29
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %39 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %47 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %53 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %42
  br label %73

55:                                               ; preds = %33
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %57 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %65 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %72

66:                                               ; preds = %55
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %68 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %71 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %28
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %77 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @switch_clock(%struct.rtsx_chip* %75, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @STATUS_SUCCESS, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %84, i32* %2, align 4
  br label %96

85:                                               ; preds = %74
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %87 = load i32, i32* @MS_CARD, align 4
  %88 = call i32 @select_card(%struct.rtsx_chip* %86, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @STATUS_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %92, %83
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @CHK_HG8BIT(%struct.ms_info*) #1

declare dso_local i64 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #1

declare dso_local i32 @switch_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @select_card(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
