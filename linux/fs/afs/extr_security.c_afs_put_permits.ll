; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_put_permits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_security.c_afs_put_permits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_permits = type { i32, i32, i32 }

@afs_permits_lock = common dso_local global i32 0, align 4
@afs_permits_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_put_permits(%struct.afs_permits* %0) #0 {
  %2 = alloca %struct.afs_permits*, align 8
  store %struct.afs_permits* %0, %struct.afs_permits** %2, align 8
  %3 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %4 = icmp ne %struct.afs_permits* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %7 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %6, i32 0, i32 2
  %8 = call i64 @refcount_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = call i32 @spin_lock(i32* @afs_permits_lock)
  %12 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %13 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %12, i32 0, i32 1
  %14 = call i32 @hash_del_rcu(i32* %13)
  %15 = call i32 @spin_unlock(i32* @afs_permits_lock)
  %16 = load %struct.afs_permits*, %struct.afs_permits** %2, align 8
  %17 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %16, i32 0, i32 0
  %18 = load i32, i32* @afs_permits_rcu, align 4
  %19 = call i32 @call_rcu(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %10, %5, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hash_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
