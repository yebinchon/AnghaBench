; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i32 }
%struct.esas2r_request = type { i64, i32, i32 }

@ESAS2R_DEFAULT_TMO = common dso_local global i64 0, align 8
@RT_DISC_REQ = common dso_local global i32 0, align 4
@AF_CHPRST_PENDING = common dso_local global i32 0, align 4
@AF_FLASHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_disc_start_request(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %6 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %7 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ESAS2R_DEFAULT_TMO, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @ESAS2R_DEFAULT_TMO, align 8
  %13 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %14 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @RT_DISC_REQ, align 4
  %17 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @AF_CHPRST_PENDING, align 4
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 2
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* @AF_FLASHING, align 4
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 2
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %36 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %37 = call i32 @esas2r_disc_local_start_request(%struct.esas2r_adapter* %35, %struct.esas2r_request* %36)
  br label %44

38:                                               ; preds = %28, %15
  %39 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %40 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %39, i32 0, i32 1
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %41, i32 0, i32 1
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret i32 1
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disc_local_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
