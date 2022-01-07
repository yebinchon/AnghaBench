; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_do_ocr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_do_ocr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, i64, i32, %struct.TYPE_3__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.megasas_instance*)* }
%struct.TYPE_4__ = type { i64 }

@PCI_DEVICE_ID_LSI_SAS1064R = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_DELL_PERC5 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_VERDE_ZCR = common dso_local global i64 0, align 8
@MEGASAS_ADPRESET_INPROG_SIGN = common dso_local global i32 0, align 4
@MEGASAS_ADPRESET_SM_INFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_do_ocr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_do_ocr(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %3 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %4 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %3, i32 0, i32 6
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI_DEVICE_ID_LSI_SAS1064R, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_DEVICE_ID_DELL_PERC5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI_DEVICE_ID_LSI_VERDE_ZCR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18, %10, %1
  %27 = load i32, i32* @MEGASAS_ADPRESET_INPROG_SIGN, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %30 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %34 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %33, i32 0, i32 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %36, align 8
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %39 = call i32 %37(%struct.megasas_instance* %38)
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 3
  %42 = load i32, i32* @MEGASAS_ADPRESET_SM_INFAULT, align 4
  %43 = call i32 @atomic_set(i32* %41, i32 %42)
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %47 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %46, i32 0, i32 1
  %48 = call i32 @atomic_set(i32* %47, i32 0)
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %50 = call i32 @megasas_internal_reset_defer_cmds(%struct.megasas_instance* %49)
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 0
  %53 = call i32 @process_fw_state_change_wq(i32* %52)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @megasas_internal_reset_defer_cmds(%struct.megasas_instance*) #1

declare dso_local i32 @process_fw_state_change_wq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
