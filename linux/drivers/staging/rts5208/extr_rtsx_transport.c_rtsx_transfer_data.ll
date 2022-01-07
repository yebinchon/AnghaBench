; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_transfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"use_sg = %d\0A\00", align 1
@RTSX_STAT_ABORT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_transfer_data(%struct.rtsx_chip* %0, i32 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtsx_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %18 = call i32 @rtsx_dev(%struct.rtsx_chip* %17)
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %22 = load i32, i32* @RTSX_STAT_ABORT, align 4
  %23 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %69

28:                                               ; preds = %7
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @rtsx_transfer_sglist_adma(%struct.rtsx_chip* %32, i32 %33, i8* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %16, align 4
  br label %47

39:                                               ; preds = %28
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @rtsx_transfer_buf(%struct.rtsx_chip* %40, i32 %41, i8* %42, i64 %43, i32 %44, i32 %45)
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %39, %31
  %48 = load i32, i32* %16, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %52 = call i64 @RTSX_TST_DELINK(%struct.rtsx_chip* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %56 = call i32 @RTSX_CLR_DELINK(%struct.rtsx_chip* %55)
  %57 = load i32, i32* @SD_CARD, align 4
  %58 = load i32, i32* @MS_CARD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @XD_CARD, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %63 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  %65 = call i32 @rtsx_reinit_cards(%struct.rtsx_chip* %64, i32 1)
  br label %66

66:                                               ; preds = %54, %50
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %25
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_transfer_sglist_adma(%struct.rtsx_chip*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtsx_transfer_buf(%struct.rtsx_chip*, i32, i8*, i64, i32, i32) #1

declare dso_local i64 @RTSX_TST_DELINK(%struct.rtsx_chip*) #1

declare dso_local i32 @RTSX_CLR_DELINK(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_reinit_cards(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
