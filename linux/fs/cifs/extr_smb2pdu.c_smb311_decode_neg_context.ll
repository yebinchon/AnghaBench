; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb311_decode_neg_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb311_decode_neg_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb2_negotiate_rsp = type { i64, i32 }
%struct.TCP_Server_Info = type { i32 }
%struct.smb2_neg_context = type { i64, i64 }
%struct.smb2_preauth_neg_context = type { i32 }
%struct.smb2_encryption_neg_context = type { i32 }
%struct.smb2_compression_capabilities_context = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"decoding %d negotiate contexts\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid response: negotiate context offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMB2_PREAUTH_INTEGRITY_CAPABILITIES = common dso_local global i64 0, align 8
@SMB2_ENCRYPTION_CAPABILITIES = common dso_local global i64 0, align 8
@SMB2_COMPRESSION_CAPABILITIES = common dso_local global i64 0, align 8
@SMB2_POSIX_EXTENSIONS_AVAILABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"unknown negcontext of type %d ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb2_negotiate_rsp*, %struct.TCP_Server_Info*, i32)* @smb311_decode_neg_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb311_decode_neg_context(%struct.smb2_negotiate_rsp* %0, %struct.TCP_Server_Info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb2_negotiate_rsp*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb2_neg_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smb2_negotiate_rsp* %0, %struct.smb2_negotiate_rsp** %5, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.smb2_negotiate_rsp*, %struct.smb2_negotiate_rsp** %5, align 8
  %16 = getelementptr inbounds %struct.smb2_negotiate_rsp, %struct.smb2_negotiate_rsp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.smb2_negotiate_rsp*, %struct.smb2_negotiate_rsp** %5, align 8
  %20 = getelementptr inbounds %struct.smb2_negotiate_rsp, %struct.smb2_negotiate_rsp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @le16_to_cpu(i64 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @FYI, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @cifs_dbg(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32, i32* @VFS, align 4
  %32 = call i32 (i32, i8*, ...) @cifs_server_dbg(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %142

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %137, %35
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %140

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %140

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %49, 16
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %140

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.smb2_negotiate_rsp*, %struct.smb2_negotiate_rsp** %5, align 8
  %55 = bitcast %struct.smb2_negotiate_rsp* %54 to i8*
  %56 = zext i32 %53 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = bitcast i8* %57 to %struct.smb2_neg_context*
  store %struct.smb2_neg_context* %58, %struct.smb2_neg_context** %8, align 8
  %59 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %60 = getelementptr inbounds %struct.smb2_neg_context, %struct.smb2_neg_context* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @le16_to_cpu(i64 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %140

68:                                               ; preds = %52
  %69 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %70 = getelementptr inbounds %struct.smb2_neg_context, %struct.smb2_neg_context* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SMB2_PREAUTH_INTEGRITY_CAPABILITIES, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %76 = bitcast %struct.smb2_neg_context* %75 to %struct.smb2_preauth_neg_context*
  %77 = call i32 @decode_preauth_context(%struct.smb2_preauth_neg_context* %76)
  br label %119

78:                                               ; preds = %68
  %79 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %80 = getelementptr inbounds %struct.smb2_neg_context, %struct.smb2_neg_context* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SMB2_ENCRYPTION_CAPABILITIES, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %86 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %87 = bitcast %struct.smb2_neg_context* %86 to %struct.smb2_encryption_neg_context*
  %88 = call i32 @decode_encrypt_ctx(%struct.TCP_Server_Info* %85, %struct.smb2_encryption_neg_context* %87)
  store i32 %88, i32* %13, align 4
  br label %118

89:                                               ; preds = %78
  %90 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %91 = getelementptr inbounds %struct.smb2_neg_context, %struct.smb2_neg_context* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SMB2_COMPRESSION_CAPABILITIES, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %97 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %98 = bitcast %struct.smb2_neg_context* %97 to %struct.smb2_compression_capabilities_context*
  %99 = call i32 @decode_compress_ctx(%struct.TCP_Server_Info* %96, %struct.smb2_compression_capabilities_context* %98)
  br label %117

100:                                              ; preds = %89
  %101 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %102 = getelementptr inbounds %struct.smb2_neg_context, %struct.smb2_neg_context* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SMB2_POSIX_EXTENSIONS_AVAILABLE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %108 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  br label %116

109:                                              ; preds = %100
  %110 = load i32, i32* @VFS, align 4
  %111 = load %struct.smb2_neg_context*, %struct.smb2_neg_context** %8, align 8
  %112 = getelementptr inbounds %struct.smb2_neg_context, %struct.smb2_neg_context* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @le16_to_cpu(i64 %113)
  %115 = call i32 (i32, i8*, ...) @cifs_server_dbg(i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %109, %106
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117, %84
  br label %119

119:                                              ; preds = %118, %74
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %140

123:                                              ; preds = %119
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 7
  %126 = and i32 %125, -8
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 %128, 16
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = add i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %11, align 4
  %136 = sub i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %123
  %138 = load i32, i32* %12, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %39

140:                                              ; preds = %122, %67, %51, %46, %39
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %30
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, ...) #1

declare dso_local i32 @decode_preauth_context(%struct.smb2_preauth_neg_context*) #1

declare dso_local i32 @decode_encrypt_ctx(%struct.TCP_Server_Info*, %struct.smb2_encryption_neg_context*) #1

declare dso_local i32 @decode_compress_ctx(%struct.TCP_Server_Info*, %struct.smb2_compression_capabilities_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
