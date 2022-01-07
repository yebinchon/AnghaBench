; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_request_firmware_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_request_firmware_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i8*, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.firmware = type { i32 }

@ELX_MODEL_NAME_SIZE = common dso_local global i32 0, align 4
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.grp\00", align 1
@INT_FW_UPGRADE = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RUN_FW_UPGRADE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_request_firmware_update(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @ELX_MODEL_NAME_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i64 @bf_get(i32 %15, i32* %18)
  %20 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

25:                                               ; preds = %2
  %26 = load i32, i32* @ELX_MODEL_NAME_SIZE, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @snprintf(i64* %14, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @INT_FW_UPGRADE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = bitcast %struct.lpfc_hba* %42 to i8*
  %44 = call i32 @request_firmware_nowait(i32 %35, i32 %36, i64* %14, i32* %40, i32 %41, i8* %43, i32 (%struct.firmware*, i8*)* @lpfc_write_firmware)
  store i32 %44, i32* %8, align 4
  br label %67

45:                                               ; preds = %25
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @RUN_FW_UPGRADE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @request_firmware(%struct.firmware** %9, i64* %14, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.firmware*, %struct.firmware** %9, align 8
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %60 = bitcast %struct.lpfc_hba* %59 to i8*
  %61 = call i32 @lpfc_write_firmware(%struct.firmware* %58, i8* %60)
  br label %62

62:                                               ; preds = %57, %49
  br label %66

63:                                               ; preds = %45
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %62
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %22
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bf_get(i32, i32*) #2

declare dso_local i32 @snprintf(i64*, i32, i8*, i8*) #2

declare dso_local i32 @request_firmware_nowait(i32, i32, i64*, i32*, i32, i8*, i32 (%struct.firmware*, i8*)*) #2

declare dso_local i32 @lpfc_write_firmware(%struct.firmware*, i8*) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
