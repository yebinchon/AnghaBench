; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_reconnect_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_reconnect_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i8*)* @reconnect_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconnect_path(%struct.vfsmount* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = call %struct.dentry* @dget(%struct.dentry* %10)
  store %struct.dentry* %11, %struct.dentry** %8, align 8
  br label %12

12:                                               ; preds = %53, %3
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %12
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  %21 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %22 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  %26 = icmp eq %struct.dentry* %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = call i64 @IS_ROOT(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call %struct.dentry* @reconnect_one(%struct.vfsmount* %33, %struct.dentry* %34, i8* %35)
  store %struct.dentry* %36, %struct.dentry** %9, align 8
  br label %40

37:                                               ; preds = %19
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = call %struct.dentry* @dget_parent(%struct.dentry* %38)
  store %struct.dentry* %39, %struct.dentry** %9, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = icmp ne %struct.dentry* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %55

44:                                               ; preds = %40
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = call i64 @IS_ERR(%struct.dentry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.dentry*, %struct.dentry** %9, align 8
  %52 = call i32 @PTR_ERR(%struct.dentry* %51)
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %44
  %54 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %54, %struct.dentry** %8, align 8
  br label %12

55:                                               ; preds = %43, %12
  %56 = load %struct.dentry*, %struct.dentry** %8, align 8
  %57 = call i32 @dput(%struct.dentry* %56)
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = call i32 @clear_disconnected(%struct.dentry* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.dentry* @reconnect_one(%struct.vfsmount*, %struct.dentry*, i8*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @clear_disconnected(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
