; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_select_sec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_select_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32 }
%struct.sess_data = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sess setup type %d\0A\00", align 1
@Unspecified = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to select appropriate authentication method!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@sess_auth_ntlm = common dso_local global i32 0, align 4
@sess_auth_ntlmv2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Kerberos negotiated but upcall support disabled!\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@sess_auth_rawntlmssp_negotiate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"secType %d not supported!\0A\00", align 1
@sess_auth_kerberos = common dso_local global i32 0, align 4
@sess_auth_lanman = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.sess_data*)* @select_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_sec(%struct.cifs_ses* %0, %struct.sess_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.sess_data*, align 8
  %6 = alloca i32, align 4
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.sess_data* %1, %struct.sess_data** %5, align 8
  %7 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %8 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cifs_select_sectype(i32 %9, i32 %12)
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
  br label %54

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %47 [
    i32 131, label %27
    i32 130, label %30
    i32 129, label %34
    i32 132, label %38
    i32 128, label %43
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %54

30:                                               ; preds = %25
  %31 = load i32, i32* @sess_auth_ntlm, align 4
  %32 = load %struct.sess_data*, %struct.sess_data** %5, align 8
  %33 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %53

34:                                               ; preds = %25
  %35 = load i32, i32* @sess_auth_ntlmv2, align 4
  %36 = load %struct.sess_data*, %struct.sess_data** %5, align 8
  %37 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %53

38:                                               ; preds = %25
  %39 = load i32, i32* @VFS, align 4
  %40 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENOSYS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %25
  %44 = load i32, i32* @sess_auth_rawntlmssp_negotiate, align 4
  %45 = load %struct.sess_data*, %struct.sess_data** %5, align 8
  %46 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %53

47:                                               ; preds = %25
  %48 = load i32, i32* @VFS, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %43, %34, %30
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47, %38, %27, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @cifs_select_sectype(i32, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
