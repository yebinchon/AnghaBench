; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_calc_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_calc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.smb2_sync_pdu = type { i32, %struct.smb2_sync_hdr }
%struct.smb2_sync_hdr = type { i32, i32 }

@has_smb2_data_area = common dso_local global i32* null, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMB2 data length %d offset %d\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"data area offset %d overlaps SMB2 header %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SMB2 len %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_calc_size(i8* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb2_sync_pdu*, align 8
  %6 = alloca %struct.smb2_sync_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.smb2_sync_pdu*
  store %struct.smb2_sync_pdu* %11, %struct.smb2_sync_pdu** %5, align 8
  %12 = load %struct.smb2_sync_pdu*, %struct.smb2_sync_pdu** %5, align 8
  %13 = getelementptr inbounds %struct.smb2_sync_pdu, %struct.smb2_sync_pdu* %12, i32 0, i32 1
  store %struct.smb2_sync_hdr* %13, %struct.smb2_sync_hdr** %6, align 8
  %14 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le16_to_cpu(i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.smb2_sync_pdu*, %struct.smb2_sync_pdu** %5, align 8
  %20 = getelementptr inbounds %struct.smb2_sync_pdu, %struct.smb2_sync_pdu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** @has_smb2_data_area, align 8
  %28 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le16_to_cpu(i32 %30)
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %62

36:                                               ; preds = %2
  %37 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %38 = call i32 @smb2_get_data_area_len(i32* %7, i32* %8, %struct.smb2_sync_hdr* %37)
  %39 = load i32, i32* @FYI, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @VFS, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  store i32 0, i32* %8, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i32, i32* @FYI, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @smb2_get_data_area_len(i32*, i32*, %struct.smb2_sync_hdr*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
