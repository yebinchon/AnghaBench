; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reconnecting rdma session\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rdma session already destroyed\0A\00", align 1
@SMBD_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"disconnecting transport\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"creating rdma session\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"created rdma session info=%p\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbd_reconnect(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %2, align 8
  %3 = load i32, i32* @INFO, align 4
  %4 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %6 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @INFO, align 4
  %11 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SMBD_CONNECTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, i32* @INFO, align 4
  %22 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %24 = call i32 @smbd_destroy(%struct.TCP_Server_Info* %23)
  br label %25

25:                                               ; preds = %20, %12
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* @INFO, align 4
  %28 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to %struct.sockaddr*
  %33 = call %struct.TYPE_2__* @smbd_get_connection(%struct.TCP_Server_Info* %29, %struct.sockaddr* %32)
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 0
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load i32, i32* @INFO, align 4
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %38 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_2__* %39)
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %42 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  ret i32 %50
}

declare dso_local i32 @log_rdma_event(i32, i8*, ...) #1

declare dso_local i32 @smbd_destroy(%struct.TCP_Server_Info*) #1

declare dso_local %struct.TYPE_2__* @smbd_get_connection(%struct.TCP_Server_Info*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
