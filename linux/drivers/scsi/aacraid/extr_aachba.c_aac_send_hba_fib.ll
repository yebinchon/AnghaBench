; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_send_hba_fib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_send_hba_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_3__, {}*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fib = type { i32 }
%struct.aac_dev = type { i64 }

@AAC_MAX_LUN = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@AAC_OWNER_FIRMWARE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"aac_hba_cmd_req: aac_fib_send failed with status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aac_send_hba_fib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_send_hba_fib(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.aac_dev* @shost_priv(i32 %11)
  store %struct.aac_dev* %12, %struct.aac_dev** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = call i64 @scmd_id(%struct.scsi_cmnd* %13)
  %15 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %16 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AAC_MAX_LUN, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %19, %1
  %29 = load i32, i32* @DID_NO_CONNECT, align 4
  %30 = shl i32 %29, 16
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 2
  %35 = bitcast {}** %34 to i32 (%struct.scsi_cmnd*)**
  %36 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %35, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = call i32 %36(%struct.scsi_cmnd* %37)
  store i32 0, i32* %2, align 4
  br label %66

39:                                               ; preds = %19
  %40 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = call %struct.fib* @aac_fib_alloc_tag(%struct.aac_dev* %40, %struct.scsi_cmnd* %41)
  store %struct.fib* %42, %struct.fib** %4, align 8
  %43 = load %struct.fib*, %struct.fib** %4, align 8
  %44 = icmp ne %struct.fib* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %66

46:                                               ; preds = %39
  %47 = load i32, i32* @AAC_OWNER_FIRMWARE, align 4
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.fib*, %struct.fib** %4, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = call i32 @aac_adapter_hba(%struct.fib* %51, %struct.scsi_cmnd* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @EINPROGRESS, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %66

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.fib*, %struct.fib** %4, align 8
  %63 = call i32 @aac_fib_complete(%struct.fib* %62)
  %64 = load %struct.fib*, %struct.fib** %4, align 8
  %65 = call i32 @aac_fib_free(%struct.fib* %64)
  store i32 -1, i32* %2, align 4
  br label %66

66:                                               ; preds = %59, %58, %45, %28
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.aac_dev* @shost_priv(i32) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local %struct.fib* @aac_fib_alloc_tag(%struct.aac_dev*, %struct.scsi_cmnd*) #1

declare dso_local i32 @aac_adapter_hba(%struct.fib*, %struct.scsi_cmnd*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
