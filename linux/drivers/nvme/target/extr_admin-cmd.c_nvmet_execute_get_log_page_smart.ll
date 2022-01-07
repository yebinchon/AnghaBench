; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_page_smart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_page_smart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.nvme_smart_log = type { i32 }

@NVME_SC_INTERNAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@NVME_NSID_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_execute_get_log_page_smart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_execute_get_log_page_smart(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.nvme_smart_log*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %6 = load i64, i64* @NVME_SC_INTERNAL, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %74

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nvme_smart_log* @kzalloc(i32 4, i32 %14)
  store %struct.nvme_smart_log* %15, %struct.nvme_smart_log** %3, align 8
  %16 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %3, align 8
  %17 = icmp ne %struct.nvme_smart_log* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %74

19:                                               ; preds = %13
  %20 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %21 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @NVME_NSID_ALL, align 4
  %27 = call i64 @cpu_to_le32(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %31 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %3, align 8
  %32 = call i64 @nvmet_get_smart_log_all(%struct.nvmet_req* %30, %struct.nvme_smart_log* %31)
  store i64 %32, i64* %4, align 8
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %35 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %3, align 8
  %36 = call i64 @nvmet_get_smart_log_nsid(%struct.nvmet_req* %34, %struct.nvme_smart_log* %35)
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %71

41:                                               ; preds = %37
  %42 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %43 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %51 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %3, align 8
  %58 = getelementptr inbounds %struct.nvme_smart_log, %struct.nvme_smart_log* %57, i32 0, i32 0
  %59 = call i32 @put_unaligned_le64(i32 %56, i32* %58)
  %60 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %61 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %69 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %3, align 8
  %70 = call i64 @nvmet_copy_to_sgl(%struct.nvmet_req* %68, i32 0, %struct.nvme_smart_log* %69, i32 4)
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %41, %40
  %72 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %3, align 8
  %73 = call i32 @kfree(%struct.nvme_smart_log* %72)
  br label %74

74:                                               ; preds = %71, %18, %12
  %75 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @nvmet_req_complete(%struct.nvmet_req* %75, i64 %76)
  ret void
}

declare dso_local %struct.nvme_smart_log* @kzalloc(i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @nvmet_get_smart_log_all(%struct.nvmet_req*, %struct.nvme_smart_log*) #1

declare dso_local i64 @nvmet_get_smart_log_nsid(%struct.nvmet_req*, %struct.nvme_smart_log*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @nvmet_copy_to_sgl(%struct.nvmet_req*, i32, %struct.nvme_smart_log*, i32) #1

declare dso_local i32 @kfree(%struct.nvme_smart_log*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
