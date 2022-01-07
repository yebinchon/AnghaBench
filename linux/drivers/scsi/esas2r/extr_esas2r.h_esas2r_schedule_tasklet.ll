; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_schedule_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_schedule_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32 }

@AF_TASKLET_SCHEDULED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*)* @esas2r_schedule_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_schedule_tasklet(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %3 = load i32, i32* @AF_TASKLET_SCHEDULED, align 4
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 1
  %6 = call i32 @test_and_set_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 0
  %11 = call i32 @tasklet_hi_schedule(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
