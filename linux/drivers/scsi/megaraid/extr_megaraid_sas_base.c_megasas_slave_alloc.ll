; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, %struct.MR_PRIV_DEVICE*, %struct.TYPE_4__* }
%struct.MR_PRIV_DEVICE = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.megasas_instance = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }

@MEGASAS_MAX_DEV_PER_CHANNEL = common dso_local global i32 0, align 4
@MR_PD_STATE_SYSTEM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @megasas_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.MR_PRIV_DEVICE*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.megasas_instance* @megasas_lookup_instance(i32 %11)
  store %struct.megasas_instance* %12, %struct.megasas_instance** %5, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = call i32 @MEGASAS_IS_LOGICAL(%struct.scsi_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %1
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  store i64 %26, i64* %4, align 8
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %16
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MR_PD_STATE_SYSTEM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31, %16
  br label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.MR_PRIV_DEVICE* @kzalloc(i32 4, i32 %47)
  store %struct.MR_PRIV_DEVICE* %48, %struct.MR_PRIV_DEVICE** %6, align 8
  %49 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %6, align 8
  %50 = icmp ne %struct.MR_PRIV_DEVICE* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %64

54:                                               ; preds = %46
  %55 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %6, align 8
  %56 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 2
  store %struct.MR_PRIV_DEVICE* %55, %struct.MR_PRIV_DEVICE** %57, align 8
  %58 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %6, align 8
  %59 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %58, i32 0, i32 0
  %60 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %61 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @atomic_set(i32* %59, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %54, %51, %42
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.megasas_instance* @megasas_lookup_instance(i32) #1

declare dso_local i32 @MEGASAS_IS_LOGICAL(%struct.scsi_device*) #1

declare dso_local %struct.MR_PRIV_DEVICE* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
