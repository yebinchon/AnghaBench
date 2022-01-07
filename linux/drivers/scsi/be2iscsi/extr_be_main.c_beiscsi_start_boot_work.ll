; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_start_boot_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_start_boot_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }

@BEISCSI_HBA_BOOT_WORK = common dso_local global i32 0, align 4
@BEISCSI_BOOT_GET_SHANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_start_boot_work(%struct.beiscsi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %36

11:                                               ; preds = %2
  %12 = load i32, i32* @BEISCSI_HBA_BOOT_WORK, align 4
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 2
  %15 = call i64 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 3, i32* %21, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @BEISCSI_BOOT_GET_SHANDLE, align 4
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 0
  %35 = call i32 @schedule_work(i32* %34)
  br label %36

36:                                               ; preds = %18, %17, %10
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
