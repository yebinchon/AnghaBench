; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_negotiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i32 }
%struct.smbd_response = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SMBD_NEGOTIATE_RESP = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"smbd_post_recv rc=%d iov.addr=%llx iov.length=%x iov.lkey=%x\0A\00", align 1
@SMBD_NEGOTIATE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wait_for_completion_timeout rc=%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbd_connection*)* @smbd_negotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbd_negotiate(%struct.smbd_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbd_response*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %3, align 8
  %6 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %7 = call %struct.smbd_response* @get_receive_buffer(%struct.smbd_connection* %6)
  store %struct.smbd_response* %7, %struct.smbd_response** %5, align 8
  %8 = load i32, i32* @SMBD_NEGOTIATE_RESP, align 4
  %9 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %10 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %12 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %13 = call i32 @smbd_post_recv(%struct.smbd_connection* %11, %struct.smbd_response* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @INFO, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %17 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %21 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %25 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, i32, ...) @log_rdma_event(i32 %14, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %80

33:                                               ; preds = %1
  %34 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %35 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %34, i32 0, i32 1
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %38 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %40 = call i32 @smbd_post_send_negotiate_req(%struct.smbd_connection* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %80

45:                                               ; preds = %33
  %46 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %47 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %46, i32 0, i32 1
  %48 = load i32, i32* @SMBD_NEGOTIATE_TIMEOUT, align 4
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i32 @wait_for_completion_interruptible_timeout(i32* %47, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @INFO, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, i32, ...) @log_rdma_event(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %56 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %80

60:                                               ; preds = %45
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %78

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @ERESTARTSYS, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINTR, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOTCONN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %59, %43, %31
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.smbd_response* @get_receive_buffer(%struct.smbd_connection*) #1

declare dso_local i32 @smbd_post_recv(%struct.smbd_connection*, %struct.smbd_response*) #1

declare dso_local i32 @log_rdma_event(i32, i8*, i32, ...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @smbd_post_send_negotiate_req(%struct.smbd_connection*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
