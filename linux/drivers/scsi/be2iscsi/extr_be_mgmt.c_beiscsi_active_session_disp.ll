; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_active_session_disp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_active_session_disp.c"
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
define dso_local i64 @beiscsi_active_session_disp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %7, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %16 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %15)
  store %struct.beiscsi_hba* %16, %struct.beiscsi_hba** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %61, %3
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  %27 = call i64 @test_bit(i64 %22, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @BEISCSI_ULP_AVLBL_CID(%struct.beiscsi_hba* %30, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %33, i64 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i64 @snprintf(i8* %38, i64 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45)
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %11, align 8
  br label %60

49:                                               ; preds = %21
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @snprintf(i8* %52, i64 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %56, i64 0)
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %49, %29
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %10, align 8
  br label %17

64:                                               ; preds = %17
  %65 = load i64, i64* %11, align 8
  ret i64 %65
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @test_bit(i64, i8*) #1

declare dso_local i64 @BEISCSI_ULP_AVLBL_CID(%struct.beiscsi_hba*, i64) #1

declare dso_local i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba*, i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
