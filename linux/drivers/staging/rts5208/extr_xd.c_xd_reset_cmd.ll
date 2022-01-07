; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_reset_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_reset_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_RESET = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@XD_DAT = common dso_local global i32 0, align 4
@XD_CTL = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@READY_FLAG = common dso_local global i32 0, align 4
@READY_STATE = common dso_local global i32 0, align 4
@XD_RDY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @xd_reset_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_reset_cmd(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %6)
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = load i32, i32* @WRITE_REG_CMD, align 4
  %10 = load i32, i32* @XD_TRANSFER, align 4
  %11 = load i32, i32* @XD_TRANSFER_START, align 4
  %12 = load i32, i32* @XD_RESET, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %8, i32 %9, i32 %10, i32 255, i32 %13)
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = load i32, i32* @CHECK_REG_CMD, align 4
  %17 = load i32, i32* @XD_TRANSFER, align 4
  %18 = load i32, i32* @XD_TRANSFER_END, align 4
  %19 = load i32, i32* @XD_TRANSFER_END, align 4
  %20 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %22 = load i32, i32* @READ_REG_CMD, align 4
  %23 = load i32, i32* @XD_DAT, align 4
  %24 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %21, i32 %22, i32 %23, i32 0, i32 0)
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %26 = load i32, i32* @READ_REG_CMD, align 4
  %27 = load i32, i32* @XD_CTL, align 4
  %28 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %25, i32 %26, i32 %27, i32 0, i32 0)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %30 = load i32, i32* @XD_CARD, align 4
  %31 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %29, i32 %30, i32 100)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %1
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %38 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %37)
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @READY_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @READY_STATE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @XD_RDY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %47, %36
  %57 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %54, %34
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
