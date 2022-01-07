; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_handle_chip_rst_during_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_handle_chip_rst_during_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@AF_POWER_MGT = common dso_local global i32 0, align 4
@AF_CHPRST_NEEDED = common dso_local global i32 0, align 4
@AF_FIRST_INIT = common dso_local global i32 0, align 4
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"The firmware was reset during a normal power-up sequence\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Recovering from a chip reset while the chip was online\00", align 1
@AF_CHPRST_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*)* @esas2r_handle_chip_rst_during_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_handle_chip_rst_during_tasklet(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  br label %3

3:                                                ; preds = %71, %1
  %4 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %5, i32 0, i32 0
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %82

9:                                                ; preds = %3
  %10 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @AF_POWER_MGT, align 4
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %23 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %22)
  br label %24

24:                                               ; preds = %21, %15, %9
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %26 = call i32 @esas2r_check_adapter(%struct.esas2r_adapter* %25)
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %28 = call i32 @esas2r_init_adapter_hw(%struct.esas2r_adapter* %27, i32 0)
  %29 = load i32, i32* @AF_CHPRST_NEEDED, align 4
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %82

35:                                               ; preds = %24
  %36 = load i32, i32* @AF_POWER_MGT, align 4
  %37 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %37, i32 0, i32 0
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i32, i32* @AF_FIRST_INIT, align 4
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %49 = call i32 @esas2r_log(i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %57

50:                                               ; preds = %41
  %51 = load i32, i32* @AF_POWER_MGT, align 4
  %52 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %52, i32 0, i32 0
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %56 = call i32 @esas2r_send_reset_ae(%struct.esas2r_adapter* %55, i32 1)
  br label %57

57:                                               ; preds = %50, %47
  br label %71

58:                                               ; preds = %35
  %59 = load i32, i32* @AF_FIRST_INIT, align 4
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %60, i32 0, i32 0
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %68

65:                                               ; preds = %58
  %66 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %67 = call i32 @esas2r_send_reset_ae(%struct.esas2r_adapter* %66, i32 0)
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %70 = call i32 @esas2r_log(i32 %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32, i32* @AF_CHPRST_STARTED, align 4
  %73 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %73, i32 0, i32 0
  %75 = call i32 @clear_bit(i32 %72, i32* %74)
  %76 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %77 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %76)
  %78 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %79 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %79, i32 0, i32 0
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  br label %3

82:                                               ; preds = %34, %3
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_check_adapter(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_init_adapter_hw(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_send_reset_ae(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
