; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_adisc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_req = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, %struct.zfcp_port* }
%struct.zfcp_port = type { i64, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.fc_els_adisc }
%struct.fc_els_adisc = type { i32, i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fcadh_1\00", align 1
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fcadh_2\00", align 1
@ZFCP_STATUS_PORT_LINK_TEST = common dso_local global i32 0, align 4
@zfcp_fc_req_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zfcp_fc_adisc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_adisc_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.zfcp_fc_req*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca %struct.fc_els_adisc*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.zfcp_fc_req*
  store %struct.zfcp_fc_req* %7, %struct.zfcp_fc_req** %3, align 8
  %8 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_port* %11, %struct.zfcp_port** %4, align 8
  %12 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.fc_els_adisc* %15, %struct.fc_els_adisc** %5, align 8
  %16 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %23 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %24 = call i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port* %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %60

25:                                               ; preds = %1
  %26 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %5, align 8
  %32 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be64_to_cpu(i32 %33)
  %35 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %36 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %39 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %5, align 8
  %42 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be64_to_cpu(i32 %43)
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %48 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %47, i32 0, i32 2
  %49 = call i32 @atomic_read(i32* %48)
  %50 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %55 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %56 = call i32 @zfcp_erp_port_reopen(%struct.zfcp_port* %54, i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %60

57:                                               ; preds = %46
  %58 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %59 = call i32 @zfcp_scsi_schedule_rport_register(%struct.zfcp_port* %58)
  br label %60

60:                                               ; preds = %57, %53, %21
  %61 = load i32, i32* @ZFCP_STATUS_PORT_LINK_TEST, align 4
  %62 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %63 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %62, i32 0, i32 2
  %64 = call i32 @atomic_andnot(i32 %61, i32* %63)
  %65 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %66 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %65, i32 0, i32 1
  %67 = call i32 @put_device(i32* %66)
  %68 = load i32, i32* @zfcp_fc_req_cache, align 4
  %69 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %3, align 8
  %70 = call i32 @kmem_cache_free(i32 %68, %struct.zfcp_fc_req* %69)
  ret void
}

declare dso_local i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port*, i32, i8*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.zfcp_port*, i32, i8*) #1

declare dso_local i32 @zfcp_scsi_schedule_rport_register(%struct.zfcp_port*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.zfcp_fc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
