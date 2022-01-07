; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_sess_auth_rawntlmssp_authenticate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_sess_auth_rawntlmssp_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMB2_sess_data = type { i32, i32*, %struct.TYPE_5__*, i32, %struct.cifs_ses* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.cifs_ses = type { i8*, i32, i32 }
%struct.smb2_sess_setup_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smb2_sess_setup_rsp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"build_ntlmssp_auth_blob failed %d\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"spnego not supported for SMB2 yet\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SMB2_sess_data*)* @SMB2_sess_auth_rawntlmssp_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SMB2_sess_auth_rawntlmssp_authenticate(%struct.SMB2_sess_data* %0) #0 {
  %2 = alloca %struct.SMB2_sess_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.smb2_sess_setup_req*, align 8
  %6 = alloca %struct.smb2_sess_setup_rsp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.SMB2_sess_data* %0, %struct.SMB2_sess_data** %2, align 8
  %10 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %11 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %10, i32 0, i32 4
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %11, align 8
  store %struct.cifs_ses* %12, %struct.cifs_ses** %4, align 8
  store %struct.smb2_sess_setup_rsp* null, %struct.smb2_sess_setup_rsp** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %14 = call i32 @SMB2_sess_alloc_buffer(%struct.SMB2_sess_data* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %20 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.smb2_sess_setup_req*
  store %struct.smb2_sess_setup_req* %25, %struct.smb2_sess_setup_req** %5, align 8
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %27 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.smb2_sess_setup_req*, %struct.smb2_sess_setup_req** %5, align 8
  %30 = getelementptr inbounds %struct.smb2_sess_setup_req, %struct.smb2_sess_setup_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %33 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %34 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @build_ntlmssp_auth_blob(i8** %7, i32* %9, %struct.cifs_ses* %32, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %18
  %40 = load i32, i32* @FYI, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %91

43:                                               ; preds = %18
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @VFS, align 4
  %48 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %91

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %54 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* %52, i8** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %60 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 8
  %64 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %65 = call i32 @SMB2_sess_sendreceive(%struct.SMB2_sess_data* %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %91

69:                                               ; preds = %51
  %70 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %71 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.smb2_sess_setup_rsp*
  store %struct.smb2_sess_setup_rsp* %76, %struct.smb2_sess_setup_rsp** %6, align 8
  %77 = load %struct.smb2_sess_setup_rsp*, %struct.smb2_sess_setup_rsp** %6, align 8
  %78 = getelementptr inbounds %struct.smb2_sess_setup_rsp, %struct.smb2_sess_setup_rsp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %82 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.smb2_sess_setup_rsp*, %struct.smb2_sess_setup_rsp** %6, align 8
  %84 = getelementptr inbounds %struct.smb2_sess_setup_rsp, %struct.smb2_sess_setup_rsp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %88 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %90 = call i32 @SMB2_sess_establish_session(%struct.SMB2_sess_data* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %69, %68, %46, %39, %17
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %95 = call i32 @SMB2_sess_free_buffer(%struct.SMB2_sess_data* %94)
  %96 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %97 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @kfree(i8* %98)
  %100 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %101 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %100, i32 0, i32 0
  store i8* null, i8** %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %104 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %2, align 8
  %106 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  ret void
}

declare dso_local i32 @SMB2_sess_alloc_buffer(%struct.SMB2_sess_data*) #1

declare dso_local i32 @build_ntlmssp_auth_blob(i8**, i32*, %struct.cifs_ses*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @SMB2_sess_sendreceive(%struct.SMB2_sess_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SMB2_sess_establish_session(%struct.SMB2_sess_data*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @SMB2_sess_free_buffer(%struct.SMB2_sess_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
