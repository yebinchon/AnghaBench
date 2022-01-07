; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_build_and_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_build_and_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.megasas_instance*, i32, i64, i32)* }
%struct.scsi_cmnd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.megasas_cmd = type { i64, i32, %struct.scsi_cmnd* }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@READ_WRITE_LDIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_build_and_issue_cmd(%struct.megasas_instance* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %9 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %8)
  store %struct.megasas_cmd* %9, %struct.megasas_cmd** %6, align 8
  %10 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %11 = icmp ne %struct.megasas_cmd* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = call i64 @megasas_cmd_type(%struct.scsi_cmnd* %15)
  %17 = load i64, i64* @READ_WRITE_LDIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %23 = call i32 @megasas_build_ldio(%struct.megasas_instance* %20, %struct.scsi_cmnd* %21, %struct.megasas_cmd* %22)
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %14
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %27 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %28 = call i32 @megasas_build_dcdb(%struct.megasas_instance* %25, %struct.scsi_cmnd* %26, %struct.megasas_cmd* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %62

33:                                               ; preds = %29
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %35, i32 0, i32 2
  store %struct.scsi_cmnd* %34, %struct.scsi_cmnd** %36, align 8
  %37 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %38 = bitcast %struct.megasas_cmd* %37 to i8*
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %43 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %42, i32 0, i32 2
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.megasas_instance*, i32, i64, i32)*, i32 (%struct.megasas_instance*, i32, i64, i32)** %48, align 8
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %51 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %49(%struct.megasas_instance* %50, i32 %53, i64 %57, i32 %60)
  store i32 0, i32* %3, align 4
  br label %67

62:                                               ; preds = %32
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %64 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %65 = call i32 @megasas_return_cmd(%struct.megasas_instance* %63, %struct.megasas_cmd* %64)
  %66 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %33, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i64 @megasas_cmd_type(%struct.scsi_cmnd*) #1

declare dso_local i32 @megasas_build_ldio(%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.megasas_cmd*) #1

declare dso_local i32 @megasas_build_dcdb(%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.megasas_cmd*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
