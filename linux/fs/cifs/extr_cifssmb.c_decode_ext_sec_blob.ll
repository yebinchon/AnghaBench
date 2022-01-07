; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_decode_ext_sec_blob.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_decode_ext_sec_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }

@SMB1_CLIENT_GUID_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"server UID changed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.TYPE_7__*)* @decode_ext_sec_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ext_sec_blob(%struct.cifs_ses* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %16 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %15, i32 0, i32 0
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  store %struct.TCP_Server_Info* %17, %struct.TCP_Server_Info** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = call i64 @get_bcc(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @SMB1_CLIENT_GUID_SIZE, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %2
  %28 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %36 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* @SMB1_CLIENT_GUID_SIZE, align 8
  %40 = call i64 @memcmp(i32 %37, i8* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i32, i32* @FYI, align 4
  %44 = call i32 @cifs_dbg(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* @SMB1_CLIENT_GUID_SIZE, align 8
  %50 = call i32 @memcpy(i32 %47, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %42, %33
  br label %60

52:                                               ; preds = %27
  %53 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* @SMB1_CLIENT_GUID_SIZE, align 8
  %59 = call i32 @memcpy(i32 %56, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %52, %51
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @SMB1_CLIENT_GUID_SIZE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %66 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %85

67:                                               ; preds = %60
  %68 = load i64, i64* @SMB1_CLIENT_GUID_SIZE, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %78 = call i32 @decode_negTokenInit(i32 %75, i64 %76, %struct.TCP_Server_Info* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %64
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @get_bcc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @decode_negTokenInit(i32, i64, %struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
