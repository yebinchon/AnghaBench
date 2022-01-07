; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_check_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_check_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i64, i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@AF2_DEV_SCAN = common dso_local global i32 0, align 4
@DCDE_DEV_SCAN = common dso_local global i32 0, align 4
@AF2_DEV_CNT_OK = common dso_local global i32 0, align 4
@AF_DISC_POLLED = common dso_local global i32 0, align 4
@AF_DISC_IN_PROG = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@AF_PORT_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_disc_check_complete(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %6 = call i32 (...) @esas2r_trace_enter()
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %98

11:                                               ; preds = %1
  %12 = load i32, i32* @jiffies, align 4
  %13 = call i32 @jiffies_to_msecs(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %11
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %26 = call i64 @esas2r_targ_db_get_tgt_cnt(%struct.esas2r_adapter* %25)
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 3000
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i32, i32* @AF2_DEV_SCAN, align 4
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %41, i32 0, i32 5
  %43 = call i32 @test_and_set_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %46, i32 0, i32 4
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %51 = load i32, i32* @DCDE_DEV_SCAN, align 4
  %52 = call i32 @esas2r_disc_queue_event(%struct.esas2r_adapter* %50, i32 %51)
  %53 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %53, i32 0, i32 4
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %45, %39, %36
  %58 = call i32 (...) @esas2r_trace_exit()
  br label %145

59:                                               ; preds = %31, %11
  %60 = load i32, i32* @AF2_DEV_CNT_OK, align 4
  %61 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %61, i32 0, i32 5
  %63 = call i32 @test_and_set_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 3000
  %68 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i32, i32* @AF2_DEV_SCAN, align 4
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %72, i32 0, i32 5
  %74 = call i32 @test_and_set_bit(i32 %71, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %70
  %77 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %77, i32 0, i32 4
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %82 = load i32, i32* @DCDE_DEV_SCAN, align 4
  %83 = call i32 @esas2r_disc_queue_event(%struct.esas2r_adapter* %81, i32 %82)
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %84, i32 0, i32 4
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = call i32 (...) @esas2r_trace_exit()
  br label %145

89:                                               ; preds = %70
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 (...) @esas2r_trace_exit()
  br label %145

97:                                               ; preds = %89
  br label %117

98:                                               ; preds = %1
  %99 = load i32, i32* @AF2_DEV_SCAN, align 4
  %100 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %100, i32 0, i32 5
  %102 = call i32 @test_and_set_bit(i32 %99, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %105, i32 0, i32 4
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @spin_lock_irqsave(i32* %106, i64 %107)
  %109 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %110 = load i32, i32* @DCDE_DEV_SCAN, align 4
  %111 = call i32 @esas2r_disc_queue_event(%struct.esas2r_adapter* %109, i32 %110)
  %112 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %112, i32 0, i32 4
  %114 = load i64, i64* %3, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  br label %116

116:                                              ; preds = %104, %98
  br label %117

117:                                              ; preds = %116, %97
  %118 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %119 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* @AF_DISC_POLLED, align 4
  %121 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %121, i32 0, i32 3
  %123 = call i64 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load i32, i32* @AF_DISC_IN_PROG, align 4
  %127 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %127, i32 0, i32 3
  %129 = call i64 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %143

132:                                              ; preds = %125, %117
  %133 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %134 = call i32 @esas2r_disc_fix_curr_requests(%struct.esas2r_adapter* %133)
  %135 = load i32, i32* @AF_DISC_PENDING, align 4
  %136 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %137 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %136, i32 0, i32 3
  %138 = call i32 @clear_bit(i32 %135, i32* %137)
  %139 = load i32, i32* @AF_PORT_CHANGE, align 4
  %140 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %141 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %140, i32 0, i32 3
  %142 = call i32 @set_bit(i32 %139, i32* %141)
  br label %143

143:                                              ; preds = %132, %131
  %144 = call i32 (...) @esas2r_trace_exit()
  br label %145

145:                                              ; preds = %143, %95, %76, %57
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i64 @esas2r_targ_db_get_tgt_cnt(%struct.esas2r_adapter*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @esas2r_disc_queue_event(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disc_fix_curr_requests(%struct.esas2r_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
