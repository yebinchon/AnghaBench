; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_sess_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_sess_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMB2_sess_data = type { i32, %struct.TYPE_4__*, i32, %struct.cifs_ses* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.cifs_ses = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i64 }
%struct.smb2_sess_setup_req = type { i64, i64, i64, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@SMB2_SESSION_SETUP = common dso_local global i32 0, align 4
@SMB2_NEGOTIATE_SIGNING_REQUIRED = common dso_local global i64 0, align 8
@global_secflags = common dso_local global i32 0, align 4
@CIFSSEC_MAY_SIGN = common dso_local global i32 0, align 4
@SMB2_NEGOTIATE_SIGNING_ENABLED = common dso_local global i64 0, align 8
@CIFS_SMALL_BUFFER = common dso_local global i32 0, align 4
@SMB2_GLOBAL_CAP_DFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SMB2_sess_data*)* @SMB2_sess_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SMB2_sess_alloc_buffer(%struct.SMB2_sess_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SMB2_sess_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.smb2_sess_setup_req*, align 8
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca i32, align 4
  store %struct.SMB2_sess_data* %0, %struct.SMB2_sess_data** %3, align 8
  %9 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %3, align 8
  %10 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %9, i32 0, i32 3
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  store %struct.cifs_ses* %11, %struct.cifs_ses** %5, align 8
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %13 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %12, i32 0, i32 0
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  store %struct.TCP_Server_Info* %14, %struct.TCP_Server_Info** %7, align 8
  %15 = load i32, i32* @SMB2_SESSION_SETUP, align 4
  %16 = bitcast %struct.smb2_sess_setup_req** %6 to i8**
  %17 = call i32 @smb2_plain_req_init(i32 %15, i32* null, i8** %16, i32* %8)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %24 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %3, align 8
  %27 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %30 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %32 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = call i32 @cpu_to_le16(i32 130)
  %34 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %35 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %38 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = load i64, i64* @SMB2_NEGOTIATE_SIGNING_REQUIRED, align 8
  %43 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %44 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  br label %58

45:                                               ; preds = %22
  %46 = load i32, i32* @global_secflags, align 4
  %47 = load i32, i32* @CIFSSEC_MAY_SIGN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* @SMB2_NEGOTIATE_SIGNING_ENABLED, align 8
  %52 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %53 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %56 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %60 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %62 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %6, align 8
  %64 = bitcast %struct.smb2_sess_setup_req* %63 to i8*
  %65 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %3, align 8
  %66 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* %64, i8** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub i32 %70, 1
  %72 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %3, align 8
  %73 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 8
  %77 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %78 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %3, align 8
  %79 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %58, %20
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @smb2_plain_req_init(i32, i32*, i8**, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
