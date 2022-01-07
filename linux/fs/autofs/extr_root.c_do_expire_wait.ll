; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_do_expire_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_do_expire_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32)* @do_expire_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_expire_wait(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.path, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.path*, %struct.path** %4, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.dentry* @autofs_lookup_expiring(%struct.dentry* %12, i32 %13)
  store %struct.dentry* %14, %struct.dentry** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = call i64 @IS_ERR(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.dentry* %19)
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = icmp ne %struct.dentry* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct.path*, %struct.path** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @autofs_expire_wait(%struct.path* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %30, %struct.dentry** %29, align 8
  %31 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %32 = load %struct.path*, %struct.path** %4, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 8
  %35 = call i32 @autofs_expire_wait(%struct.path* %8, i32 0)
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = call i32 @autofs_del_expiring(%struct.dentry* %36)
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = call i32 @dput(%struct.dentry* %38)
  br label %40

40:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %24, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.dentry* @autofs_lookup_expiring(%struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @autofs_expire_wait(%struct.path*, i32) #1

declare dso_local i32 @autofs_del_expiring(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
