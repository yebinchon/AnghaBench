; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_status_read_buffer*, %struct.zfcp_adapter* }
%struct.fsf_status_read_buffer = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.zfcp_adapter = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ZFCP_STATUS_FSFREQ_DISMISSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fssrh_1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fssrh_4\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fssrh_3\00", align 1
@ber_stop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"All paths over this FCP device are disused because of excessive bit errors\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fssrh_b\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"The error threshold for checksum statistics has been exceeded\0A\00", align 1
@FCH_EVT_LINKDOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"The local link has been restored\0A\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"fssrh_2\00", align 1
@FCH_EVT_LINKUP = common dso_local global i32 0, align 4
@FSF_STATUS_READ_SUB_INCOMING_ELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_status_read_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_status_read_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.fsf_status_read_buffer*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 2
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_adapter* %7, %struct.zfcp_adapter** %3, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 1
  %10 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %9, align 8
  store %struct.fsf_status_read_buffer* %10, %struct.fsf_status_read_buffer** %4, align 8
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %19 = call i32 @zfcp_dbf_hba_fsf_uss(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %18)
  %20 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %21 = call i32 @virt_to_page(%struct.fsf_status_read_buffer* %20)
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mempool_free(i32 %21, i32 %25)
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %28 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %27)
  br label %124

29:                                               ; preds = %1
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %31 = call i32 @zfcp_dbf_hba_fsf_uss(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %30)
  %32 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %105 [
    i32 129, label %35
    i32 133, label %38
    i32 128, label %41
    i32 135, label %42
    i32 132, label %62
    i32 131, label %68
    i32 130, label %85
    i32 134, label %96
  ]

35:                                               ; preds = %29
  %36 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %37 = call i32 @zfcp_fsf_status_read_port_closed(%struct.zfcp_fsf_req* %36)
  br label %105

38:                                               ; preds = %29
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %40 = call i32 @zfcp_fc_incoming_els(%struct.zfcp_fsf_req* %39)
  br label %105

41:                                               ; preds = %29
  br label %105

42:                                               ; preds = %29
  %43 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %44 = call i32 @zfcp_dbf_hba_bit_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.zfcp_fsf_req* %43)
  %45 = load i32, i32* @ber_stop, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %48, i32 0, i32 5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %54 = call i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter* %53, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %61

55:                                               ; preds = %42
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @dev_warn(i32* %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %47
  br label %105

62:                                               ; preds = %29
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %64 = call i32 @zfcp_fsf_status_read_link_down(%struct.zfcp_fsf_req* %63)
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %66 = load i32, i32* @FCH_EVT_LINKDOWN, align 4
  %67 = call i32 @zfcp_fc_enqueue_event(%struct.zfcp_adapter* %65, i32 %66, i32 0)
  br label %105

68:                                               ; preds = %29
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @dev_info(i32* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %75 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %76 = call i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter* %74, i32 %75)
  %77 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %78 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %79 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %77, i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %83 = load i32, i32* @FCH_EVT_LINKUP, align 4
  %84 = call i32 @zfcp_fc_enqueue_event(%struct.zfcp_adapter* %82, i32 %83, i32 0)
  br label %105

85:                                               ; preds = %29
  %86 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %87 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FSF_STATUS_READ_SUB_INCOMING_ELS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %94 = call i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter* %93)
  br label %95

95:                                               ; preds = %92, %85
  br label %105

96:                                               ; preds = %29
  %97 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %98 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %29, %96, %95, %68, %62, %61, %41, %38, %35
  %106 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %107 = call i32 @virt_to_page(%struct.fsf_status_read_buffer* %106)
  %108 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @mempool_free(i32 %107, i32 %111)
  %113 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %114 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %113)
  %115 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %115, i32 0, i32 2
  %117 = call i32 @atomic_inc(i32* %116)
  %118 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %121, i32 0, i32 0
  %123 = call i32 @queue_work(i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %105, %17
  ret void
}

declare dso_local i32 @zfcp_dbf_hba_fsf_uss(i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @mempool_free(i32, i32) #1

declare dso_local i32 @virt_to_page(%struct.fsf_status_read_buffer*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_status_read_port_closed(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_incoming_els(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_dbf_hba_bit_err(i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_fsf_status_read_link_down(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_enqueue_event(%struct.zfcp_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_set_adapter_status(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
