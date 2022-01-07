; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_check_smb_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_check_smb_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i32, i64, i64 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Bad protocol string signature header 0x%x\0A\00", align 1
@SMBFLG_RESPONSE = common dso_local global i32 0, align 4
@SMB_COM_LOCKING_ANDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Server sent request, not response. mid=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_hdr*)* @check_smb_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_smb_hdr(%struct.smb_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_hdr*, align 8
  store %struct.smb_hdr* %0, %struct.smb_hdr** %3, align 8
  %4 = load %struct.smb_hdr*, %struct.smb_hdr** %3, align 8
  %5 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @cpu_to_le32(i32 1112364031)
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @VFS, align 4
  %13 = load %struct.smb_hdr*, %struct.smb_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cifs_dbg(i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.smb_hdr*, %struct.smb_hdr** %3, align 8
  %21 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SMBFLG_RESPONSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %39

27:                                               ; preds = %19
  %28 = load %struct.smb_hdr*, %struct.smb_hdr** %3, align 8
  %29 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SMB_COM_LOCKING_ANDX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @VFS, align 4
  %36 = load %struct.smb_hdr*, %struct.smb_hdr** %3, align 8
  %37 = call i32 @get_mid(%struct.smb_hdr* %36)
  %38 = call i32 @cifs_dbg(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %33, %26, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @get_mid(%struct.smb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
