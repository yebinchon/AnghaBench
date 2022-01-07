; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_sge_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_sge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, i32 }

@CSIO_DEV_STATE_INIT = common dso_local global i64 0, align 8
@CSIO_HWF_USING_SOFT_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_wr_sge_init(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %3 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %4 = call i64 @csio_is_hw_master(%struct.csio_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %8 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CSIO_DEV_STATE_INIT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %14 = call i32 @csio_wr_fixup_host_params(%struct.csio_hw* %13)
  br label %15

15:                                               ; preds = %12, %6
  %16 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %17 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %24 = call i32 @csio_wr_get_sge(%struct.csio_hw* %23)
  br label %28

25:                                               ; preds = %15
  %26 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %27 = call i32 @csio_wr_set_sge(%struct.csio_hw* %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %31 = call i32 @csio_wr_get_sge(%struct.csio_hw* %30)
  br label %32

32:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @csio_is_hw_master(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_fixup_host_params(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_get_sge(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_set_sge(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
