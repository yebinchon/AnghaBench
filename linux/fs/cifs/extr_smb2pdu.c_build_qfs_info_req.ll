; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_build_qfs_info_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_build_qfs_info_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i8*, i32 }
%struct.cifs_tcon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.smb2_query_info_req = type { i32, i32, i32, i8*, i8*, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Query FSInfo level %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMB2_QUERY_INFO = common dso_local global i32 0, align 4
@SMB2_O_INFO_FILESYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, %struct.cifs_tcon*, i32, i32, i8*, i8*)* @build_qfs_info_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_qfs_info_req(%struct.kvec* %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.smb2_query_info_req*, align 8
  %16 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %8, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @FYI, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @cifs_dbg(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %21 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp eq %struct.TYPE_2__* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %6
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %26 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %6
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %74

34:                                               ; preds = %24
  %35 = load i32, i32* @SMB2_QUERY_INFO, align 4
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %37 = bitcast %struct.smb2_query_info_req** %15 to i8**
  %38 = call i32 @smb2_plain_req_init(i32 %35, %struct.cifs_tcon* %36, i8** %37, i32* %16)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %74

43:                                               ; preds = %34
  %44 = load i32, i32* @SMB2_O_INFO_FILESYSTEM, align 4
  %45 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %15, align 8
  %46 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %15, align 8
  %49 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %15, align 8
  %52 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %15, align 8
  %55 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = call i32 @cpu_to_le16(i32 39)
  %57 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %15, align 8
  %58 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = sub i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %15, align 8
  %66 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %15, align 8
  %68 = bitcast %struct.smb2_query_info_req* %67 to i8*
  %69 = load %struct.kvec*, %struct.kvec** %8, align 8
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.kvec*, %struct.kvec** %8, align 8
  %73 = getelementptr inbounds %struct.kvec, %struct.kvec* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %43, %41, %31
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
