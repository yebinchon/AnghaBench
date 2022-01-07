; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_related.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_related.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.smb2_sync_hdr = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"shdr NULL in smb2_set_related\0A\00", align 1
@SMB2_FLAGS_RELATED_OPERATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb2_set_related(%struct.smb_rqst* %0) #0 {
  %2 = alloca %struct.smb_rqst*, align 8
  %3 = alloca %struct.smb2_sync_hdr*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %2, align 8
  %4 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %10, %struct.smb2_sync_hdr** %3, align 8
  %11 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %3, align 8
  %12 = icmp eq %struct.smb2_sync_hdr* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @FYI, align 4
  %15 = call i32 @cifs_dbg(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @SMB2_FLAGS_RELATED_OPERATIONS, align 4
  %18 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %3, align 8
  %19 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
