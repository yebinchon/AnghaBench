; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fabrics-cmd.c_nvmet_execute_io_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fabrics-cmd.c_nvmet_execute_io_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.nvmf_connect_command }
%struct.nvmf_connect_command = type { i64, i64 }
%struct.nvmf_connect_data = type { i64, i32, i32 }
%struct.nvmet_ctrl = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVME_SC_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid connect version (%d).\0A\00", align 1
@NVME_SC_CONNECT_FORMAT = common dso_local global i32 0, align 4
@NVME_SC_DNR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid queue id (%d)\0A\00", align 1
@NVME_SC_CONNECT_INVALID_PARAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"adding queue %d to ctrl %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_execute_io_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_execute_io_connect(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.nvmf_connect_command*, align 8
  %4 = alloca %struct.nvmf_connect_data*, align 8
  %5 = alloca %struct.nvmet_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %8 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %9 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.nvmf_connect_command* %11, %struct.nvmf_connect_command** %3, align 8
  store %struct.nvmet_ctrl* null, %struct.nvmet_ctrl** %5, align 8
  %12 = load %struct.nvmf_connect_command*, %struct.nvmf_connect_command** %3, align 8
  %13 = getelementptr inbounds %struct.nvmf_connect_command, %struct.nvmf_connect_command* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @le16_to_cpu(i64 %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.nvmf_connect_data* @kmalloc(i32 16, i32 %16)
  store %struct.nvmf_connect_data* %17, %struct.nvmf_connect_data** %4, align 8
  %18 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %4, align 8
  %19 = icmp ne %struct.nvmf_connect_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @NVME_SC_INTERNAL, align 4
  store i32 %21, i32* %7, align 4
  br label %113

22:                                               ; preds = %1
  %23 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %24 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %4, align 8
  %25 = call i32 @nvmet_copy_from_sgl(%struct.nvmet_req* %23, i32 0, %struct.nvmf_connect_data* %24, i32 16)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %110

29:                                               ; preds = %22
  %30 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %31 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.nvmf_connect_command*, %struct.nvmf_connect_command** %3, align 8
  %36 = getelementptr inbounds %struct.nvmf_connect_command, %struct.nvmf_connect_command* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load %struct.nvmf_connect_command*, %struct.nvmf_connect_command** %3, align 8
  %41 = getelementptr inbounds %struct.nvmf_connect_command, %struct.nvmf_connect_command* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @le16_to_cpu(i64 %42)
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @NVME_SC_CONNECT_FORMAT, align 4
  %46 = load i32, i32* @NVME_SC_DNR, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %110

48:                                               ; preds = %29
  %49 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %4, align 8
  %50 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %4, align 8
  %53 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %4, align 8
  %56 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @le16_to_cpu(i64 %57)
  %59 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %60 = call i32 @nvmet_ctrl_find_get(i32 %51, i32 %54, i32 %58, %struct.nvmet_req* %59, %struct.nvmet_ctrl** %5)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %110

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %67 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %65, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @NVME_SC_CONNECT_INVALID_PARAM, align 4
  %79 = load i32, i32* @NVME_SC_DNR, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @IPO_IATTR_CONNECT_SQE(i32 %81)
  %83 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %84 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  br label %117

88:                                               ; preds = %64
  %89 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %90 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %91 = call i32 @nvmet_install_queue(%struct.nvmet_ctrl* %89, %struct.nvmet_req* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %96 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cpu_to_le16(i32 %97)
  %99 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %100 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  br label %117

104:                                              ; preds = %88
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %107 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %117, %104, %63, %39, %28
  %111 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %4, align 8
  %112 = call i32 @kfree(%struct.nvmf_connect_data* %111)
  br label %113

113:                                              ; preds = %110, %20
  %114 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @nvmet_req_complete(%struct.nvmet_req* %114, i32 %115)
  ret void

117:                                              ; preds = %94, %75
  %118 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %5, align 8
  %119 = call i32 @nvmet_ctrl_put(%struct.nvmet_ctrl* %118)
  br label %110
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local %struct.nvmf_connect_data* @kmalloc(i32, i32) #1

declare dso_local i32 @nvmet_copy_from_sgl(%struct.nvmet_req*, i32, %struct.nvmf_connect_data*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @nvmet_ctrl_find_get(i32, i32, i32, %struct.nvmet_req*, %struct.nvmet_ctrl**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IPO_IATTR_CONNECT_SQE(i32) #1

declare dso_local i32 @nvmet_install_queue(%struct.nvmet_ctrl*, %struct.nvmet_req*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvmf_connect_data*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

declare dso_local i32 @nvmet_ctrl_put(%struct.nvmet_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
