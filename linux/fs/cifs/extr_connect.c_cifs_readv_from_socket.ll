; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_readv_from_socket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_readv_from_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32, i64 }
%struct.msghdr = type { i64, i32* }

@ECONNABORTED = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Received no data or error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.msghdr*)* @cifs_readv_from_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_readv_from_socket(%struct.TCP_Server_Info* %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %9 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %11 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %103, %2
  %13 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %14 = call i64 @msg_data_left(%struct.msghdr* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %12
  %17 = call i32 (...) @try_to_freeze()
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %19 = call i64 @zero_credits(%struct.TCP_Server_Info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %23 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %22)
  %24 = load i32, i32* @ECONNABORTED, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %16
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %28 = call i64 @server_unresponsive(%struct.TCP_Server_Info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ECONNABORTED, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %109

33:                                               ; preds = %26
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %35 = call i64 @cifs_rdma_enabled(%struct.TCP_Server_Info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %39 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %44 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %47 = call i32 @smbd_recv(i64 %45, %struct.msghdr* %46)
  store i32 %47, i32* %6, align 4
  br label %54

48:                                               ; preds = %37, %33
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %50 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %53 = call i32 @sock_recvmsg(i32 %51, %struct.msghdr* %52, i32 0)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %56 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CifsExiting, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ESHUTDOWN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %109

63:                                               ; preds = %54
  %64 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %65 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CifsNeedReconnect, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %71 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %70)
  %72 = load i32, i32* @ECONNABORTED, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %109

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ERESTARTSYS, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @EINTR, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %79, %74
  %90 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %6, align 4
  br label %103

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* @FYI, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @cifs_dbg(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %99 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %98)
  %100 = load i32, i32* @ECONNABORTED, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %12

107:                                              ; preds = %12
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %94, %69, %60, %30, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @zero_credits(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i64 @server_unresponsive(%struct.TCP_Server_Info*) #1

declare dso_local i64 @cifs_rdma_enabled(%struct.TCP_Server_Info*) #1

declare dso_local i32 @smbd_recv(i64, %struct.msghdr*) #1

declare dso_local i32 @sock_recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
