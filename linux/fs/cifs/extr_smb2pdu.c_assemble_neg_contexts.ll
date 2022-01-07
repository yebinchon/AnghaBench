; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_assemble_neg_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_assemble_neg_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb2_negotiate_req = type { i8*, i32 }
%struct.TCP_Server_Info = type { i32, i64 }
%struct.smb2_preauth_neg_context = type { i32 }
%struct.smb2_encryption_neg_context = type { i32 }
%struct.smb2_compression_capabilities_context = type { i32 }
%struct.smb2_netname_neg_context = type { i32 }
%struct.smb2_posix_neg_context = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Bad frame length assembling neg contexts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb2_negotiate_req*, %struct.TCP_Server_Info*, i32*)* @assemble_neg_contexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assemble_neg_contexts(%struct.smb2_negotiate_req* %0, %struct.TCP_Server_Info* %1, i32* %2) #0 {
  %4 = alloca %struct.smb2_negotiate_req*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.smb2_negotiate_req* %0, %struct.smb2_negotiate_req** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.smb2_negotiate_req*, %struct.smb2_negotiate_req** %4, align 8
  %10 = bitcast %struct.smb2_negotiate_req* %9 to i8*
  store i8* %10, i8** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ugt i32 %12, 200
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @VFS, align 4
  %16 = call i32 @cifs_server_dbg(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %107

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @roundup(i32 %19, i32 8)
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smb2_negotiate_req*, %struct.smb2_negotiate_req** %4, align 8
  %25 = bitcast %struct.smb2_negotiate_req* %24 to i8*
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.smb2_negotiate_req*, %struct.smb2_negotiate_req** %4, align 8
  %32 = getelementptr inbounds %struct.smb2_negotiate_req, %struct.smb2_negotiate_req* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.smb2_preauth_neg_context*
  %35 = call i32 @build_preauth_ctxt(%struct.smb2_preauth_neg_context* %34)
  %36 = call i32 @DIV_ROUND_UP(i32 4, i32 8)
  %37 = mul nsw i32 %36, 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to %struct.smb2_encryption_neg_context*
  %48 = call i32 @build_encrypt_ctxt(%struct.smb2_encryption_neg_context* %47)
  %49 = call i32 @DIV_ROUND_UP(i32 4, i32 8)
  %50 = mul nsw i32 %49, 8
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %7, align 8
  %59 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %60 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %17
  %64 = load i8*, i8** %7, align 8
  %65 = bitcast i8* %64 to %struct.smb2_compression_capabilities_context*
  %66 = call i32 @build_compression_ctxt(%struct.smb2_compression_capabilities_context* %65)
  %67 = call i32 @DIV_ROUND_UP(i32 4, i32 8)
  %68 = mul nsw i32 %67, 8
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  %77 = call i8* @cpu_to_le16(i32 5)
  %78 = load %struct.smb2_negotiate_req*, %struct.smb2_negotiate_req** %4, align 8
  %79 = getelementptr inbounds %struct.smb2_negotiate_req, %struct.smb2_negotiate_req* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %84

80:                                               ; preds = %17
  %81 = call i8* @cpu_to_le16(i32 4)
  %82 = load %struct.smb2_negotiate_req*, %struct.smb2_negotiate_req** %4, align 8
  %83 = getelementptr inbounds %struct.smb2_negotiate_req, %struct.smb2_negotiate_req* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %63
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to %struct.smb2_netname_neg_context*
  %87 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %88 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @build_netname_ctxt(%struct.smb2_netname_neg_context* %86, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %7, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = bitcast i8* %99 to %struct.smb2_posix_neg_context*
  %101 = call i32 @build_posix_ctxt(%struct.smb2_posix_neg_context* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  %105 = add i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %107

107:                                              ; preds = %84, %14
  ret void
}

declare dso_local i32 @cifs_server_dbg(i32, i8*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @build_preauth_ctxt(%struct.smb2_preauth_neg_context*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @build_encrypt_ctxt(%struct.smb2_encryption_neg_context*) #1

declare dso_local i32 @build_compression_ctxt(%struct.smb2_compression_capabilities_context*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @build_netname_ctxt(%struct.smb2_netname_neg_context*, i32) #1

declare dso_local i32 @build_posix_ctxt(%struct.smb2_posix_neg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
