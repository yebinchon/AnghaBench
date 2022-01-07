; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_ip_connect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_ip_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in6 = type { i64 }
%struct.sockaddr_in = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@CIFS_PORT = common dso_local global i32 0, align 4
@RFC1001_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @ip_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_connect(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %9 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %8, i32 0, i32 0
  %10 = bitcast %struct.TYPE_2__* %9 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %10, %struct.sockaddr_in6** %5, align 8
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_2__* %12 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %13, %struct.sockaddr_in** %6, align 8
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 0
  store i64* %22, i64** %4, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  store i64* %25, i64** %4, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* @CIFS_PORT, align 4
  %32 = call i64 @htons(i32 %31)
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %35 = call i32 @generic_ip_connect(%struct.TCP_Server_Info* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %30
  %41 = load i32, i32* @RFC1001_PORT, align 4
  %42 = call i64 @htons(i32 %41)
  %43 = load i64*, i64** %4, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %46 = call i32 @generic_ip_connect(%struct.TCP_Server_Info* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @generic_ip_connect(%struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
