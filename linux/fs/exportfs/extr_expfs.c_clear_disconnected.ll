; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_clear_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_clear_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @clear_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_disconnected(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = call i32 @dget(%struct.dentry* %4)
  br label %6

6:                                                ; preds = %13, %1
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = call %struct.dentry* @dget_parent(%struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = call i32 @IS_ROOT(%struct.dentry* %16)
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %2, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.dentry*, %struct.dentry** %2, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.dentry*, %struct.dentry** %2, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  store %struct.dentry* %33, %struct.dentry** %2, align 8
  br label %6

34:                                               ; preds = %6
  %35 = load %struct.dentry*, %struct.dentry** %2, align 8
  %36 = call i32 @dput(%struct.dentry* %35)
  ret void
}

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
