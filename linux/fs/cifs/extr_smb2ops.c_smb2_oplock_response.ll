; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_oplock_response.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_oplock_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cifs_fid = type { i32, i32 }
%struct.cifsInodeInfo = type { i32 }

@SMB2_GLOBAL_CAP_LEASING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_tcon*, %struct.cifs_fid*, %struct.cifsInodeInfo*)* @smb2_oplock_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_oplock_response(%struct.cifs_tcon* %0, %struct.cifs_fid* %1, %struct.cifsInodeInfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.cifs_fid*, align 8
  %7 = alloca %struct.cifsInodeInfo*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %5, align 8
  store %struct.cifs_fid* %1, %struct.cifs_fid** %6, align 8
  store %struct.cifsInodeInfo* %2, %struct.cifsInodeInfo** %7, align 8
  %8 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %9 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SMB2_GLOBAL_CAP_LEASING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %20 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %21 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %24 = call i32 @smb2_get_lease_state(%struct.cifsInodeInfo* %23)
  %25 = call i32 @SMB2_lease_break(i32 0, %struct.cifs_tcon* %19, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %3
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %28 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %29 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %32 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %35 = call i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = call i32 @SMB2_oplock_break(i32 0, %struct.cifs_tcon* %27, i32 %30, i32 %33, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %26, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @SMB2_lease_break(i32, %struct.cifs_tcon*, i32, i32) #1

declare dso_local i32 @smb2_get_lease_state(%struct.cifsInodeInfo*) #1

declare dso_local i32 @SMB2_oplock_break(i32, %struct.cifs_tcon*, i32, i32, i32) #1

declare dso_local i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
