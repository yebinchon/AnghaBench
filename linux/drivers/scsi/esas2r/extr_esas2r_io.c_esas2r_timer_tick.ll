; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_timer_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_timer_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i64, i64, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@AF_CHPRST_NEEDED = common dso_local global i32 0, align 4
@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@AF_HEARTBEAT_ENB = common dso_local global i32 0, align 4
@AF_HEARTBEAT = common dso_local global i32 0, align 4
@ESAS2R_HEARTBEAT_TIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"heartbeat failed\00", align 1
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_timer_tick(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %5 = load i32, i32* @jiffies, align 4
  %6 = call i64 @jiffies_to_msecs(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %21, i32 0, i32 4
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @AF_DISC_PENDING, align 4
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 4
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %46

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %40, %37
  br label %47

47:                                               ; preds = %46, %25, %19, %1
  %48 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %49 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %49, i32 0, i32 4
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load i32, i32* @AF_CHPRST_NEEDED, align 4
  %55 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %55, i32 0, i32 4
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %61 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %61, i32 0, i32 4
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @esas2r_handle_pending_reset(%struct.esas2r_adapter* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %59, %53
  br label %123

70:                                               ; preds = %47
  %71 = load i32, i32* @AF_DISC_PENDING, align 4
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %72, i32 0, i32 4
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %78 = call i32 @esas2r_disc_check_complete(%struct.esas2r_adapter* %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i32, i32* @AF_HEARTBEAT_ENB, align 4
  %81 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %81, i32 0, i32 4
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %79
  %86 = load i32, i32* @AF_HEARTBEAT, align 4
  %87 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %87, i32 0, i32 4
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %85
  %92 = load i64, i64* %3, align 8
  %93 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = load i64, i64* @ESAS2R_HEARTBEAT_TIME, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %91
  %100 = load i32, i32* @AF_HEARTBEAT, align 4
  %101 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %101, i32 0, i32 4
  %103 = call i32 @clear_bit(i32 %100, i32* %102)
  %104 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %106 = call i32 @esas2r_log(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %107 = call i32 (...) @esas2r_bugon()
  %108 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %109 = call i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter* %108)
  br label %110

110:                                              ; preds = %99, %91
  br label %121

111:                                              ; preds = %85
  %112 = load i32, i32* @AF_HEARTBEAT, align 4
  %113 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %113, i32 0, i32 4
  %115 = call i32 @set_bit(i32 %112, i32* %114)
  %116 = load i64, i64* %3, align 8
  %117 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %118 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %120 = call i32 @esas2r_force_interrupt(%struct.esas2r_adapter* %119)
  br label %121

121:                                              ; preds = %111, %110
  br label %122

122:                                              ; preds = %121, %79
  br label %123

123:                                              ; preds = %122, %69
  %124 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %124, i32 0, i32 3
  %126 = call i64 @atomic_read(i32* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %130 = call i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter* %129)
  br label %131

131:                                              ; preds = %128, %123
  ret void
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_handle_pending_reset(%struct.esas2r_adapter*, i64) #1

declare dso_local i32 @esas2r_disc_check_complete(%struct.esas2r_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @esas2r_bugon(...) #1

declare dso_local i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_force_interrupt(%struct.esas2r_adapter*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
