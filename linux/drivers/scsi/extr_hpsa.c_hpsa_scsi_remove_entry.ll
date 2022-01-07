; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.hpsa_scsi_dev_t** }
%struct.hpsa_scsi_dev_t = type { i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32, %struct.hpsa_scsi_dev_t**, i32*)* @hpsa_scsi_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_remove_entry(%struct.ctlr_info* %0, i32 %1, %struct.hpsa_scsi_dev_t** %2, i32* %3) #0 {
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hpsa_scsi_dev_t** %2, %struct.hpsa_scsi_dev_t*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %16 = icmp sge i32 %14, %15
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i1 [ true, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %22 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %21, i32 0, i32 1
  %23 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %23, i64 %25
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %26, align 8
  store %struct.hpsa_scsi_dev_t* %27, %struct.hpsa_scsi_dev_t** %10, align 8
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 1
  %30 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %30, i64 %32
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %33, align 8
  %35 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %35, i64 %38
  store %struct.hpsa_scsi_dev_t* %34, %struct.hpsa_scsi_dev_t** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %66, %17
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %47 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %53 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %52, i32 0, i32 1
  %54 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %54, i64 %57
  %59 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %58, align 8
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %61 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %60, i32 0, i32 1
  %62 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %62, i64 %64
  store %struct.hpsa_scsi_dev_t* %59, %struct.hpsa_scsi_dev_t** %65, align 8
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %71 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %76 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %77 = call i32 @hpsa_show_dev_msg(i32 %74, %struct.ctlr_info* %75, %struct.hpsa_scsi_dev_t* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hpsa_show_dev_msg(i32, %struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
