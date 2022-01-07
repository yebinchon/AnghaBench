; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_update_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_update_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ctrl = type { i32, i32, i32 }

@NVME_CSTS_SHST_CMPLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_update_cc(%struct.nvmet_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvmet_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvmet_ctrl* %0, %struct.nvmet_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @nvmet_cc_en(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @nvmet_cc_en(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %24 = call i32 @nvmet_start_ctrl(%struct.nvmet_ctrl* %23)
  br label %25

25:                                               ; preds = %22, %18, %2
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @nvmet_cc_en(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @nvmet_cc_en(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %35 = call i32 @nvmet_clear_ctrl(%struct.nvmet_ctrl* %34)
  br label %36

36:                                               ; preds = %33, %29, %25
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @nvmet_cc_shn(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @nvmet_cc_shn(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %46 = call i32 @nvmet_clear_ctrl(%struct.nvmet_ctrl* %45)
  %47 = load i32, i32* @NVME_CSTS_SHST_CMPLT, align 4
  %48 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %49 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %40, %36
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @nvmet_cc_shn(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @nvmet_cc_shn(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* @NVME_CSTS_SHST_CMPLT, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %64 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %56, %52
  %68 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %69 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @nvmet_cc_en(i32) #1

declare dso_local i32 @nvmet_start_ctrl(%struct.nvmet_ctrl*) #1

declare dso_local i32 @nvmet_clear_ctrl(%struct.nvmet_ctrl*) #1

declare dso_local i64 @nvmet_cc_shn(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
