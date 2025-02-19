; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_fw_crash_buffer_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_fw_crash_buffer_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.megasas_instance = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fw_crash_buffer_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_crash_buffer_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %40

26:                                               ; preds = %4
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 1
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.megasas_instance*, %struct.megasas_instance** %11, align 8
  %35 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %34, i32 0, i32 1
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %26, %23
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
