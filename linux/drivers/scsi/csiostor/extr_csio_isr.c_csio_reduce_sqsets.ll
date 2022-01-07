; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_reduce_sqsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_reduce_sqsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, %struct.csio_scsi_cpu_info* }
%struct.csio_scsi_cpu_info = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Reduced sqsets to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32)* @csio_reduce_sqsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_reduce_sqsets(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_scsi_cpu_info*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %10 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %17 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %22 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %21, i32 0, i32 2
  %23 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %23, i64 %25
  store %struct.csio_scsi_cpu_info* %26, %struct.csio_scsi_cpu_info** %6, align 8
  %27 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %6, align 8
  %28 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %47

31:                                               ; preds = %20
  %32 = load %struct.csio_scsi_cpu_info*, %struct.csio_scsi_cpu_info** %6, align 8
  %33 = getelementptr inbounds %struct.csio_scsi_cpu_info, %struct.csio_scsi_cpu_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %37 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %41 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %51

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %14

51:                                               ; preds = %45, %14
  br label %7

52:                                               ; preds = %7
  %53 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %54 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %55 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @csio_dbg(%struct.csio_hw* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %56)
  ret void
}

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
