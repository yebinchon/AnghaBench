; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_setup_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_setup_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i32, %struct.socket*, i32, i8*, i8* }
%struct.socket = type { i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@ISCSIT_TCP_BACKLOG = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i8* null, align 8
@IPPROTO_SCTP = common dso_local global i8* null, align 8
@SOCK_SEQPACKET = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unsupported network_transport: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sock_create() failed.\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"kernel_setsockopt() for TCP_NODELAY failed: %d\0A\00", align 1
@SOL_SOCKET = common dso_local global i8* null, align 8
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"kernel_setsockopt() for SO_REUSEADDR failed\0A\00", align 1
@IPPROTO_IP = common dso_local global i8* null, align 8
@IP_FREEBIND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"kernel_setsockopt() for IP_FREEBIND failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"kernel_bind() failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"kernel_listen() failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_setup_np(%struct.iscsi_np* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store %struct.socket* null, %struct.socket** %6, align 8
  %11 = load i32, i32* @ISCSIT_TCP_BACKLOG, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %36 [
    i32 128, label %15
    i32 130, label %22
    i32 129, label %29
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** @IPPROTO_TCP, align 8
  %17 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @SOCK_STREAM, align 8
  %20 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  br label %43

22:                                               ; preds = %2
  %23 = load i8*, i8** @IPPROTO_SCTP, align 8
  %24 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @SOCK_STREAM, align 8
  %27 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  br label %43

29:                                               ; preds = %2
  %30 = load i8*, i8** @IPPROTO_SCTP, align 8
  %31 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @SOCK_SEQPACKET, align 8
  %34 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %139

43:                                               ; preds = %29, %22, %15
  %44 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %51 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @sock_create(i64 %46, i8* %49, i8* %52, %struct.socket** %6)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %139

59:                                               ; preds = %43
  %60 = load %struct.socket*, %struct.socket** %6, align 8
  %61 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %62 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %61, i32 0, i32 1
  store %struct.socket* %60, %struct.socket** %62, align 8
  %63 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %63, i32 0, i32 2
  %65 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %66 = call i32 @memcpy(i32* %64, %struct.sockaddr_storage* %65, i32 8)
  %67 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %68 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET6, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  store i32 4, i32* %10, align 4
  br label %74

73:                                               ; preds = %59
  store i32 4, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %72
  store i32 1, i32* %9, align 4
  %75 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.socket*, %struct.socket** %6, align 8
  %81 = load i8*, i8** @IPPROTO_TCP, align 8
  %82 = load i32, i32* @TCP_NODELAY, align 4
  %83 = bitcast i32* %9 to i8*
  %84 = call i32 @kernel_setsockopt(%struct.socket* %80, i8* %81, i32 %82, i8* %83, i32 4)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %133

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %74
  %92 = load %struct.socket*, %struct.socket** %6, align 8
  %93 = load i8*, i8** @SOL_SOCKET, align 8
  %94 = load i32, i32* @SO_REUSEADDR, align 4
  %95 = bitcast i32* %9 to i8*
  %96 = call i32 @kernel_setsockopt(%struct.socket* %92, i8* %93, i32 %94, i8* %95, i32 4)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %133

101:                                              ; preds = %91
  %102 = load %struct.socket*, %struct.socket** %6, align 8
  %103 = load i8*, i8** @IPPROTO_IP, align 8
  %104 = load i32, i32* @IP_FREEBIND, align 4
  %105 = bitcast i32* %9 to i8*
  %106 = call i32 @kernel_setsockopt(%struct.socket* %102, i8* %103, i32 %104, i8* %105, i32 4)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %133

111:                                              ; preds = %101
  %112 = load %struct.socket*, %struct.socket** %6, align 8
  %113 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %114 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %113, i32 0, i32 2
  %115 = bitcast i32* %114 to %struct.sockaddr*
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @kernel_bind(%struct.socket* %112, %struct.sockaddr* %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %133

123:                                              ; preds = %111
  %124 = load %struct.socket*, %struct.socket** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @kernel_listen(%struct.socket* %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  br label %133

132:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %139

133:                                              ; preds = %129, %120, %109, %99, %87
  %134 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %135 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %134, i32 0, i32 1
  store %struct.socket* null, %struct.socket** %135, align 8
  %136 = load %struct.socket*, %struct.socket** %6, align 8
  %137 = call i32 @sock_release(%struct.socket* %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %132, %56, %36
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sock_create(i64, i8*, i8*, %struct.socket**) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i8*, i32, i8*, i32) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @kernel_listen(%struct.socket*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
