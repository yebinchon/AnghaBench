; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_init.c_bnx2i_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_init.c_bnx2i_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ADAPTER_STATE_UP = common dso_local global i32 0, align 4
@ADAPTER_STATE_INIT_FAILED = common dso_local global i32 0, align 4
@BNX2I_INIT_POLL_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bnx2i_hba*
  store %struct.bnx2i_hba* %6, %struct.bnx2i_hba** %3, align 8
  %7 = load i32, i32* @HZ, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %9 = call i32 @bnx2i_send_fw_iscsi_init_msg(%struct.bnx2i_hba* %8)
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* @ADAPTER_STATE_UP, align 4
  %12 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @ADAPTER_STATE_INIT_FAILED, align 4
  %18 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %19 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %23, 0
  br label %26

26:                                               ; preds = %22, %16, %10
  %27 = phi i1 [ false, %16 ], [ false, %10 ], [ %25, %22 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 1000, %29
  %31 = call i32 @msleep(i32 %30)
  br label %10

32:                                               ; preds = %26
  ret void
}

declare dso_local i32 @bnx2i_send_fw_iscsi_init_msg(%struct.bnx2i_hba*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
