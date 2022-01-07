; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_do_tasklet_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_do_tasklet_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AF_CHPRST_NEEDED = common dso_local global i32 0, align 4
@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@AF_BUSRST_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hard resetting bus\00", align 1
@AF_FLASHING = common dso_local global i32 0, align 4
@AF_BUSRST_DETECTED = common dso_local global i32 0, align 4
@MU_DOORBELL_IN = common dso_local global i32 0, align 4
@DRBL_RESET_BUS = common dso_local global i32 0, align 4
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"scsi_report_bus_reset() called\00", align 1
@AF_BUSRST_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Bus reset complete\00", align 1
@AF_PORT_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_do_tasklet_tasks(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %3 = load i32, i32* @AF_CHPRST_NEEDED, align 4
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 1
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @AF_CHPRST_NEEDED, align 4
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %22 = call i32 @esas2r_chip_rst_needed_during_tasklet(%struct.esas2r_adapter* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %25 = call i32 @esas2r_handle_chip_rst_during_tasklet(%struct.esas2r_adapter* %24)
  br label %26

26:                                               ; preds = %23, %8
  %27 = load i32, i32* @AF_BUSRST_NEEDED, align 4
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @AF_BUSRST_NEEDED, align 4
  %35 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @AF_FLASHING, align 4
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @AF_BUSRST_DETECTED, align 4
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %45, i32 0, i32 1
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %53

48:                                               ; preds = %32
  %49 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %50 = load i32, i32* @MU_DOORBELL_IN, align 4
  %51 = load i32, i32* @DRBL_RESET_BUS, align 4
  %52 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i32, i32* @AF_BUSRST_DETECTED, align 4
  %56 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %56, i32 0, i32 1
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %62 = call i32 @esas2r_process_bus_reset(%struct.esas2r_adapter* %61)
  %63 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %64 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @esas2r_log_dev(i32 %63, i32* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @scsi_report_bus_reset(%struct.TYPE_2__* %71, i32 0)
  %73 = load i32, i32* @AF_BUSRST_DETECTED, align 4
  %74 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %74, i32 0, i32 1
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load i32, i32* @AF_BUSRST_PENDING, align 4
  %78 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %78, i32 0, i32 1
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  %81 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %82 = call i32 @esas2r_log(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %60, %54
  %84 = load i32, i32* @AF_PORT_CHANGE, align 4
  %85 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %85, i32 0, i32 1
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* @AF_PORT_CHANGE, align 4
  %91 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %91, i32 0, i32 1
  %93 = call i32 @clear_bit(i32 %90, i32* %92)
  %94 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %95 = call i32 @esas2r_targ_db_report_changes(%struct.esas2r_adapter* %94)
  br label %96

96:                                               ; preds = %89, %83
  %97 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %97, i32 0, i32 0
  %99 = call i64 @atomic_read(i32* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %103 = call i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter* %102)
  br label %104

104:                                              ; preds = %101, %96
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_chip_rst_needed_during_tasklet(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_handle_chip_rst_during_tasklet(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @esas2r_process_bus_reset(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*) #1

declare dso_local i32 @scsi_report_bus_reset(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @esas2r_targ_db_report_changes(%struct.esas2r_adapter*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
