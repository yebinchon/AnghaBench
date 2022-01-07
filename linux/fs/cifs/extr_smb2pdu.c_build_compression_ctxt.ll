; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_build_compression_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_build_compression_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb2_compression_capabilities_context = type { i32*, i8*, i8*, i32 }

@SMB2_COMPRESSION_CAPABILITIES = common dso_local global i32 0, align 4
@SMB3_COMPRESS_LZ77 = common dso_local global i32 0, align 4
@SMB3_COMPRESS_LZ77_HUFF = common dso_local global i32 0, align 4
@SMB3_COMPRESS_LZNT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb2_compression_capabilities_context*)* @build_compression_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_compression_ctxt(%struct.smb2_compression_capabilities_context* %0) #0 {
  %2 = alloca %struct.smb2_compression_capabilities_context*, align 8
  store %struct.smb2_compression_capabilities_context* %0, %struct.smb2_compression_capabilities_context** %2, align 8
  %3 = load i32, i32* @SMB2_COMPRESSION_CAPABILITIES, align 4
  %4 = load %struct.smb2_compression_capabilities_context*, %struct.smb2_compression_capabilities_context** %2, align 8
  %5 = getelementptr inbounds %struct.smb2_compression_capabilities_context, %struct.smb2_compression_capabilities_context* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 8
  %6 = call i8* @cpu_to_le16(i32 28)
  %7 = load %struct.smb2_compression_capabilities_context*, %struct.smb2_compression_capabilities_context** %2, align 8
  %8 = getelementptr inbounds %struct.smb2_compression_capabilities_context, %struct.smb2_compression_capabilities_context* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = call i8* @cpu_to_le16(i32 3)
  %10 = load %struct.smb2_compression_capabilities_context*, %struct.smb2_compression_capabilities_context** %2, align 8
  %11 = getelementptr inbounds %struct.smb2_compression_capabilities_context, %struct.smb2_compression_capabilities_context* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @SMB3_COMPRESS_LZ77, align 4
  %13 = load %struct.smb2_compression_capabilities_context*, %struct.smb2_compression_capabilities_context** %2, align 8
  %14 = getelementptr inbounds %struct.smb2_compression_capabilities_context, %struct.smb2_compression_capabilities_context* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @SMB3_COMPRESS_LZ77_HUFF, align 4
  %18 = load %struct.smb2_compression_capabilities_context*, %struct.smb2_compression_capabilities_context** %2, align 8
  %19 = getelementptr inbounds %struct.smb2_compression_capabilities_context, %struct.smb2_compression_capabilities_context* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @SMB3_COMPRESS_LZNT1, align 4
  %23 = load %struct.smb2_compression_capabilities_context*, %struct.smb2_compression_capabilities_context** %2, align 8
  %24 = getelementptr inbounds %struct.smb2_compression_capabilities_context, %struct.smb2_compression_capabilities_context* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %22, i32* %26, align 4
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
