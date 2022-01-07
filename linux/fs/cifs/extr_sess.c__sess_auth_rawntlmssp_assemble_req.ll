; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c__sess_auth_rawntlmssp_assemble_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c__sess_auth_rawntlmssp_assemble_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { %struct.TYPE_8__*, i32, %struct.cifs_ses* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.cifs_ses = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NTLMSSP requires Unicode support\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@SMBFLG2_EXT_SEC = common dso_local global i32 0, align 4
@CAP_EXTENDED_SECURITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sess_data*)* @_sess_auth_rawntlmssp_assemble_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sess_auth_rawntlmssp_assemble_req(%struct.sess_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sess_data*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.sess_data* %0, %struct.sess_data** %3, align 8
  %8 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %9 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %8, i32 0, i32 2
  %10 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  store %struct.cifs_ses* %10, %struct.cifs_ses** %5, align 8
  %11 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %12 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @cifs_ssetup_hdr(%struct.cifs_ses* %18, %struct.TYPE_9__* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @VFS, align 4
  %31 = call i32 @cifs_dbg(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %98

34:                                               ; preds = %1
  %35 = load i32, i32* @SMBFLG2_EXT_SEC, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @CAP_EXTENDED_SECURITY, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %53 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %7, align 8
  %58 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %59 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %65 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %63, %69
  %71 = srem i32 %70, 2
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %34
  %74 = load i8*, i8** %7, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %73, %34
  %78 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %79 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @unicode_oslm_strings(i8** %7, i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %85 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = sub nsw i64 %83, %90
  %92 = trunc i64 %91 to i32
  %93 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %94 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %77, %29
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @cifs_ssetup_hdr(%struct.cifs_ses*, %struct.TYPE_9__*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @unicode_oslm_strings(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
