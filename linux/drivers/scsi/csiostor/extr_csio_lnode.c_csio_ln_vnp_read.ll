; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_vnp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_vnp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32, i32, %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to issue mbox FCoE VNP command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_lnode*, void (%struct.csio_hw*, %struct.csio_mb*)*)* @csio_ln_vnp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_ln_vnp_read(%struct.csio_lnode* %0, void (%struct.csio_hw*, %struct.csio_mb*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_lnode*, align 8
  %5 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_mb*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %4, align 8
  store void (%struct.csio_hw*, %struct.csio_mb*)* %1, void (%struct.csio_hw*, %struct.csio_mb*)** %5, align 8
  %8 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %9 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %8, i32 0, i32 2
  %10 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  store %struct.csio_hw* %10, %struct.csio_hw** %6, align 8
  %11 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.csio_mb* @mempool_alloc(i32 %13, i32 %14)
  store %struct.csio_mb* %15, %struct.csio_mb** %7, align 8
  %16 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %17 = icmp ne %struct.csio_mb* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %20 = load i32, i32* @n_err_nomem, align 4
  %21 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %19, i32 %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %26 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %27 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %28 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %29 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %32 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %5, align 8
  %35 = call i32 @csio_fcoe_vnp_read_init_mb(%struct.csio_lnode* %25, %struct.csio_mb* %26, i32 %27, i32 %30, i32 %33, void (%struct.csio_hw*, %struct.csio_mb*)* %34)
  %36 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %37 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %38 = call i64 @csio_mb_issue(%struct.csio_hw* %36, %struct.csio_mb* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %24
  %41 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %42 = call i32 @csio_err(%struct.csio_hw* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.csio_mb*, %struct.csio_mb** %7, align 8
  %44 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %45 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mempool_free(%struct.csio_mb* %43, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %40, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_fcoe_vnp_read_init_mb(%struct.csio_lnode*, %struct.csio_mb*, i32, i32, i32, void (%struct.csio_hw*, %struct.csio_mb*)*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
