; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_conn_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_conn_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.smbd_connection* }
%struct.smbd_connection = type { i32, i32, i32, i8*, i32, i32, i32 }
%struct.rdma_cm_event = type { i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"event=%d status=%d\0A\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"connected event=%d\0A\00", align 1
@SMBD_CONNECTED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"connecting failed event=%d\0A\00", align 1
@SMBD_DISCONNECTED = common dso_local global i8* null, align 8
@SMBD_NEGOTIATE_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @smbd_conn_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbd_conn_upcall(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.smbd_connection*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  %6 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %6, i32 0, i32 0
  %8 = load %struct.smbd_connection*, %struct.smbd_connection** %7, align 8
  store %struct.smbd_connection* %8, %struct.smbd_connection** %5, align 8
  %9 = load i32, i32* @INFO, align 4
  %10 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, i32, ...) @log_rdma_event(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %92 [
    i32 136, label %20
    i32 129, label %20
    i32 137, label %26
    i32 130, label %34
    i32 132, label %42
    i32 135, label %54
    i32 128, label %54
    i32 131, label %54
    i32 134, label %66
    i32 133, label %66
  ]

20:                                               ; preds = %2, %2
  %21 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %22 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %21, i32 0, i32 6
  store i32 0, i32* %22, align 8
  %23 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %24 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %23, i32 0, i32 5
  %25 = call i32 @complete(i32* %24)
  br label %93

26:                                               ; preds = %2
  %27 = load i32, i32* @EHOSTUNREACH, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %30 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %32 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %31, i32 0, i32 5
  %33 = call i32 @complete(i32* %32)
  br label %93

34:                                               ; preds = %2
  %35 = load i32, i32* @ENETUNREACH, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %38 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %40 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %39, i32 0, i32 5
  %41 = call i32 @complete(i32* %40)
  br label %93

42:                                               ; preds = %2
  %43 = load i32, i32* @INFO, align 4
  %44 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %45 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, ...) @log_rdma_event(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** @SMBD_CONNECTED, align 8
  %49 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %50 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %52 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %51, i32 0, i32 4
  %53 = call i32 @wake_up_interruptible(i32* %52)
  br label %93

54:                                               ; preds = %2, %2, %2
  %55 = load i32, i32* @INFO, align 4
  %56 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %57 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @log_rdma_event(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i8*, i8** @SMBD_DISCONNECTED, align 8
  %61 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %62 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %64 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %63, i32 0, i32 4
  %65 = call i32 @wake_up_interruptible(i32* %64)
  br label %93

66:                                               ; preds = %2, %2
  %67 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %68 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** @SMBD_NEGOTIATE_FAILED, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i8*, i8** @SMBD_DISCONNECTED, align 8
  %74 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %75 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %77 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %76, i32 0, i32 4
  %78 = call i32 @wake_up(i32* %77)
  br label %93

79:                                               ; preds = %66
  %80 = load i8*, i8** @SMBD_DISCONNECTED, align 8
  %81 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %82 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %84 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %83, i32 0, i32 2
  %85 = call i32 @wake_up_interruptible(i32* %84)
  %86 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %87 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %86, i32 0, i32 1
  %88 = call i32 @wake_up_interruptible(i32* %87)
  %89 = load %struct.smbd_connection*, %struct.smbd_connection** %5, align 8
  %90 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %89, i32 0, i32 0
  %91 = call i32 @wake_up_interruptible_all(i32* %90)
  br label %93

92:                                               ; preds = %2
  br label %93

93:                                               ; preds = %92, %79, %72, %54, %42, %34, %26, %20
  ret i32 0
}

declare dso_local i32 @log_rdma_event(i32, i8*, i32, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
