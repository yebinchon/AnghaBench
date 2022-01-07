; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_rspn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_rspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.TYPE_10__*, %struct.Scsi_Host* }
%struct.TYPE_10__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.zfcp_fc_req = type { i32, i32, %struct.TYPE_7__, %struct.zfcp_fsf_ct_els }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.zfcp_fc_rspn_req, %struct.zfcp_fc_rspn_req }
%struct.zfcp_fc_rspn_req = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.zfcp_fsf_ct_els = type { i32*, i32*, i32*, i32 }
%struct.fc_ct_hdr = type { %struct.TYPE_9__, i32 }

@completion = common dso_local global i32 0, align 4
@FC_NS_RSPN_ID = common dso_local global i32 0, align 4
@FC_SYMBOLIC_NAME_SIZE = common dso_local global i32 0, align 4
@zfcp_fc_complete = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_adapter*, %struct.zfcp_fc_req*)* @zfcp_fc_rspn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_rspn(%struct.zfcp_adapter* %0, %struct.zfcp_fc_req* %1) #0 {
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_fc_req*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %7 = alloca %struct.zfcp_fc_rspn_req*, align 8
  %8 = alloca %struct.fc_ct_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  store %struct.zfcp_fc_req* %1, %struct.zfcp_fc_req** %4, align 8
  %11 = load i32, i32* @completion, align 4
  %12 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %11)
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 1
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %5, align 8
  %16 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %16, i32 0, i32 3
  store %struct.zfcp_fsf_ct_els* %17, %struct.zfcp_fsf_ct_els** %6, align 8
  %18 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %19 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store %struct.zfcp_fc_rspn_req* %21, %struct.zfcp_fc_rspn_req** %7, align 8
  %22 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %23 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = bitcast %struct.zfcp_fc_rspn_req* %25 to %struct.fc_ct_hdr*
  store %struct.fc_ct_hdr* %26, %struct.fc_ct_hdr** %8, align 8
  %27 = load %struct.zfcp_fc_rspn_req*, %struct.zfcp_fc_rspn_req** %7, align 8
  %28 = getelementptr inbounds %struct.zfcp_fc_rspn_req, %struct.zfcp_fc_rspn_req* %27, i32 0, i32 1
  %29 = load i32, i32* @FC_NS_RSPN_ID, align 4
  %30 = load i32, i32* @FC_SYMBOLIC_NAME_SIZE, align 4
  %31 = call i32 @zfcp_fc_ct_ns_init(i32* %28, i32 %29, i32 %30)
  %32 = load %struct.zfcp_fc_rspn_req*, %struct.zfcp_fc_rspn_req** %7, align 8
  %33 = getelementptr inbounds %struct.zfcp_fc_rspn_req, %struct.zfcp_fc_rspn_req* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %38 = call i32 @fc_host_port_id(%struct.Scsi_Host* %37)
  %39 = call i32 @hton24(i32 %36, i32 %38)
  %40 = load %struct.zfcp_fc_rspn_req*, %struct.zfcp_fc_rspn_req** %7, align 8
  %41 = getelementptr inbounds %struct.zfcp_fc_rspn_req, %struct.zfcp_fc_rspn_req* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %45 = call i32 @fc_host_symbolic_name(%struct.Scsi_Host* %44)
  %46 = load i32, i32* @FC_SYMBOLIC_NAME_SIZE, align 4
  %47 = call i32 @strlcpy(i32 %43, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.zfcp_fc_rspn_req*, %struct.zfcp_fc_rspn_req** %7, align 8
  %50 = getelementptr inbounds %struct.zfcp_fc_rspn_req, %struct.zfcp_fc_rspn_req* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %53 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %52, i32 0, i32 1
  %54 = load %struct.zfcp_fc_rspn_req*, %struct.zfcp_fc_rspn_req** %7, align 8
  %55 = call i32 @sg_init_one(i32* %53, %struct.zfcp_fc_rspn_req* %54, i32 16)
  %56 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %56, i32 0, i32 0
  %58 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %8, align 8
  %59 = bitcast %struct.fc_ct_hdr* %58 to %struct.zfcp_fc_rspn_req*
  %60 = call i32 @sg_init_one(i32* %57, %struct.zfcp_fc_rspn_req* %59, i32 16)
  %61 = load i32, i32* @zfcp_fc_complete, align 4
  %62 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %63 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %64, i32 0, i32 2
  store i32* @completion, i32** %65, align 8
  %66 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %67 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %66, i32 0, i32 1
  %68 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %69 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %70, i32 0, i32 0
  %72 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %73 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %79 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %80 = call i32 @zfcp_fsf_send_ct(i32* %77, %struct.zfcp_fsf_ct_els* %78, i32* null, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %2
  %84 = call i32 @wait_for_completion(i32* @completion)
  br label %85

85:                                               ; preds = %83, %2
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @zfcp_fc_ct_ns_init(i32*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @fc_host_port_id(%struct.Scsi_Host*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @fc_host_symbolic_name(%struct.Scsi_Host*) #1

declare dso_local i32 @sg_init_one(i32*, %struct.zfcp_fc_rspn_req*, i32) #1

declare dso_local i32 @zfcp_fsf_send_ct(i32*, %struct.zfcp_fsf_ct_els*, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
