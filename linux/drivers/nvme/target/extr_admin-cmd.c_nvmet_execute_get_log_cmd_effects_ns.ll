; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_cmd_effects_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_cmd_effects_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i32 }
%struct.nvme_effects_log = type { i8**, i8** }

@NVME_SC_INTERNAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nvme_admin_get_log_page = common dso_local global i64 0, align 8
@nvme_admin_identify = common dso_local global i64 0, align 8
@nvme_admin_abort_cmd = common dso_local global i64 0, align 8
@nvme_admin_set_features = common dso_local global i64 0, align 8
@nvme_admin_get_features = common dso_local global i64 0, align 8
@nvme_admin_async_event = common dso_local global i64 0, align 8
@nvme_admin_keep_alive = common dso_local global i64 0, align 8
@nvme_cmd_read = common dso_local global i64 0, align 8
@nvme_cmd_write = common dso_local global i64 0, align 8
@nvme_cmd_flush = common dso_local global i64 0, align 8
@nvme_cmd_dsm = common dso_local global i64 0, align 8
@nvme_cmd_write_zeroes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_execute_get_log_cmd_effects_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_execute_get_log_cmd_effects_ns(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_effects_log*, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %5 = load i32, i32* @NVME_SC_INTERNAL, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nvme_effects_log* @kzalloc(i32 16, i32 %6)
  store %struct.nvme_effects_log* %7, %struct.nvme_effects_log** %4, align 8
  %8 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %9 = icmp ne %struct.nvme_effects_log* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %89

11:                                               ; preds = %1
  %12 = call i8* @cpu_to_le32(i32 1)
  %13 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %14 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %13, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = load i64, i64* @nvme_admin_get_log_page, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  store i8* %12, i8** %17, align 8
  %18 = call i8* @cpu_to_le32(i32 1)
  %19 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* @nvme_admin_identify, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %18, i8** %23, align 8
  %24 = call i8* @cpu_to_le32(i32 1)
  %25 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @nvme_admin_abort_cmd, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* %24, i8** %29, align 8
  %30 = call i8* @cpu_to_le32(i32 1)
  %31 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* @nvme_admin_set_features, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8* %30, i8** %35, align 8
  %36 = call i8* @cpu_to_le32(i32 1)
  %37 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %38 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* @nvme_admin_get_features, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8* %36, i8** %41, align 8
  %42 = call i8* @cpu_to_le32(i32 1)
  %43 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %44 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* @nvme_admin_async_event, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %42, i8** %47, align 8
  %48 = call i8* @cpu_to_le32(i32 1)
  %49 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* @nvme_admin_keep_alive, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = call i8* @cpu_to_le32(i32 1)
  %55 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* @nvme_cmd_read, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  %60 = call i8* @cpu_to_le32(i32 1)
  %61 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %62 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i64, i64* @nvme_cmd_write, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  store i8* %60, i8** %65, align 8
  %66 = call i8* @cpu_to_le32(i32 1)
  %67 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %68 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* @nvme_cmd_flush, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  store i8* %66, i8** %71, align 8
  %72 = call i8* @cpu_to_le32(i32 1)
  %73 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %74 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* @nvme_cmd_dsm, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  store i8* %72, i8** %77, align 8
  %78 = call i8* @cpu_to_le32(i32 1)
  %79 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %80 = getelementptr inbounds %struct.nvme_effects_log, %struct.nvme_effects_log* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* @nvme_cmd_write_zeroes, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %78, i8** %83, align 8
  %84 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %85 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %86 = call i32 @nvmet_copy_to_sgl(%struct.nvmet_req* %84, i32 0, %struct.nvme_effects_log* %85, i32 16)
  store i32 %86, i32* %3, align 4
  %87 = load %struct.nvme_effects_log*, %struct.nvme_effects_log** %4, align 8
  %88 = call i32 @kfree(%struct.nvme_effects_log* %87)
  br label %89

89:                                               ; preds = %11, %10
  %90 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @nvmet_req_complete(%struct.nvmet_req* %90, i32 %91)
  ret void
}

declare dso_local %struct.nvme_effects_log* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @nvmet_copy_to_sgl(%struct.nvmet_req*, i32, %struct.nvme_effects_log*, i32) #1

declare dso_local i32 @kfree(%struct.nvme_effects_log*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
