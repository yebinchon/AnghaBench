; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_adapter_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_adapter_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32 }

@ADAPTER_STATE_UP = common dso_local global i32 0, align 4
@ADAPTER_STATE_GOING_DOWN = common dso_local global i32 0, align 4
@ADAPTER_STATE_LINK_DOWN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*)* @bnx2i_adapter_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_adapter_ready(%struct.bnx2i_hba* %0) #0 {
  %2 = alloca %struct.bnx2i_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %5 = icmp ne %struct.bnx2i_hba* %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load i32, i32* @ADAPTER_STATE_UP, align 4
  %8 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load i32, i32* @ADAPTER_STATE_GOING_DOWN, align 4
  %14 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ADAPTER_STATE_LINK_DOWN, align 4
  %20 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %12, %6, %1
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
