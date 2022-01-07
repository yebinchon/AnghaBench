; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_ftp.c_sclp_ftp_rxcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_ftp.c_sclp_ftp_rxcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuf_header = type { i64, i64 }
%struct.sclp_diag_evbuf = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@EVTYP_DIAG_TEST = common dso_local global i64 0, align 8
@SCLP_DIAG_FTP_ROUTE = common dso_local global i64 0, align 8
@SCLP_DIAG_FTP_XPCX = common dso_local global i64 0, align 8
@SCLP_DIAG_FTP_EVBUF_LEN = common dso_local global i64 0, align 8
@sclp_ftp_ldflg = common dso_local global i32 0, align 4
@sclp_ftp_fsize = common dso_local global i32 0, align 4
@sclp_ftp_length = common dso_local global i32 0, align 4
@sclp_ftp_rx_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuf_header*)* @sclp_ftp_rxcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_ftp_rxcb(%struct.evbuf_header* %0) #0 {
  %2 = alloca %struct.evbuf_header*, align 8
  %3 = alloca %struct.sclp_diag_evbuf*, align 8
  store %struct.evbuf_header* %0, %struct.evbuf_header** %2, align 8
  %4 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %5 = bitcast %struct.evbuf_header* %4 to %struct.sclp_diag_evbuf*
  store %struct.sclp_diag_evbuf* %5, %struct.sclp_diag_evbuf** %3, align 8
  %6 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %7 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EVTYP_DIAG_TEST, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = load %struct.sclp_diag_evbuf*, %struct.sclp_diag_evbuf** %3, align 8
  %13 = getelementptr inbounds %struct.sclp_diag_evbuf, %struct.sclp_diag_evbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCLP_DIAG_FTP_ROUTE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = load %struct.sclp_diag_evbuf*, %struct.sclp_diag_evbuf** %3, align 8
  %19 = getelementptr inbounds %struct.sclp_diag_evbuf, %struct.sclp_diag_evbuf* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCLP_DIAG_FTP_XPCX, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %27 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCLP_DIAG_FTP_EVBUF_LEN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %17, %11, %1
  br label %49

32:                                               ; preds = %25
  %33 = load %struct.sclp_diag_evbuf*, %struct.sclp_diag_evbuf** %3, align 8
  %34 = getelementptr inbounds %struct.sclp_diag_evbuf, %struct.sclp_diag_evbuf* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* @sclp_ftp_ldflg, align 4
  %38 = load %struct.sclp_diag_evbuf*, %struct.sclp_diag_evbuf** %3, align 8
  %39 = getelementptr inbounds %struct.sclp_diag_evbuf, %struct.sclp_diag_evbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @sclp_ftp_fsize, align 4
  %43 = load %struct.sclp_diag_evbuf*, %struct.sclp_diag_evbuf** %3, align 8
  %44 = getelementptr inbounds %struct.sclp_diag_evbuf, %struct.sclp_diag_evbuf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* @sclp_ftp_length, align 4
  %48 = call i32 @complete(i32* @sclp_ftp_rx_complete)
  br label %49

49:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
