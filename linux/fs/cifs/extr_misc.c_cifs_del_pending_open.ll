; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_del_pending_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_del_pending_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_pending_open = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_del_pending_open(%struct.cifs_pending_open* %0) #0 {
  %2 = alloca %struct.cifs_pending_open*, align 8
  store %struct.cifs_pending_open* %0, %struct.cifs_pending_open** %2, align 8
  %3 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %2, align 8
  %4 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.TYPE_2__* @tlink_tcon(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %2, align 8
  %10 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %9, i32 0, i32 1
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.cifs_pending_open*, %struct.cifs_pending_open** %2, align 8
  %13 = getelementptr inbounds %struct.cifs_pending_open, %struct.cifs_pending_open* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @tlink_tcon(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @tlink_tcon(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
