; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_doorbell_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_doorbell_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32 }

@DRBL_FORCE_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"doorbell: %x\00", align 1
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4
@DRBL_RESET_BUS = common dso_local global i32 0, align 4
@AF_BUSRST_DETECTED = common dso_local global i32 0, align 4
@AF_HEARTBEAT = common dso_local global i32 0, align 4
@DRBL_PANIC_REASON_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"*** Firmware Panic ***\00", align 1
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"The firmware has panicked\00", align 1
@DRBL_FW_RESET = common dso_local global i32 0, align 4
@AF2_COREDUMP_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, i32)* @esas2r_doorbell_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_doorbell_interrupt(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DRBL_FORCE_INT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @esas2r_trace_enter()
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @esas2r_trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %15 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DRBL_RESET_BUS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load i32, i32* @AF_BUSRST_DETECTED, align 4
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DRBL_FORCE_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @AF_HEARTBEAT, align 4
  %34 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %34, i32 0, i32 1
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @DRBL_PANIC_REASON_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %45 = call i32 @esas2r_log(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @DRBL_FW_RESET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @AF2_COREDUMP_AVAIL, align 4
  %53 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %53, i32 0, i32 0
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %57 = call i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter* %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DRBL_FORCE_INT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = call i32 (...) @esas2r_trace_exit()
  br label %65

65:                                               ; preds = %63, %58
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
