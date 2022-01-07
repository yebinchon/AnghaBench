; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_sess_sendreceive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_sess_sendreceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMB2_sess_data = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.smb2_sess_setup_req* }
%struct.smb2_sess_setup_req = type { i8*, i8* }
%struct.smb_rqst = type { i32, %struct.TYPE_2__* }
%struct.kvec = type { i32, i32* }

@CIFS_LOG_ERROR = common dso_local global i32 0, align 4
@CIFS_NEG_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SMB2_sess_data*)* @SMB2_sess_sendreceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SMB2_sess_sendreceive(%struct.SMB2_sess_data* %0) #0 {
  %2 = alloca %struct.SMB2_sess_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rqst, align 8
  %5 = alloca %struct.smb2_sess_setup_req*, align 8
  %6 = alloca %struct.kvec, align 8
  store %struct.SMB2_sess_data* %0, %struct.SMB2_sess_data** %2, align 8
  %7 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %8 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %11, align 8
  store %struct.smb2_sess_setup_req* %12, %struct.smb2_sess_setup_req** %5, align 8
  %13 = bitcast %struct.kvec* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = call i8* @cpu_to_le16(i32 15)
  %15 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %5, align 8
  %16 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %18 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %5, align 8
  %25 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = call i32 @memset(%struct.smb_rqst* %4, i32 0, i32 16)
  %27 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %28 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %4, i32 0, i32 1
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %30, align 8
  %31 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %4, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %33 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %36 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %39 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %38, i32 0, i32 1
  %40 = load i32, i32* @CIFS_LOG_ERROR, align 4
  %41 = load i32, i32* @CIFS_NEG_OP, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @cifs_send_recv(i32 %34, i32 %37, %struct.smb_rqst* %4, i32* %39, i32 %42, %struct.kvec* %6)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %45 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %48, align 8
  %50 = call i32 @cifs_small_buf_release(%struct.smb2_sess_setup_req* %49)
  %51 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %52 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = call i32 @memcpy(%struct.TYPE_2__* %54, %struct.kvec* %6, i32 16)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #2

declare dso_local i32 @cifs_send_recv(i32, i32, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #2

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_sess_setup_req*) #2

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.kvec*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
