; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_add_pending_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_add_pending_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fid = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_pending_open = type { %struct.tcon_link* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_add_pending_open(%struct.cifs_fid* %0, %struct.tcon_link* %1, %struct.cifs_pending_open* %2) #0 {
  %4 = alloca %struct.cifs_fid*, align 8
  %5 = alloca %struct.tcon_link*, align 8
  %6 = alloca %struct.cifs_pending_open*, align 8
  store %struct.cifs_fid* %0, %struct.cifs_fid** %4, align 8
  store %struct.tcon_link* %1, %struct.tcon_link** %5, align 8
  store %struct.cifs_pending_open* %2, %struct.cifs_pending_open** %6, align 8
  %7 = load %struct.tcon_link*, %struct.tcon_link** %5, align 8
  %8 = call %struct.TYPE_2__* @tlink_tcon(%struct.tcon_link* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.cifs_fid*, %struct.cifs_fid** %4, align 8
  %12 = load %struct.tcon_link*, %struct.tcon_link** %5, align 8
  %13 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %6, align 8
  %14 = call i32 @cifs_add_pending_open_locked(%struct.cifs_fid* %11, %struct.tcon_link* %12, %struct.cifs_pending_open* %13)
  %15 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %6, align 8
  %16 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %15, i32 0, i32 0
  %17 = load %struct.tcon_link*, %struct.tcon_link** %16, align 8
  %18 = call %struct.TYPE_2__* @tlink_tcon(%struct.tcon_link* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @cifs_add_pending_open_locked(%struct.cifs_fid*, %struct.tcon_link*, %struct.cifs_pending_open*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
