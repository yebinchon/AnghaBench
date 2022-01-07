; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_replace_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_replace_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.hpsa_scsi_dev_t** }
%struct.hpsa_scsi_dev_t = type { i32, i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"replaced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32, %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t**, i32*, %struct.hpsa_scsi_dev_t**, i32*)* @hpsa_scsi_replace_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_replace_entry(%struct.ctlr_info* %0, i32 %1, %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %3, i32* %4, %struct.hpsa_scsi_dev_t** %5, i32* %6) #0 {
  %8 = alloca %struct.ctlr_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %11 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %14 = alloca i32*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %10, align 8
  store %struct.hpsa_scsi_dev_t** %3, %struct.hpsa_scsi_dev_t*** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.hpsa_scsi_dev_t** %5, %struct.hpsa_scsi_dev_t*** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %20 = icmp sge i32 %18, %19
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i1 [ true, %7 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %26 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %25, i32 0, i32 0
  %27 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %27, i64 %29
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %30, align 8
  %32 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %32, i64 %35
  store %struct.hpsa_scsi_dev_t* %31, %struct.hpsa_scsi_dev_t** %36, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %67

44:                                               ; preds = %21
  %45 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %46 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %45, i32 0, i32 0
  %47 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %47, i64 %49
  %51 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %50, align 8
  %52 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %55 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %57 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %56, i32 0, i32 0
  %58 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %58, i64 %60
  %62 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %61, align 8
  %63 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %66 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %44, %21
  %68 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %70 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %69, i32 0, i32 0
  %71 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %71, i64 %73
  store %struct.hpsa_scsi_dev_t* %68, %struct.hpsa_scsi_dev_t** %74, align 8
  %75 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %76 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %76, i64 %79
  store %struct.hpsa_scsi_dev_t* %75, %struct.hpsa_scsi_dev_t** %80, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %86 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %87 = call i32 @hpsa_show_dev_msg(i32 %84, %struct.ctlr_info* %85, %struct.hpsa_scsi_dev_t* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
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
