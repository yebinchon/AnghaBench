; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.zfcp_fc_req = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { %struct.zfcp_fc_req*, i32, i32*, i32*, %struct.zfcp_port* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }

@zfcp_fc_req_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_fc_adisc_handler = common dso_local global i32 0, align 4
@ELS_ADISC = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_port*)* @zfcp_fc_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_adisc(%struct.zfcp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.zfcp_fc_req*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %8, i32 0, i32 1
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %5, align 8
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 0
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %6, align 8
  %14 = load i32, i32* @zfcp_fc_req_cache, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.zfcp_fc_req* @kmem_cache_zalloc(i32 %14, i32 %15)
  store %struct.zfcp_fc_req* %16, %struct.zfcp_fc_req** %4, align 8
  %17 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %18 = icmp ne %struct.zfcp_fc_req* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %1
  %23 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %24 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  store %struct.zfcp_port* %23, %struct.zfcp_port** %26, align 8
  %27 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %28 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %27, i32 0, i32 3
  %29 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %30 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i32* %28, i32** %31, align 8
  %32 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %33 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %32, i32 0, i32 2
  %34 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32* %33, i32** %36, align 8
  %37 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %37, i32 0, i32 3
  %39 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %40 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @sg_init_one(i32* %38, %struct.TYPE_8__* %42, i32 4)
  %44 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %45 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %44, i32 0, i32 2
  %46 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %47 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @sg_init_one(i32* %45, %struct.TYPE_8__* %49, i32 4)
  %51 = load i32, i32* @zfcp_fc_adisc_handler, align 4
  %52 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %53 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %56 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store %struct.zfcp_fc_req* %55, %struct.zfcp_fc_req** %58, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %60 = call i32 @fc_host_port_name(%struct.Scsi_Host* %59)
  %61 = call i8* @cpu_to_be64(i32 %60)
  %62 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %63 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i8* %61, i8** %66, align 8
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %68 = call i32 @fc_host_node_name(%struct.Scsi_Host* %67)
  %69 = call i8* @cpu_to_be64(i32 %68)
  %70 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i8* %69, i8** %74, align 8
  %75 = load i32, i32* @ELS_ADISC, align 4
  %76 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %77 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 4
  %81 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %82 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %88 = call i32 @fc_host_port_id(%struct.Scsi_Host* %87)
  %89 = call i32 @hton24(i32 %86, i32 %88)
  %90 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %91 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %92 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %95 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %94, i32 0, i32 0
  %96 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %97 = call i32 @zfcp_fsf_send_els(%struct.zfcp_adapter* %90, i32 %93, %struct.TYPE_7__* %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %22
  %101 = load i32, i32* @zfcp_fc_req_cache, align 4
  %102 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %4, align 8
  %103 = call i32 @kmem_cache_free(i32 %101, %struct.zfcp_fc_req* %102)
  br label %104

104:                                              ; preds = %100, %22
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.zfcp_fc_req* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @sg_init_one(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @fc_host_port_name(%struct.Scsi_Host*) #1

declare dso_local i32 @fc_host_node_name(%struct.Scsi_Host*) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @fc_host_port_id(%struct.Scsi_Host*) #1

declare dso_local i32 @zfcp_fsf_send_els(%struct.zfcp_adapter*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.zfcp_fc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
