; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_get_shandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_boot_get_shandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_boot_target_resp = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@BE_BOOT_INVALID_SHANDLE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BG_%d : Getting Boot Target Info Failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"BG_%d : MBX CMD get_boot_target Failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BG_%d : No boot targets configured\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_boot_get_shandle(%struct.beiscsi_hba* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.be_cmd_get_boot_target_resp*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @BE_BOOT_INVALID_SHANDLE, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %13 = call i32 @__beiscsi_boot_get_shandle(%struct.beiscsi_hba* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %20 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @beiscsi_log(%struct.beiscsi_hba* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba* %26, i32 %27, %struct.be_mcc_wrb** %7, i32* null)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %35 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @beiscsi_log(%struct.beiscsi_hba* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %25
  %41 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %42 = call %struct.be_cmd_get_boot_target_resp* @embedded_payload(%struct.be_mcc_wrb* %41)
  store %struct.be_cmd_get_boot_target_resp* %42, %struct.be_cmd_get_boot_target_resp** %6, align 8
  %43 = load %struct.be_cmd_get_boot_target_resp*, %struct.be_cmd_get_boot_target_resp** %6, align 8
  %44 = getelementptr inbounds %struct.be_cmd_get_boot_target_resp, %struct.be_cmd_get_boot_target_resp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %48, i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %40
  %54 = load %struct.be_cmd_get_boot_target_resp*, %struct.be_cmd_get_boot_target_resp** %6, align 8
  %55 = getelementptr inbounds %struct.be_cmd_get_boot_target_resp, %struct.be_cmd_get_boot_target_resp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %47, %31, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @__beiscsi_boot_get_shandle(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba*, i32, %struct.be_mcc_wrb**, i32*) #1

declare dso_local %struct.be_cmd_get_boot_target_resp* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
