; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_changed_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_changed_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvmet_ctrl* }
%struct.nvmet_ctrl = type { i32, i32, i32 }

@NVME_SC_INTERNAL = common dso_local global i64 0, align 8
@NVME_MAX_CHANGED_NAMESPACES = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@NVME_AEN_BIT_NS_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_execute_get_log_changed_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_execute_get_log_changed_ns(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.nvmet_ctrl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %6 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %9, align 8
  store %struct.nvmet_ctrl* %10, %struct.nvmet_ctrl** %3, align 8
  %11 = load i64, i64* @NVME_SC_INTERNAL, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %13 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* @NVME_MAX_CHANGED_NAMESPACES, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @U32_MAX, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i64 4, i64* %5, align 8
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %31, %30
  %38 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %39 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @nvmet_copy_to_sgl(%struct.nvmet_req* %38, i32 0, i32 %41, i64 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %50 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %5, align 8
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i64 @nvmet_zero_sgl(%struct.nvmet_req* %47, i64 %48, i32 %55)
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %46, %37
  %58 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %59 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %61 = load i32, i32* @NVME_AEN_BIT_NS_ATTR, align 4
  %62 = call i32 @nvmet_clear_aen_bit(%struct.nvmet_req* %60, i32 %61)
  %63 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %64 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %57, %20
  %67 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @nvmet_req_complete(%struct.nvmet_req* %67, i64 %68)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @nvmet_copy_to_sgl(%struct.nvmet_req*, i32, i32, i64) #1

declare dso_local i64 @nvmet_zero_sgl(%struct.nvmet_req*, i64, i32) #1

declare dso_local i32 @nvmet_clear_aen_bit(%struct.nvmet_req*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
