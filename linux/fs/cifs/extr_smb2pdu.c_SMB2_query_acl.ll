; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_query_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_query_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }

@OWNER_SECINFO = common dso_local global i32 0, align 4
@GROUP_SECINFO = common dso_local global i32 0, align 4
@DACL_SECINFO = common dso_local global i32 0, align 4
@SMB2_O_INFO_SECURITY = common dso_local global i32 0, align 4
@SMB2_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@MIN_SEC_DESC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_query_acl(i32 %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i32, i32* @OWNER_SECINFO, align 4
  %15 = load i32, i32* @GROUP_SECINFO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DACL_SECINFO, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i64*, i64** %12, align 8
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SMB2_O_INFO_SECURITY, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @SMB2_MAX_BUFFER_SIZE, align 4
  %27 = load i32, i32* @MIN_SEC_DESC_LEN, align 4
  %28 = load i8**, i8*** %11, align 8
  %29 = load i64*, i64** %12, align 8
  %30 = call i32 @query_info(i32 %20, %struct.cifs_tcon* %21, i32 %22, i32 %23, i32 0, i32 %24, i32 %25, i32 %26, i32 %27, i8** %28, i64* %29)
  ret i32 %30
}

declare dso_local i32 @query_info(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i32, i32, i32, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
