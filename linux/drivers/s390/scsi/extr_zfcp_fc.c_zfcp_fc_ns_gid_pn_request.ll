; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.zfcp_fc_req = type { %struct.TYPE_12__, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32*, i32*, i32*, i32, %struct.zfcp_port* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.zfcp_fc_gid_pn_rsp, %struct.zfcp_fc_gid_pn_rsp }
%struct.zfcp_fc_gid_pn_rsp = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.zfcp_fc_gid_pn_req = type { %struct.TYPE_9__, i32 }

@completion = common dso_local global i32 0, align 4
@zfcp_fc_complete = common dso_local global i32 0, align 4
@FC_NS_GID_PN = common dso_local global i32 0, align 4
@ZFCP_FC_CT_SIZE_PAGE = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_port*, %struct.zfcp_fc_req*)* @zfcp_fc_ns_gid_pn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_ns_gid_pn_request(%struct.zfcp_port* %0, %struct.zfcp_fc_req* %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.zfcp_fc_req*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_fc_gid_pn_req*, align 8
  %7 = alloca %struct.zfcp_fc_gid_pn_rsp*, align 8
  %8 = alloca i32, align 4
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store %struct.zfcp_fc_req* %1, %struct.zfcp_fc_req** %4, align 8
  %9 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %9, i32 0, i32 1
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  store %struct.zfcp_adapter* %11, %struct.zfcp_adapter** %5, align 8
  %12 = load i32, i32* @completion, align 4
  %13 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %12)
  %14 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %15 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = bitcast %struct.zfcp_fc_gid_pn_rsp* %17 to %struct.zfcp_fc_gid_pn_req*
  store %struct.zfcp_fc_gid_pn_req* %18, %struct.zfcp_fc_gid_pn_req** %6, align 8
  %19 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %20 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.zfcp_fc_gid_pn_rsp* %22, %struct.zfcp_fc_gid_pn_rsp** %7, align 8
  %23 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %24 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  store %struct.zfcp_port* %23, %struct.zfcp_port** %26, align 8
  %27 = load i32, i32* @zfcp_fc_complete, align 4
  %28 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %29 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %32 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32* @completion, i32** %33, align 8
  %34 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %34, i32 0, i32 2
  %36 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %37 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  store i32* %35, i32** %38, align 8
  %39 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %40 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %39, i32 0, i32 1
  %41 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %42 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %45 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %44, i32 0, i32 2
  %46 = load %struct.zfcp_fc_gid_pn_req*, %struct.zfcp_fc_gid_pn_req** %6, align 8
  %47 = bitcast %struct.zfcp_fc_gid_pn_req* %46 to %struct.zfcp_fc_gid_pn_rsp*
  %48 = call i32 @sg_init_one(i32* %45, %struct.zfcp_fc_gid_pn_rsp* %47, i32 8)
  %49 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %50 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %49, i32 0, i32 1
  %51 = load %struct.zfcp_fc_gid_pn_rsp*, %struct.zfcp_fc_gid_pn_rsp** %7, align 8
  %52 = call i32 @sg_init_one(i32* %50, %struct.zfcp_fc_gid_pn_rsp* %51, i32 8)
  %53 = load %struct.zfcp_fc_gid_pn_req*, %struct.zfcp_fc_gid_pn_req** %6, align 8
  %54 = getelementptr inbounds %struct.zfcp_fc_gid_pn_req, %struct.zfcp_fc_gid_pn_req* %53, i32 0, i32 1
  %55 = load i32, i32* @FC_NS_GID_PN, align 4
  %56 = load i32, i32* @ZFCP_FC_CT_SIZE_PAGE, align 4
  %57 = call i32 @zfcp_fc_ct_ns_init(i32* %54, i32 %55, i32 %56)
  %58 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %59 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cpu_to_be64(i32 %60)
  %62 = load %struct.zfcp_fc_gid_pn_req*, %struct.zfcp_fc_gid_pn_req** %6, align 8
  %63 = getelementptr inbounds %struct.zfcp_fc_gid_pn_req, %struct.zfcp_fc_gid_pn_req* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %70 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %69, i32 0, i32 0
  %71 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %76 = call i32 @zfcp_fsf_send_ct(i32* %68, %struct.TYPE_12__* %70, i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %2
  %80 = call i32 @wait_for_completion(i32* @completion)
  %81 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %82 = call i32 @zfcp_fc_ns_gid_pn_eval(%struct.zfcp_fc_req* %81)
  br label %83

83:                                               ; preds = %79, %2
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @sg_init_one(i32*, %struct.zfcp_fc_gid_pn_rsp*, i32) #1

declare dso_local i32 @zfcp_fc_ct_ns_init(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @zfcp_fsf_send_ct(i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @zfcp_fc_ns_gid_pn_eval(%struct.zfcp_fc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
