; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_smb_send_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_smb_send_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, %struct.smb_rqst*)* }
%struct.smb_rqst = type { i32, i32, %struct.smb_rqst*, %struct.smb_rqst* }
%struct.kvec = type { i32, i32, %struct.kvec*, %struct.kvec* }
%struct.smb2_transform_hdr = type { i32, i32, %struct.smb2_transform_hdr*, %struct.smb2_transform_hdr* }

@MAX_COMPOUND = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Encryption requested but transform callback is missing\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, i32)* @smb_send_rqst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_send_rqst(%struct.TCP_Server_Info* %0, i32 %1, %struct.smb_rqst* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_rqst*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvec, align 8
  %11 = alloca %struct.smb2_transform_hdr, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.smb_rqst* %2, %struct.smb_rqst** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @MAX_COMPOUND, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca %struct.smb_rqst, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %28 = call i32 @__smb_send_rqst(%struct.TCP_Server_Info* %25, i32 %26, %struct.smb_rqst* %27)
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %91

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MAX_COMPOUND, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %91

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %19, i64 0
  %39 = mul nuw i64 24, %17
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(%struct.smb_rqst* %38, i32 0, i32 %40)
  %42 = bitcast %struct.kvec* %10 to %struct.smb_rqst*
  %43 = call i32 @memset(%struct.smb_rqst* %42, i32 0, i32 24)
  %44 = bitcast %struct.smb2_transform_hdr* %11 to %struct.smb_rqst*
  %45 = call i32 @memset(%struct.smb_rqst* %44, i32 0, i32 24)
  %46 = bitcast %struct.smb2_transform_hdr* %11 to %struct.kvec*
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i32 0, i32 3
  store %struct.kvec* %46, %struct.kvec** %47, align 8
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i32 0, i32 0
  store i32 24, i32* %48, align 8
  %49 = bitcast %struct.kvec* %10 to %struct.smb_rqst*
  %50 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %19, i64 0
  %51 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %50, i32 0, i32 2
  store %struct.smb_rqst* %49, %struct.smb_rqst** %51, align 8
  %52 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %19, i64 0
  %53 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, %struct.smb_rqst*)*, i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, %struct.smb_rqst*)** %57, align 8
  %59 = icmp ne i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, %struct.smb_rqst*)* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %37
  %61 = load i32, i32* @VFS, align 4
  %62 = call i32 @cifs_server_dbg(i32 %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %91

65:                                               ; preds = %37
  %66 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %67 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, %struct.smb_rqst*)*, i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, %struct.smb_rqst*)** %69, align 8
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %19, i64 0
  %75 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %76 = call i32 %70(%struct.TCP_Server_Info* %71, i32 %73, %struct.smb_rqst* %74, %struct.smb_rqst* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %91

81:                                               ; preds = %65
  %82 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %19, i64 0
  %86 = call i32 @__smb_send_rqst(%struct.TCP_Server_Info* %82, i32 %84, %struct.smb_rqst* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %7, align 4
  %88 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %19, i64 1
  %89 = call i32 @smb3_free_compound_rqst(i32 %87, %struct.smb_rqst* %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %91

91:                                               ; preds = %81, %79, %60, %34, %24
  %92 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__smb_send_rqst(%struct.TCP_Server_Info*, i32, %struct.smb_rqst*) #2

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #2

declare dso_local i32 @cifs_server_dbg(i32, i8*) #2

declare dso_local i32 @smb3_free_compound_rqst(i32, %struct.smb_rqst*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
