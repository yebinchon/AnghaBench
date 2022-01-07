; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_ep_fwdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_ep_fwdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.dev_db_entry = type { i32, i32, i32 }
%struct.sockaddr_in = type { i8*, i32 }
%struct.sockaddr_in6 = type { i8*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@DDB_OPT_IPV6_DEVICE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPv6_ADDR_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IP_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_endpoint* (%struct.scsi_qla_host*, %struct.dev_db_entry*)* @qla4xxx_get_ep_fwdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_endpoint* @qla4xxx_get_ep_fwdb(%struct.scsi_qla_host* %0, %struct.dev_db_entry* %1) #0 {
  %3 = alloca %struct.iscsi_endpoint*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.dev_db_entry*, align 8
  %6 = alloca %struct.iscsi_endpoint*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i8*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %5, align 8
  %12 = call %struct.sockaddr_storage* @vmalloc(i32 4)
  store %struct.sockaddr_storage* %12, %struct.sockaddr_storage** %10, align 8
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %14 = icmp ne %struct.sockaddr_storage* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.iscsi_endpoint* null, %struct.iscsi_endpoint** %3, align 8
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %18 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DDB_OPT_IPV6_DEVICE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %25 = bitcast %struct.sockaddr_storage* %24 to %struct.sockaddr*
  store %struct.sockaddr* %25, %struct.sockaddr** %9, align 8
  %26 = load i32, i32* @AF_INET6, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %30 = bitcast %struct.sockaddr_storage* %29 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %30, %struct.sockaddr_in6** %8, align 8
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 1
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %36 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IPv6_ADDR_LEN, align 4
  %39 = call i32 @memcpy(i8* %34, i32 %37, i32 %38)
  %40 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %41 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = call i8* @htons(i32 %43)
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %71

47:                                               ; preds = %16
  %48 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %49 = bitcast %struct.sockaddr_storage* %48 to %struct.sockaddr*
  store %struct.sockaddr* %49, %struct.sockaddr** %9, align 8
  %50 = load i32, i32* @AF_INET, align 4
  %51 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %54 = bitcast %struct.sockaddr_storage* %53 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %54, %struct.sockaddr_in** %7, align 8
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 1
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %60 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IP_ADDR_LEN, align 4
  %63 = call i32 @memcpy(i8* %58, i32 %61, i32 %62)
  %64 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %65 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = call i8* @htons(i32 %67)
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %47, %23
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %76 = bitcast %struct.sockaddr_storage* %75 to %struct.sockaddr*
  %77 = call %struct.iscsi_endpoint* @qla4xxx_ep_connect(i32 %74, %struct.sockaddr* %76, i32 0)
  store %struct.iscsi_endpoint* %77, %struct.iscsi_endpoint** %6, align 8
  %78 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %79 = call i32 @vfree(%struct.sockaddr_storage* %78)
  %80 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  store %struct.iscsi_endpoint* %80, %struct.iscsi_endpoint** %3, align 8
  br label %81

81:                                               ; preds = %71, %15
  %82 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %3, align 8
  ret %struct.iscsi_endpoint* %82
}

declare dso_local %struct.sockaddr_storage* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.iscsi_endpoint* @qla4xxx_ep_connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @vfree(%struct.sockaddr_storage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
