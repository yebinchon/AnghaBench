; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_hwq_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_hwq_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.cxlflash_cfg = type { %struct.afu*, %struct.TYPE_2__* }
%struct.afu = type { i32 }
%struct.TYPE_2__ = type { %struct.device }

@MAX_HWQ_MODE = common dso_local global i32 0, align 4
@hwq_mode_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid HWQ steering mode.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hwq_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hwq_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.cxlflash_cfg*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.afu*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %10, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %19 = call %struct.cxlflash_cfg* @shost_priv(%struct.Scsi_Host* %18)
  store %struct.cxlflash_cfg* %19, %struct.cxlflash_cfg** %11, align 8
  %20 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %11, align 8
  %21 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %12, align 8
  %24 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %11, align 8
  %25 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %24, i32 0, i32 0
  %26 = load %struct.afu*, %struct.afu** %25, align 8
  store %struct.afu* %26, %struct.afu** %13, align 8
  %27 = load i32, i32* @MAX_HWQ_MODE, align 4
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %50, %4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @MAX_HWQ_MODE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32*, i32** @hwq_mode_name, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** @hwq_mode_name, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = call i32 @strncmp(i32 %37, i8* %38, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %15, align 4
  br label %53

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %28

53:                                               ; preds = %47, %28
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @MAX_HWQ_MODE, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.device*, %struct.device** %12, align 8
  %59 = call i32 @dev_info(%struct.device* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %60 = load i64, i64* @EINVAL, align 8
  %61 = sub i64 0, %60
  store i64 %61, i64* %5, align 8
  br label %67

62:                                               ; preds = %53
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.afu*, %struct.afu** %13, align 8
  %65 = getelementptr inbounds %struct.afu, %struct.afu* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.cxlflash_cfg* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
