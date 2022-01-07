; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_set_integrity.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_set_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifsFileInfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fsctl_set_integrity_information_req = type { i64, i64, i32 }

@CHECKSUM_TYPE_UNCHANGED = common dso_local global i32 0, align 4
@FSCTL_SET_INTEGRITY_INFORMATION = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifsFileInfo*)* @smb3_set_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb3_set_integrity(i32 %0, %struct.cifs_tcon* %1, %struct.cifsFileInfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.cifsFileInfo*, align 8
  %7 = alloca %struct.fsctl_set_integrity_information_req, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store %struct.cifsFileInfo* %2, %struct.cifsFileInfo** %6, align 8
  %9 = load i32, i32* @CHECKSUM_TYPE_UNCHANGED, align 4
  %10 = call i32 @cpu_to_le16(i32 %9)
  %11 = getelementptr inbounds %struct.fsctl_set_integrity_information_req, %struct.fsctl_set_integrity_information_req* %7, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.fsctl_set_integrity_information_req, %struct.fsctl_set_integrity_information_req* %7, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.fsctl_set_integrity_information_req, %struct.fsctl_set_integrity_information_req* %7, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %16 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %17 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %21 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FSCTL_SET_INTEGRITY_INFORMATION, align 4
  %25 = bitcast %struct.fsctl_set_integrity_information_req* %7 to i8*
  %26 = load i32, i32* @CIFSMaxBufSize, align 4
  %27 = call i32 @SMB2_ioctl(i32 %14, %struct.cifs_tcon* %15, i32 %19, i32 %23, i32 %24, i32 1, i8* %25, i32 24, i32 %26, i32* null, i32* %8)
  ret i32 %27
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
