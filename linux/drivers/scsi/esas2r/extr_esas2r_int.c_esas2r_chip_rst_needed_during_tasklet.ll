; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_chip_rst_needed_during_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_chip_rst_needed_during_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i64, i32, i32, i32 }

@AF_CHPRST_NEEDED = common dso_local global i32 0, align 4
@AF_BUSRST_NEEDED = common dso_local global i32 0, align 4
@AF_BUSRST_DETECTED = common dso_local global i32 0, align 4
@AF_BUSRST_PENDING = common dso_local global i32 0, align 4
@ESAS2R_CHP_UPTIME_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"*** adapter disabled ***\00", align 1
@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@AF_DISABLED = common dso_local global i32 0, align 4
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Adapter disabled because of hardware failure\00", align 1
@AF_CHPRST_STARTED = common dso_local global i32 0, align 4
@AF_POWER_MGT = common dso_local global i32 0, align 4
@AF_FIRST_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"*** resetting chip ***\00", align 1
@ESAS2R_CHP_UPTIME_CNT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*)* @esas2r_chip_rst_needed_during_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_chip_rst_needed_during_tasklet(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %4 = load i32, i32* @AF_CHPRST_NEEDED, align 4
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %5, i32 0, i32 3
  %7 = call i32 @clear_bit(i32 %4, i32* %6)
  %8 = load i32, i32* @AF_BUSRST_NEEDED, align 4
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 3
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @AF_BUSRST_DETECTED, align 4
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 3
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @AF_BUSRST_PENDING, align 4
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 3
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %21 = call i32 @esas2r_is_adapter_present(%struct.esas2r_adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ESAS2R_CHP_UPTIME_MAX, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %23, %1
  %30 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %32 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %32, i32 0, i32 3
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load i32, i32* @AF_DISABLED, align 4
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %36, i32 0, i32 3
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %40, i32 0, i32 3
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @AF_DISC_PENDING, align 4
  %44 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %44, i32 0, i32 3
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %48 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %47)
  %49 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %52 = call i32 @esas2r_process_adapter_reset(%struct.esas2r_adapter* %51)
  %53 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %54 = call i32 @esas2r_log(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %116

55:                                               ; preds = %23
  %56 = load i32, i32* @AF_CHPRST_STARTED, align 4
  %57 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %57, i32 0, i32 3
  %59 = call i32 @test_and_set_bit(i32 %56, i32* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %64 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %63)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* @AF_POWER_MGT, align 4
  %67 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %67, i32 0, i32 3
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, i32* @AF_FIRST_INIT, align 4
  %73 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %73, i32 0, i32 3
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %85

81:                                               ; preds = %77, %71, %65
  %82 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %84 = call i32 @esas2r_reset_chip(%struct.esas2r_adapter* %83)
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i64, i64* @ESAS2R_CHP_UPTIME_CNT, align 8
  %87 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* @jiffies, align 4
  %92 = call i32 @jiffies_to_msecs(i32 %91)
  %93 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @AF_POWER_MGT, align 4
  %96 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %96, i32 0, i32 3
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %85
  %101 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %102 = call i32 @esas2r_process_adapter_reset(%struct.esas2r_adapter* %101)
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100
  %106 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %107 = call i32 @esas2r_targ_db_get_tgt_cnt(%struct.esas2r_adapter* %106)
  %108 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %111 = call i32 @esas2r_targ_db_remove_all(%struct.esas2r_adapter* %110, i32 0)
  br label %112

112:                                              ; preds = %105, %100
  br label %113

113:                                              ; preds = %112, %85
  %114 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %29
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_is_adapter_present(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_process_adapter_reset(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_reset_chip(%struct.esas2r_adapter*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @esas2r_targ_db_get_tgt_cnt(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_targ_db_remove_all(%struct.esas2r_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
