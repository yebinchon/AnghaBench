; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_fixup_botched_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_fixup_botched_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32, %struct.hpsa_scsi_dev_t** }
%struct.hpsa_scsi_dev_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*)* @fixup_botched_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_botched_add(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %4, align 8
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %61, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %12
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 2
  %21 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %21, i64 %23
  %25 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %24, align 8
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %27 = icmp eq %struct.hpsa_scsi_dev_t* %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %52, %28
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %33 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 2
  %40 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %40, i64 %43
  %45 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %44, align 8
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %47 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %46, i32 0, i32 2
  %48 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %48, i64 %50
  store %struct.hpsa_scsi_dev_t* %45, %struct.hpsa_scsi_dev_t** %51, align 8
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %57 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  br label %64

60:                                               ; preds = %18
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %12

64:                                               ; preds = %55, %12
  %65 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %66 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %65, i32 0, i32 1
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %70 = call i32 @kfree(%struct.hpsa_scsi_dev_t* %69)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
