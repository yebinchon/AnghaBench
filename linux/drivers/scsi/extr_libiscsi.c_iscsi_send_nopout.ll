; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_send_nopout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_send_nopout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsi_task* }
%struct.iscsi_task = type { i32 }
%struct.iscsi_nopin = type { i8*, i32 }
%struct.iscsi_nopout = type { i32, i8*, i8*, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISCSI_OP_NOOP_OUT = common dso_local global i32 0, align 4
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@RESERVED_ITT = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not send nopout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_nopin*)* @iscsi_send_nopout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_send_nopout(%struct.iscsi_conn* %0, %struct.iscsi_nopin* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_nopin*, align 8
  %6 = alloca %struct.iscsi_nopout, align 8
  %7 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_nopin* %1, %struct.iscsi_nopin** %5, align 8
  %8 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %5, align 8
  %9 = icmp ne %struct.iscsi_nopin* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 1
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %12, align 8
  %14 = icmp ne %struct.iscsi_task* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %10, %2
  %19 = call i32 @memset(%struct.iscsi_nopout* %6, i32 0, i32 32)
  %20 = load i32, i32* @ISCSI_OP_NOOP_OUT, align 4
  %21 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %25 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %6, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %5, align 8
  %27 = icmp ne %struct.iscsi_nopin* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %5, align 8
  %30 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %6, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %6, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** @RESERVED_ITT, align 8
  %38 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %6, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  br label %42

39:                                               ; preds = %18
  %40 = load i8*, i8** @RESERVED_ITT, align 8
  %41 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %6, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %44 = bitcast %struct.iscsi_nopout* %6 to %struct.iscsi_hdr*
  %45 = call %struct.iscsi_task* @__iscsi_conn_send_pdu(%struct.iscsi_conn* %43, %struct.iscsi_hdr* %44, i32* null, i32 0)
  store %struct.iscsi_task* %45, %struct.iscsi_task** %7, align 8
  %46 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %47 = icmp ne %struct.iscsi_task* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %51 = call i32 @iscsi_conn_printk(i32 %49, %struct.iscsi_conn* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %66

54:                                               ; preds = %42
  %55 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %5, align 8
  %56 = icmp ne %struct.iscsi_nopin* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %59, i32 0, i32 1
  store %struct.iscsi_task* %58, %struct.iscsi_task** %60, align 8
  %61 = load i32, i32* @jiffies, align 4
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %54
  br label %65

65:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %48, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.iscsi_nopout*, i32, i32) #1

declare dso_local %struct.iscsi_task* @__iscsi_conn_send_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
