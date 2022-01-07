; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_ip_rfc1001_connect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_ip_rfc1001_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64*, i64* }
%struct.rfc1002_session_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i32, i32 }
%struct.smb_hdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RFC1001_NAME_LEN_WITH_NULL = common dso_local global i32 0, align 4
@DEFAULT_CIFS_CALLED_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"LINUX_CIFS_CLNT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @ip_rfc1001_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_rfc1001_connect(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca %struct.TCP_Server_Info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfc1002_session_packet*, align 8
  %5 = alloca %struct.smb_hdr*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.rfc1002_session_packet* @kzalloc(i32 32, i32 %6)
  store %struct.rfc1002_session_packet* %7, %struct.rfc1002_session_packet** %4, align 8
  %8 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %9 = icmp ne %struct.rfc1002_session_packet* %8, null
  br i1 %9, label %10, label %93

10:                                               ; preds = %1
  %11 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %12 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 32, i32* %14, align 8
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %10
  %22 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %23 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %28 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = bitcast i64* %29 to i8*
  %31 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %32 = call i32 @rfc1002mangle(i32 %26, i8* %30, i32 %31)
  br label %42

33:                                               ; preds = %10
  %34 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %35 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** @DEFAULT_CIFS_CALLED_NAME, align 8
  %40 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %41 = call i32 @rfc1002mangle(i32 %38, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %21
  %43 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %44 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 32, i32* %46, align 4
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %48 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %42
  %54 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %55 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %60 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = bitcast i64* %61 to i8*
  %63 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %64 = call i32 @rfc1002mangle(i32 %58, i8* %62, i32 %63)
  br label %73

65:                                               ; preds = %42
  %66 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %67 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RFC1001_NAME_LEN_WITH_NULL, align 4
  %72 = call i32 @rfc1002mangle(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65, %53
  %74 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %75 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %79 = getelementptr inbounds %struct.rfc1002_session_packet, %struct.rfc1002_session_packet* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %83 = bitcast %struct.rfc1002_session_packet* %82 to %struct.smb_hdr*
  store %struct.smb_hdr* %83, %struct.smb_hdr** %5, align 8
  %84 = call i32 @cpu_to_be32(i32 -2130706364)
  %85 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %86 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %88 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %89 = call i32 @smb_send(%struct.TCP_Server_Info* %87, %struct.smb_hdr* %88, i32 68)
  store i32 %89, i32* %3, align 4
  %90 = load %struct.rfc1002_session_packet*, %struct.rfc1002_session_packet** %4, align 8
  %91 = call i32 @kfree(%struct.rfc1002_session_packet* %90)
  %92 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %93

93:                                               ; preds = %73, %1
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.rfc1002_session_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @rfc1002mangle(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @smb_send(%struct.TCP_Server_Info*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @kfree(%struct.rfc1002_session_packet*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
