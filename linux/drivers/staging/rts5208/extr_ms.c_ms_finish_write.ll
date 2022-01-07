; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_finish_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_finish_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@ms_start_idx = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32, i32)* @ms_finish_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_finish_write(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ms_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 0
  store %struct.ms_info* %16, %struct.ms_info** %12, align 8
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.ms_info*, %struct.ms_info** %12, align 8
  %23 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @ms_copy_page(%struct.rtsx_chip* %17, i32 %18, i32 %19, i32 %20, i32 %21, i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %31, i32* %6, align 4
  br label %69

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 9
  store i32 %34, i32* %14, align 4
  %35 = load %struct.ms_info*, %struct.ms_info** %12, align 8
  %36 = call i64 @MS_TST_BAD_BLOCK_FLG(%struct.ms_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.ms_info*, %struct.ms_info** %12, align 8
  %40 = call i32 @MS_CLR_BAD_BLOCK_FLG(%struct.ms_info* %39)
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ms_set_bad_block(%struct.rtsx_chip* %41, i32 %42)
  br label %56

44:                                               ; preds = %32
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ms_erase_block(%struct.rtsx_chip* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ms_set_unused_block(%struct.rtsx_chip* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %44
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** @ms_start_idx, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %59, %64
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ms_set_l2p_tbl(%struct.rtsx_chip* %57, i32 %58, i32 %65, i32 %66)
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %56, %30
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @ms_copy_page(%struct.rtsx_chip*, i32, i32, i32, i32, i64) #1

declare dso_local i64 @MS_TST_BAD_BLOCK_FLG(%struct.ms_info*) #1

declare dso_local i32 @MS_CLR_BAD_BLOCK_FLG(%struct.ms_info*) #1

declare dso_local i32 @ms_set_bad_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_erase_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_set_unused_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_set_l2p_tbl(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
