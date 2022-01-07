; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_page_ana.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_execute_get_log_page_ana.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i32 }
%struct.nvme_ana_rsp_hdr = type { i32, i32, i32 }
%struct.nvme_ana_group_desc = type { i32, i32, i32 }

@NVME_SC_INTERNAL = common dso_local global i64 0, align 8
@NVMET_MAX_NAMESPACES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nvmet_ana_sem = common dso_local global i32 0, align 4
@NVMET_MAX_ANAGRPS = common dso_local global i64 0, align 8
@nvmet_ana_group_enabled = common dso_local global i64* null, align 8
@nvmet_ana_chgcnt = common dso_local global i32 0, align 4
@NVME_AEN_BIT_ANA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_execute_get_log_page_ana to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_execute_get_log_page_ana(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.nvme_ana_rsp_hdr, align 4
  %4 = alloca %struct.nvme_ana_group_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %10 = bitcast %struct.nvme_ana_rsp_hdr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  store i64 12, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* @NVME_SC_INTERNAL, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* @NVMET_MAX_NAMESPACES, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = add i64 12, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nvme_ana_rsp_hdr* @kmalloc(i32 %16, i32 %17)
  %19 = bitcast %struct.nvme_ana_rsp_hdr* %18 to %struct.nvme_ana_group_desc*
  store %struct.nvme_ana_group_desc* %19, %struct.nvme_ana_group_desc** %4, align 8
  %20 = load %struct.nvme_ana_group_desc*, %struct.nvme_ana_group_desc** %4, align 8
  %21 = icmp ne %struct.nvme_ana_group_desc* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %95

23:                                               ; preds = %1
  %24 = call i32 @down_read(i32* @nvmet_ana_sem)
  store i64 1, i64* %7, align 8
  br label %25

25:                                               ; preds = %58, %23
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @NVMET_MAX_ANAGRPS, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load i64*, i64** @nvmet_ana_group_enabled, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %58

36:                                               ; preds = %29
  %37 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.nvme_ana_group_desc*, %struct.nvme_ana_group_desc** %4, align 8
  %40 = bitcast %struct.nvme_ana_group_desc* %39 to %struct.nvme_ana_rsp_hdr*
  %41 = call i64 @nvmet_format_ana_group(%struct.nvmet_req* %37, i64 %38, %struct.nvme_ana_rsp_hdr* %40)
  store i64 %41, i64* %6, align 8
  %42 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.nvme_ana_group_desc*, %struct.nvme_ana_group_desc** %4, align 8
  %45 = bitcast %struct.nvme_ana_group_desc* %44 to %struct.nvme_ana_rsp_hdr*
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i64 @nvmet_copy_to_sgl(%struct.nvmet_req* %42, i64 %43, %struct.nvme_ana_rsp_hdr* %45, i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %61

52:                                               ; preds = %36
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %52, %35
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %25

61:                                               ; preds = %51, %25
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @NVMET_MAX_ANAGRPS, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i64*, i64** @nvmet_ana_group_enabled, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %62

79:                                               ; preds = %62
  %80 = load i32, i32* @nvmet_ana_chgcnt, align 4
  %81 = call i32 @cpu_to_le64(i32 %80)
  %82 = getelementptr inbounds %struct.nvme_ana_rsp_hdr, %struct.nvme_ana_rsp_hdr* %3, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @cpu_to_le16(i64 %83)
  %85 = getelementptr inbounds %struct.nvme_ana_rsp_hdr, %struct.nvme_ana_rsp_hdr* %3, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %87 = load i32, i32* @NVME_AEN_BIT_ANA_CHANGE, align 4
  %88 = call i32 @nvmet_clear_aen_bit(%struct.nvmet_req* %86, i32 %87)
  %89 = call i32 @up_read(i32* @nvmet_ana_sem)
  %90 = load %struct.nvme_ana_group_desc*, %struct.nvme_ana_group_desc** %4, align 8
  %91 = bitcast %struct.nvme_ana_group_desc* %90 to %struct.nvme_ana_rsp_hdr*
  %92 = call i32 @kfree(%struct.nvme_ana_rsp_hdr* %91)
  %93 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %94 = call i64 @nvmet_copy_to_sgl(%struct.nvmet_req* %93, i64 0, %struct.nvme_ana_rsp_hdr* %3, i32 12)
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %79, %22
  %96 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @nvmet_req_complete(%struct.nvmet_req* %96, i64 %97)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nvme_ana_rsp_hdr* @kmalloc(i32, i32) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local i64 @nvmet_format_ana_group(%struct.nvmet_req*, i64, %struct.nvme_ana_rsp_hdr*) #2

declare dso_local i64 @nvmet_copy_to_sgl(%struct.nvmet_req*, i64, %struct.nvme_ana_rsp_hdr*, i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @cpu_to_le16(i64) #2

declare dso_local i32 @nvmet_clear_aen_bit(%struct.nvmet_req*, i32) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @kfree(%struct.nvme_ana_rsp_hdr*) #2

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
