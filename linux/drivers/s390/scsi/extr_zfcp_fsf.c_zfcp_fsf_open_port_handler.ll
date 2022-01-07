; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_12__*, %struct.TYPE_8__*, %struct.zfcp_port* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.fsf_qtcb_header }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.fsf_qtcb_header = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.zfcp_port = type { i32, i32, i32, i64 }
%struct.fc_els_flogi = type { i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Not enough FCP adapter resources to open remote port 0x%016Lx\0A\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_PORT_PHYS_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_BOXED = common dso_local global i32 0, align 4
@FSF_PLOGI_MIN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_open_port_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_open_port_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.fsf_qtcb_header*, align 8
  %5 = alloca %struct.fc_els_flogi*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 3
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  store %struct.zfcp_port* %8, %struct.zfcp_port** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store %struct.fsf_qtcb_header* %12, %struct.fsf_qtcb_header** %4, align 8
  %13 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %103

20:                                               ; preds = %1
  %21 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %22 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %102 [
    i32 132, label %24
    i32 133, label %25
    i32 135, label %44
    i32 134, label %58
    i32 128, label %96
  ]

24:                                               ; preds = %20
  br label %102

25:                                               ; preds = %20
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %27 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %33 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %37 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %38 = call i32 @zfcp_erp_set_port_status(%struct.zfcp_port* %36, i32 %37)
  %39 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %41 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %102

44:                                               ; preds = %20
  %45 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %46 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %57 [
    i32 131, label %51
    i32 129, label %51
    i32 130, label %51
  ]

51:                                               ; preds = %44, %44, %44
  %52 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %44, %51
  br label %102

58:                                               ; preds = %20
  %59 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %60 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %63 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %65 = load i32, i32* @ZFCP_STATUS_PORT_PHYS_OPEN, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %68 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %67, i32 0, i32 1
  %69 = call i32 @atomic_or(i32 %66, i32* %68)
  %70 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %71 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %72 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %71, i32 0, i32 1
  %73 = call i32 @atomic_andnot(i32 %70, i32* %72)
  %74 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %75 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.fc_els_flogi*
  store %struct.fc_els_flogi* %81, %struct.fc_els_flogi** %5, align 8
  %82 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %83 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @FSF_PLOGI_MIN_LEN, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %58
  %92 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %93 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %5, align 8
  %94 = call i32 @zfcp_fc_plogi_evaluate(%struct.zfcp_port* %92, %struct.fc_els_flogi* %93)
  br label %95

95:                                               ; preds = %91, %58
  br label %102

96:                                               ; preds = %20
  %97 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %99 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %20, %96, %95, %57, %25, %24
  br label %103

103:                                              ; preds = %102, %19
  %104 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %105 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %104, i32 0, i32 0
  %106 = call i32 @put_device(i32* %105)
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @zfcp_erp_set_port_status(%struct.zfcp_port*, i32) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @zfcp_fc_plogi_evaluate(%struct.zfcp_port*, %struct.fc_els_flogi*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
