; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_free_session_disp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_free_session_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BEISCSI_ULP_COUNT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"ULP%d : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @beiscsi_free_session_disp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %14 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %13)
  store %struct.beiscsi_hba* %14, %struct.beiscsi_hba** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  %25 = call i64 @test_bit(i64 %20, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @BEISCSI_ULP_AVLBL_CID(%struct.beiscsi_hba* %35, i64 %36)
  %38 = call i64 @snprintf(i8* %30, i64 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %52

41:                                               ; preds = %19
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @snprintf(i8* %44, i64 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %48, i32 0)
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %41, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %15

56:                                               ; preds = %15
  %57 = load i64, i64* %10, align 8
  ret i64 %57
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @test_bit(i64, i8*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @BEISCSI_ULP_AVLBL_CID(%struct.beiscsi_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
