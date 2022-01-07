; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_dentry_connected.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_dentry_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @dentry_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dentry_connected(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = call i32 @dget(%struct.dentry* %5)
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call %struct.dentry* @dget_parent(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %4, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i32 @dput(%struct.dentry* %17)
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = icmp eq %struct.dentry* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i32 @dput(%struct.dentry* %23)
  store i32 0, i32* %2, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %26, %struct.dentry** %3, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = call i32 @dput(%struct.dentry* %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
