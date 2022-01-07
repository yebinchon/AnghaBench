; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"performing a bus reset\00", align 1
@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@AF_BUSRST_NEEDED = common dso_local global i32 0, align 4
@AF_BUSRST_PENDING = common dso_local global i32 0, align 4
@AF_OS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_reset_bus(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %3 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %4 = call i32 @esas2r_log(i32 %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 0
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @AF_DISC_PENDING, align 4
  %18 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @AF_BUSRST_NEEDED, align 4
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @AF_BUSRST_PENDING, align 4
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load i32, i32* @AF_OS_RESET, align 4
  %32 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %36 = call i32 @esas2r_schedule_tasklet(%struct.esas2r_adapter* %35)
  br label %37

37:                                               ; preds = %22, %16, %10, %1
  ret void
}

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_schedule_tasklet(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
