; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_add_pending_open_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_add_pending_open_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fid = type { %struct.cifs_pending_open*, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_pending_open = type { i32, %struct.tcon_link*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SMB2_LEASE_KEY_SIZE = common dso_local global i32 0, align 4
@CIFS_OPLOCK_NO_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_add_pending_open_locked(%struct.cifs_fid* %0, %struct.tcon_link* %1, %struct.cifs_pending_open* %2) #0 {
  %4 = alloca %struct.cifs_fid*, align 8
  %5 = alloca %struct.tcon_link*, align 8
  %6 = alloca %struct.cifs_pending_open*, align 8
  store %struct.cifs_fid* %0, %struct.cifs_fid** %4, align 8
  store %struct.tcon_link* %1, %struct.tcon_link** %5, align 8
  store %struct.cifs_pending_open* %2, %struct.cifs_pending_open** %6, align 8
  %7 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %6, align 8
  %8 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cifs_fid*, %struct.cifs_fid** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SMB2_LEASE_KEY_SIZE, align 4
  %14 = call i32 @memcpy(i32 %9, i32 %12, i32 %13)
  %15 = load i32, i32* @CIFS_OPLOCK_NO_CHANGE, align 4
  %16 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %6, align 8
  %17 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.tcon_link*, %struct.tcon_link** %5, align 8
  %19 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %6, align 8
  %20 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %19, i32 0, i32 1
  store %struct.tcon_link* %18, %struct.tcon_link** %20, align 8
  %21 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %6, align 8
  %22 = load %struct.cifs_fid*, %struct.cifs_fid** %4, align 8
  %23 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %22, i32 0, i32 0
  store %struct.cifs_pending_open* %21, %struct.cifs_pending_open** %23, align 8
  %24 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %24, i32 0, i32 0
  %26 = load %struct.tcon_link*, %struct.tcon_link** %5, align 8
  %27 = call %struct.TYPE_2__* @tlink_tcon(%struct.tcon_link* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %25, i32* %28)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @tlink_tcon(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
