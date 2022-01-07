; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsim_cleanup_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsim_cleanup_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_scsim = type { i32, %struct.csio_hw* }
%struct.csio_hw = type { i32 }

@CSIO_SCSI_ABORT_Q_POLL_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Some I/O aborts timed out, cleaning up..\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_scsim_cleanup_io(%struct.csio_scsim* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_scsim*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.csio_scsim* %0, %struct.csio_scsim** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %10 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %9, i32 0, i32 1
  %11 = load %struct.csio_hw*, %struct.csio_hw** %10, align 8
  store %struct.csio_hw* %11, %struct.csio_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @CSIO_SCSI_ABORT_Q_POLL_MS, align 4
  %13 = call i32 @DIV_ROUND_UP(i32 60000, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %15 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %31, %19
  %21 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %22 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %21, i32 0, i32 0
  %23 = call i64 @list_empty(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %26, 0
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load i32, i32* @CSIO_SCSI_ABORT_Q_POLL_MS, align 4
  %36 = call i32 @msleep(i32 %35)
  %37 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  br label %20

40:                                               ; preds = %29
  %41 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %42 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %41, i32 0, i32 0
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %71

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %51 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %52 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %51, i32 0, i32 0
  %53 = call i32 @csio_scsi_abort_io_q(%struct.csio_scsim* %50, i32* %52, i32 30000)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %71

58:                                               ; preds = %49
  %59 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %60 = call i32 @csio_dbg(%struct.csio_hw* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %46
  %62 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %63 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %64 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %63, i32 0, i32 0
  %65 = call i32 @csio_scsi_cleanup_io_q(%struct.csio_scsim* %62, i32* %64)
  %66 = load %struct.csio_scsim*, %struct.csio_scsim** %4, align 8
  %67 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %66, i32 0, i32 0
  %68 = call i64 @list_empty(i32* %67)
  %69 = call i32 @CSIO_DB_ASSERT(i64 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %61, %56, %45, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_scsi_abort_io_q(%struct.csio_scsim*, i32*, i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*) #1

declare dso_local i32 @csio_scsi_cleanup_io_q(%struct.csio_scsim*, i32*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
