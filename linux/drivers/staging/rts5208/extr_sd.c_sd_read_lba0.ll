; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_read_lba0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_read_lba0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@READ_SINGLE_BLOCK = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_read_lba0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_read_lba0(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.sd_info* %9, %struct.sd_info** %4, align 8
  %10 = load i32, i32* @READ_SINGLE_BLOCK, align 4
  %11 = or i32 64, %10
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 0, i32* %16, align 16
  %17 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %18 = call i64 @CHK_SD(%struct.sd_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  store i32 %21, i32* %7, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %24 = call i64 @CHK_MMC_8BIT(%struct.sd_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SD_BUS_WIDTH_8, align 4
  store i32 %27, i32* %7, align 4
  br label %37

28:                                               ; preds = %22
  %29 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %30 = call i64 @CHK_MMC_4BIT(%struct.sd_info* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @SD_BUS_WIDTH_1, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %40 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @sd_read_data(%struct.rtsx_chip* %39, i32 %40, i32* %41, i32 5, i32 512, i32 1, i32 %42, i32* null, i32 0, i32 100)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %49 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %48)
  %50 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @CHK_SD(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_8BIT(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_4BIT(%struct.sd_info*) #1

declare dso_local i32 @sd_read_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
