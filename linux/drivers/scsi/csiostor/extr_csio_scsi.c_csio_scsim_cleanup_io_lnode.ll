; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsim_cleanup_io_lnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsim_cleanup_io_lnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_scsim = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_lnode = type { i32 }
%struct.csio_scsi_level_data = type { %struct.csio_lnode*, i32 }

@CSIO_SCSI_ABORT_Q_POLL_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Gathering all SCSI I/Os on lnode %p\0A\00", align 1
@CSIO_LEV_LNODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Some I/Os pending on ln:%p, aborting them..\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Some I/O aborts timed out, cleaning up..\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_scsim_cleanup_io_lnode(%struct.csio_scsim* %0, %struct.csio_lnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_scsim*, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_scsi_level_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.csio_scsim* %0, %struct.csio_scsim** %4, align 8
  store %struct.csio_lnode* %1, %struct.csio_lnode** %5, align 8
  %10 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %11 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %10, i32 0, i32 0
  %12 = load %struct.csio_hw*, %struct.csio_hw** %11, align 8
  store %struct.csio_hw* %12, %struct.csio_hw** %6, align 8
  %13 = load i32, i32* @CSIO_SCSI_ABORT_Q_POLL_MS, align 4
  %14 = call i32 @DIV_ROUND_UP(i32 60000, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %16 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %17 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.csio_lnode* %16)
  %18 = load i32, i32* @CSIO_LEV_LNODE, align 4
  %19 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %21 = getelementptr inbounds %struct.csio_scsi_level_data, %struct.csio_scsi_level_data* %7, i32 0, i32 0
  store %struct.csio_lnode* %20, %struct.csio_lnode** %21, align 8
  %22 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %23 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %26 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %27 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %26, i32 0, i32 0
  %28 = call i32 @csio_scsi_gather_active_ios(%struct.csio_scsim* %25, %struct.csio_scsi_level_data* %7, i32* %27)
  %29 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %30 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %29, i32 0, i32 0
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %46, %34
  %36 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %37 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %36, i32 0, i32 0
  %38 = call i64 @list_empty(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %41, 0
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i1 [ false, %35 ], [ %43, %40 ]
  br i1 %45, label %46, label %55

46:                                               ; preds = %44
  %47 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %48 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load i32, i32* @CSIO_SCSI_ABORT_Q_POLL_MS, align 4
  %51 = call i32 @msleep(i32 %50)
  %52 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %53 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_irq(i32* %53)
  br label %35

55:                                               ; preds = %44
  %56 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %57 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %56, i32 0, i32 0
  %58 = call i64 @list_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %84

61:                                               ; preds = %55
  %62 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %63 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %64 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.csio_lnode* %63)
  %65 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %66 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %67 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %66, i32 0, i32 0
  %68 = call i32 @csio_scsi_abort_io_q(%struct.csio_scsim* %65, i32* %67, i32 30000)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %73 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %75 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %76 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %75, i32 0, i32 0
  %77 = call i32 @csio_scsi_cleanup_io_q(%struct.csio_scsim* %74, i32* %76)
  br label %78

78:                                               ; preds = %71, %61
  %79 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %80 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %79, i32 0, i32 0
  %81 = call i64 @list_empty(i32* %80)
  %82 = call i32 @CSIO_DB_ASSERT(i64 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %60, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @csio_scsi_gather_active_ios(%struct.csio_scsim*, %struct.csio_scsi_level_data*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_scsi_abort_io_q(%struct.csio_scsim*, i32*, i32) #1

declare dso_local i32 @csio_scsi_cleanup_io_q(%struct.csio_scsim*, i32*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
