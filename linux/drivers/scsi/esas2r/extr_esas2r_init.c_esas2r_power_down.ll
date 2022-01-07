; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i32 }

@AF_POWER_MGT = common dso_local global i32 0, align 4
@AF_POWER_DOWN = common dso_local global i32 0, align 4
@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@MU_DOORBELL_IN = common dso_local global i32 0, align 4
@DRBL_MSG_IFC_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout waiting for interface down\00", align 1
@AF2_VDA_POWER_DOWN = common dso_local global i32 0, align 4
@AF_OS_RESET = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_power_down(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %5 = load i32, i32* @AF_POWER_MGT, align 4
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 1
  %8 = call i32 @set_bit(i32 %5, i32* %7)
  %9 = load i32, i32* @AF_POWER_DOWN, align 4
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %1
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %20 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %19)
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %22 = call i32 @esas2r_disable_heartbeat(%struct.esas2r_adapter* %21)
  %23 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %24 = load i32, i32* @MU_DOORBELL_IN, align 4
  %25 = load i32, i32* @DRBL_MSG_IFC_DOWN, align 4
  %26 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @jiffies, align 4
  %28 = call i32 @jiffies_to_msecs(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %52
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %31 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %32 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DRBL_MSG_IFC_DOWN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %39 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %38, i32 %39, i32 %40)
  br label %53

42:                                               ; preds = %29
  %43 = call i32 @msecs_to_jiffies(i32 100)
  %44 = call i32 @schedule_timeout_interruptible(i32 %43)
  %45 = load i32, i32* @jiffies, align 4
  %46 = call i32 @jiffies_to_msecs(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp sgt i32 %48, 3000
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %53

52:                                               ; preds = %42
  br label %29

53:                                               ; preds = %50, %37
  %54 = load i32, i32* @AF2_VDA_POWER_DOWN, align 4
  %55 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %55, i32 0, i32 2
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %61 = call i32 @esas2r_power_down_notify_firmware(%struct.esas2r_adapter* %60)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %1
  %64 = load i32, i32* @AF_OS_RESET, align 4
  %65 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load i32, i32* @AF_DISC_PENDING, align 4
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %69, i32 0, i32 1
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %73 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %73, i32 0, i32 1
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %77 = call i32 @esas2r_process_adapter_reset(%struct.esas2r_adapter* %76)
  %78 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %79 = call i32 @esas2r_targ_db_get_tgt_cnt(%struct.esas2r_adapter* %78)
  %80 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %83 = call i32 @esas2r_targ_db_remove_all(%struct.esas2r_adapter* %82, i32 0)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disable_heartbeat(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_power_down_notify_firmware(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_process_adapter_reset(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_targ_db_get_tgt_cnt(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_targ_db_remove_all(%struct.esas2r_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
