; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_msxc_change_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_msxc_change_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@Pro_DataCount1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@PRO_WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@XC_CHG_POWER = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@MS_TRANS_CFG = common dso_local global i32 0, align 4
@MS_INT_CMDNK = common dso_local global i32 0, align 4
@MS_INT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @msxc_change_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msxc_change_power(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %9 = call i32 @ms_cleanup_work(%struct.rtsx_chip* %8)
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %11 = load i32, i32* @Pro_DataCount1, align 4
  %12 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %10, i32 0, i32 0, i32 %11, i32 6)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @STATUS_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %19, align 16
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %24, align 16
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 0, i32* %25, align 4
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %27 = load i32, i32* @PRO_WRITE_REG, align 4
  %28 = load i32, i32* @NO_WAIT_INT, align 4
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %30 = call i32 @ms_write_bytes(%struct.rtsx_chip* %26, i32 %27, i32 6, i32 %28, i32* %29, i32 6)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %18
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %38 = load i32, i32* @XC_CHG_POWER, align 4
  %39 = load i32, i32* @WAIT_INT, align 4
  %40 = call i32 @ms_send_cmd(%struct.rtsx_chip* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %45, i32* %3, align 4
  br label %67

46:                                               ; preds = %36
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %48 = load i32, i32* @MS_TRANS_CFG, align 4
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %50 = call i32 @rtsx_read_register(%struct.rtsx_chip* %47, i32 %48, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %67

55:                                               ; preds = %46
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = load i32, i32* @MS_INT_CMDNK, align 4
  %59 = load i32, i32* @MS_INT_ERR, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %63, %53, %44, %34, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ms_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
