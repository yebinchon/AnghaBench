; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_delink_stage1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_delink_stage1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64, i64 }

@RTSX_STAT_DELINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"False card inserted, do force delink\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No card inserted, do delink\0A\00", align 1
@HOST_SLEEP_STATE = common dso_local global i32 0, align 4
@CHANGE_LINK_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i32, i32)* @rtsx_delink_stage1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_delink_stage1(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %9 = load i32, i32* @RTSX_STAT_DELINK, align 4
  %10 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %8, i32 %9)
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %17 = call i64 @CHECK_PID(%struct.rtsx_chip* %16, i32 21000)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %21 = call i32 @rtsx_set_phy_reg_bit(%struct.rtsx_chip* %20, i32 28, i32 2)
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %24 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %29 = call i32 @rtsx_dev(%struct.rtsx_chip* %28)
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %33 = call i32 @rtsx_dev(%struct.rtsx_chip* %32)
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %40 = load i32, i32* @HOST_SLEEP_STATE, align 4
  %41 = call i32 @rtsx_write_register(%struct.rtsx_chip* %39, i32 %40, i32 3, i32 1)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %44 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 2, i32* %7, align 4
  br label %49

48:                                               ; preds = %42
  store i32 10, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %51 = load i32, i32* @CHANGE_LINK_STATE, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @rtsx_write_register(%struct.rtsx_chip* %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %59 = call i32 @rtsx_enter_L1(%struct.rtsx_chip* %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %62 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %69 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_set_phy_reg_bit(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_enter_L1(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
