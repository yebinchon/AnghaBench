; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.esas2r_disc_context }
%struct.esas2r_disc_context = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"disc_event: %d\00", align 1
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4
@AF_DISC_POLLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_disc_queue_event(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esas2r_disc_context*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 1
  store %struct.esas2r_disc_context* %7, %struct.esas2r_disc_context** %5, align 8
  %8 = call i32 (...) @esas2r_trace_enter()
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @esas2r_trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %13 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @AF_DISC_POLLED, align 4
  %23 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %29 = call i32 @esas2r_disc_start_port(%struct.esas2r_adapter* %28)
  br label %30

30:                                               ; preds = %27, %21, %2
  %31 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disc_start_port(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
