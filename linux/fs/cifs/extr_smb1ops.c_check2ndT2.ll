; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_check2ndT2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_check2ndT2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i64, i32 }
%struct.smb_t2_rsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SMB_COM_TRANSACTION2 = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid transact2 word count\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"total data %d smaller than data in frame %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"missing %d bytes from transact2, check next response\0A\00", align 1
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"TotalDataSize %d is over maximum buffer %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check2ndT2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check2ndT2(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca %struct.smb_t2_rsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.smb_hdr*
  store %struct.smb_hdr* %10, %struct.smb_hdr** %4, align 8
  %11 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SMB_COM_TRANSACTION2, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @FYI, align 4
  %24 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %17
  %28 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %29 = bitcast %struct.smb_hdr* %28 to %struct.smb_t2_rsp*
  store %struct.smb_t2_rsp* %29, %struct.smb_t2_rsp** %5, align 8
  %30 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %5, align 8
  %31 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @get_unaligned_le16(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %5, align 8
  %35 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @get_unaligned_le16(i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %73

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* @FYI, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %73

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @FYI, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CIFSMaxBufSize, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load i32, i32* @VFS, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CIFSMaxBufSize, align 4
  %68 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %54
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %64, %46, %41, %22, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
