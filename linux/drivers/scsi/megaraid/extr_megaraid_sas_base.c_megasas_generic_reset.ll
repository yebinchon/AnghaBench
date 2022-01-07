; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_generic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_generic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.megasas_instance = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"megasas: RESET cmd=%x retries=%x\0A\00", align 1
@MEGASAS_HW_CRITICAL_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot recover from previous reset failures\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"reset successful\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to do reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @megasas_generic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_generic_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_instance*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.megasas_instance*
  store %struct.megasas_instance* %13, %struct.megasas_instance** %5, align 8
  %14 = load i32, i32* @KERN_NOTICE, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @scmd_printk(i32 %14, %struct.scsi_cmnd* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %26 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %25, i32 0, i32 1
  %27 = call i64 @atomic_read(i32* %26)
  %28 = load i64, i64* @MEGASAS_HW_CRITICAL_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %32 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @FAILED, align 4
  store i32 %36, i32* %2, align 4
  br label %57

37:                                               ; preds = %1
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %39 = call i32 @megasas_wait_for_outstanding(%struct.megasas_instance* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @dev_notice(i32* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %55

49:                                               ; preds = %37
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %51 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %30
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @megasas_wait_for_outstanding(%struct.megasas_instance*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
