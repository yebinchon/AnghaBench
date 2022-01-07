; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_is_tasklet_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_is_tasklet_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@AF_BUSRST_NEEDED = common dso_local global i32 0, align 4
@AF_BUSRST_DETECTED = common dso_local global i32 0, align 4
@AF_CHPRST_NEEDED = common dso_local global i32 0, align 4
@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@AF_PORT_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*)* @esas2r_is_tasklet_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_is_tasklet_pending(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %3 = load i32, i32* @AF_BUSRST_NEEDED, align 4
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @AF_BUSRST_DETECTED, align 4
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @AF_CHPRST_NEEDED, align 4
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @AF_PORT_CHANGE, align 4
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %20, %14, %8, %1
  %33 = phi i1 [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
