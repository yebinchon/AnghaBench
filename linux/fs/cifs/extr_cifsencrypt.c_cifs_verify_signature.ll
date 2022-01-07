; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_cifs_verify_signature.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_cifs_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TCP_Server_Info = type { i32, i32 }
%struct.smb_hdr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.smb_com_lock_req = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMB_COM_LOCKING_ANDX = common dso_local global i64 0, align 8
@LOCKING_ANDX_OPLOCK_RELEASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"BSRSPYL \00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"dummy signature received for smb command 0x%x\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_verify_signature(%struct.smb_rqst* %0, %struct.TCP_Server_Info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct.smb_hdr*, align 8
  %12 = alloca %struct.smb_com_lock_req*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %5, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %14 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.smb_hdr*
  store %struct.smb_hdr* %19, %struct.smb_hdr** %11, align 8
  %20 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %21 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %42, label %27

27:                                               ; preds = %3
  %28 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %29 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %36 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %27, %3
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %130

45:                                               ; preds = %27
  %46 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %47 = icmp eq %struct.smb_hdr* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %50 = icmp eq %struct.TCP_Server_Info* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %130

54:                                               ; preds = %48
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %56 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %130

60:                                               ; preds = %54
  %61 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %62 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SMB_COM_LOCKING_ANDX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %68 = bitcast %struct.smb_hdr* %67 to %struct.smb_com_lock_req*
  store %struct.smb_com_lock_req* %68, %struct.smb_com_lock_req** %12, align 8
  %69 = load %struct.smb_com_lock_req*, %struct.smb_com_lock_req** %12, align 8
  %70 = getelementptr inbounds %struct.smb_com_lock_req, %struct.smb_com_lock_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @LOCKING_ANDX_OPLOCK_RELEASE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %130

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %79 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @memcmp(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i32, i32* @FYI, align 4
  %86 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %87 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @cifs_dbg(i32 %85, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %84, %77
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %92 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %93 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @memcpy(i8* %91, i8* %95, i32 8)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @cpu_to_le32(i32 %97)
  %99 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %100 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  %103 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %104 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %108 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %107, i32 0, i32 0
  %109 = call i32 @mutex_lock(i32* %108)
  %110 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %111 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %112 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %113 = call i32 @cifs_calc_signature(%struct.smb_rqst* %110, %struct.TCP_Server_Info* %111, i8* %112)
  store i32 %113, i32* %8, align 4
  %114 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %115 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %90
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %4, align 4
  br label %130

121:                                              ; preds = %90
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %123 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %124 = call i64 @memcmp(i8* %122, i8* %123, i32 8)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EACCES, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %130

129:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %126, %119, %75, %59, %51, %42
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_calc_signature(%struct.smb_rqst*, %struct.TCP_Server_Info*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
