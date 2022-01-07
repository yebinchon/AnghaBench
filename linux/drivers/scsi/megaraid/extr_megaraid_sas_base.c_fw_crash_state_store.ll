; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_fw_crash_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_fw_crash_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.megasas_instance = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AVAILABLE = common dso_local global i32 0, align 4
@COPY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"application updates invalid firmware crash state\0A\00", align 1
@COPIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"application failed to copy Firmware crash dump\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Firmware crash dump copied successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fw_crash_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_crash_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.megasas_instance*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %10, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.megasas_instance*
  store %struct.megasas_instance* %19, %struct.megasas_instance** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoint(i8* %20, i32 0, i32* %12)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %83

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @AVAILABLE, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @COPY_ERROR, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %26
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %36 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %83

42:                                               ; preds = %30
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @COPIED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @COPY_ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %49, %42
  %54 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %55 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %54, i32 0, i32 2
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %59 = call i32 @megasas_free_host_crash_buffer(%struct.megasas_instance* %58)
  %60 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %61 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %60, i32 0, i32 2
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @COPY_ERROR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %69 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %79

73:                                               ; preds = %53
  %74 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %75 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %49
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %34, %23
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @megasas_free_host_crash_buffer(%struct.megasas_instance*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
