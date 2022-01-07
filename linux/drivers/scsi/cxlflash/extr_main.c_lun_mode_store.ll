; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_lun_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_lun_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.cxlflash_cfg = type { i32, i32, %struct.afu* }
%struct.afu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lun_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lun_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.cxlflash_cfg*, align 8
  %11 = alloca %struct.afu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %9, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %17 = call %struct.cxlflash_cfg* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.cxlflash_cfg* %17, %struct.cxlflash_cfg** %10, align 8
  %18 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %10, align 8
  %19 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %18, i32 0, i32 2
  %20 = load %struct.afu*, %struct.afu** %19, align 8
  store %struct.afu* %20, %struct.afu** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @kstrtouint(i8* %21, i32 10, i32* %13)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.afu*, %struct.afu** %11, align 8
  %31 = getelementptr inbounds %struct.afu, %struct.afu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.afu*, %struct.afu** %11, align 8
  %37 = getelementptr inbounds %struct.afu, %struct.afu* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.afu*, %struct.afu** %11, align 8
  %39 = getelementptr inbounds %struct.afu, %struct.afu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %52

45:                                               ; preds = %34
  %46 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %10, align 8
  %47 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PORTNUM2CHAN(i32 %48)
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %10, align 8
  %54 = call i32 @afu_reset(%struct.cxlflash_cfg* %53)
  %55 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %10, align 8
  %56 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @scsi_scan_host(i32 %57)
  br label %59

59:                                               ; preds = %52, %28, %25, %4
  %60 = load i64, i64* %8, align 8
  ret i64 %60
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.cxlflash_cfg* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @PORTNUM2CHAN(i32) #1

declare dso_local i32 @afu_reset(%struct.cxlflash_cfg*) #1

declare dso_local i32 @scsi_scan_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
