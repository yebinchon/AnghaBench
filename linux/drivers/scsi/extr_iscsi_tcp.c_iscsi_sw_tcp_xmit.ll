; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iscsi_segment }
%struct.iscsi_segment = type { i64, i64, i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)* }

@EAGAIN = common dso_local global i32 0, align 4
@ISCSI_ERR_XMIT_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"xmit %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error sending PDU, errno=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @iscsi_sw_tcp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_xmit(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %6 = alloca %struct.iscsi_segment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 1
  %11 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  store %struct.iscsi_tcp_conn* %11, %struct.iscsi_tcp_conn** %4, align 8
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %12, i32 0, i32 0
  %14 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %13, align 8
  store %struct.iscsi_sw_tcp_conn* %14, %struct.iscsi_sw_tcp_conn** %5, align 8
  %15 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.iscsi_segment* %17, %struct.iscsi_segment** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %1, %67
  %19 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %20 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %21 = call i32 @iscsi_sw_tcp_xmit_segment(%struct.iscsi_tcp_conn* %19, %struct.iscsi_segment* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %87

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ISCSI_ERR_XMIT_FAILED, align 4
  store i32 %32, i32* %8, align 4
  br label %78

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %68

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %47 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %39
  %51 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %51, i32 0, i32 2
  %53 = load i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)*, i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)** %52, align 8
  %54 = icmp ne i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %57 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %56, i32 0, i32 2
  %58 = load i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)*, i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)** %57, align 8
  %59 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %60 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %61 = call i32 %58(%struct.iscsi_tcp_conn* %59, %struct.iscsi_segment* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %78

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %39
  br label %18

68:                                               ; preds = %36
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %74 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %87

78:                                               ; preds = %64, %31
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %82, i32 %83)
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %78, %68, %26
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @iscsi_sw_tcp_xmit_segment(%struct.iscsi_tcp_conn*, %struct.iscsi_segment*) #1

declare dso_local i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn*, i8*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
