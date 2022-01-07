; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_delete_mid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_delete_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32, i32 }

@GlobalMid_Lock = common dso_local global i32 0, align 4
@MID_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_delete_mid(%struct.mid_q_entry* %0) #0 {
  %2 = alloca %struct.mid_q_entry*, align 8
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %2, align 8
  %3 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %4 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %5 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MID_DELETED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %12 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load i32, i32* @MID_DELETED, align 4
  %15 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %16 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %10, %1
  %20 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %21 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %22 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %21)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
