; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_fabric_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_fabric_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FABRIC_COMANDS_BLOCKED = common dso_local global i32 0, align 4
@lpfc_cmpl_fabric_iocb = common dso_local global i32* null, align 8
@LPFC_IO_FABRIC = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Fabric sched2:   ste:x%x\00", align 1
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_iocbq*)* @lpfc_issue_fabric_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %4, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp sgt i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 2
  %20 = call i32 @atomic_read(i32* %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @FABRIC_COMANDS_BLOCKED, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 3
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %22, %2
  %30 = phi i1 [ false, %2 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 2
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %94

45:                                               ; preds = %38
  %46 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load i32*, i32** @lpfc_cmpl_fabric_iocb, align 8
  %52 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %63 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @lpfc_debugfs_disc_trc(%struct.TYPE_2__* %61, i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67, i32 0, i32 0)
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = load i32, i32* @LPFC_ELS_RING, align 4
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %72 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %69, i32 %70, %struct.lpfc_iocbq* %71, i32 0)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @IOCB_ERROR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %45
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %78 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %83 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* @LPFC_IO_FABRIC, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 2
  %92 = call i32 @atomic_dec(i32* %91)
  br label %93

93:                                               ; preds = %76, %45
  br label %109

94:                                               ; preds = %38
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %99, i32 0, i32 0
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 1
  %103 = call i32 @list_add_tail(i32* %100, i32* %102)
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 0
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %94, %93
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.TYPE_2__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
