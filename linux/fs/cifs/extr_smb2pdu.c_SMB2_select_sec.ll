; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_select_sec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_select_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32 }
%struct.SMB2_sess_data = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sess setup type %d\0A\00", align 1
@Unspecified = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to select appropriate authentication method!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMB2_auth_kerberos = common dso_local global i32 0, align 4
@SMB2_sess_auth_rawntlmssp_negotiate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"secType %d not supported!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.SMB2_sess_data*)* @SMB2_select_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SMB2_select_sec(%struct.cifs_ses* %0, %struct.SMB2_sess_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.SMB2_sess_data*, align 8
  %6 = alloca i32, align 4
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.SMB2_sess_data* %1, %struct.SMB2_sess_data** %5, align 8
  %7 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %8 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @smb2_select_sectype(i32 %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @FYI, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @Unspecified, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @VFS, align 4
  %22 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 128, label %31
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @SMB2_auth_kerberos, align 4
  %29 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %5, align 8
  %30 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %41

31:                                               ; preds = %25
  %32 = load i32, i32* @SMB2_sess_auth_rawntlmssp_negotiate, align 4
  %33 = load %struct.SMB2_sess_data*, %struct.SMB2_sess_data** %5, align 8
  %34 = getelementptr inbounds %struct.SMB2_sess_data, %struct.SMB2_sess_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %41

35:                                               ; preds = %25
  %36 = load i32, i32* @VFS, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %31, %27
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @smb2_select_sectype(i32, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
