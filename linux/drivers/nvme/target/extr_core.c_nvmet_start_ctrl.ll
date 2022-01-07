; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_start_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_start_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ctrl = type { i32, i32, i32, i32, i32 }

@NVME_NVM_IOSQES = common dso_local global i64 0, align 8
@NVME_NVM_IOCQES = common dso_local global i64 0, align 8
@NVME_CSTS_CFS = common dso_local global i32 0, align 4
@NVME_CSTS_RDY = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_ctrl*)* @nvmet_start_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_start_ctrl(%struct.nvmet_ctrl* %0) #0 {
  %2 = alloca %struct.nvmet_ctrl*, align 8
  store %struct.nvmet_ctrl* %0, %struct.nvmet_ctrl** %2, align 8
  %3 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %3, i32 0, i32 4
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @nvmet_cc_iosqes(i32 %8)
  %10 = load i64, i64* @NVME_NVM_IOSQES, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %14 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nvmet_cc_iocqes(i32 %15)
  %17 = load i64, i64* @NVME_NVM_IOCQES, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %12
  %20 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %21 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nvmet_cc_mps(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %27 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @nvmet_cc_ams(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %33 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nvmet_cc_css(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %25, %19, %12, %1
  %38 = load i32, i32* @NVME_CSTS_CFS, align 4
  %39 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %40 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %54

41:                                               ; preds = %31
  %42 = load i32, i32* @NVME_CSTS_RDY, align 4
  %43 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %44 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @system_wq, align 4
  %46 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %47 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %46, i32 0, i32 1
  %48 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %2, align 8
  %49 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HZ, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 @mod_delayed_work(i32 %45, i32* %47, i32 %52)
  br label %54

54:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @nvmet_cc_iosqes(i32) #1

declare dso_local i64 @nvmet_cc_iocqes(i32) #1

declare dso_local i64 @nvmet_cc_mps(i32) #1

declare dso_local i64 @nvmet_cc_ams(i32) #1

declare dso_local i64 @nvmet_cc_css(i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
