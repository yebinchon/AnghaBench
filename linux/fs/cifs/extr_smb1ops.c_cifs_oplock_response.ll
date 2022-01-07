; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_oplock_response.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_oplock_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_fid = type { i32 }
%struct.cifsInodeInfo = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@LOCKING_ANDX_OPLOCK_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_tcon*, %struct.cifs_fid*, %struct.cifsInodeInfo*)* @cifs_oplock_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_oplock_response(%struct.cifs_tcon* %0, %struct.cifs_fid* %1, %struct.cifsInodeInfo* %2) #0 {
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca %struct.cifs_fid*, align 8
  %6 = alloca %struct.cifsInodeInfo*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %4, align 8
  store %struct.cifs_fid* %1, %struct.cifs_fid** %5, align 8
  store %struct.cifsInodeInfo* %2, %struct.cifsInodeInfo** %6, align 8
  %7 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %8 = load %struct.cifs_fid*, %struct.cifs_fid** %5, align 8
  %9 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LOCKING_ANDX_OPLOCK_RELEASE, align 4
  %15 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %6, align 8
  %16 = call i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = call i32 @CIFSSMBLock(i32 0, %struct.cifs_tcon* %7, i32 %10, i32 %13, i32 0, i32 0, i32 0, i32 0, i32 %14, i32 0, i32 %19)
  ret i32 %20
}

declare dso_local i32 @CIFSSMBLock(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
