; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_remove_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_remove_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*)* @configfs_remove_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configfs_remove_dir(%struct.config_item* %0) #0 {
  %2 = alloca %struct.config_item*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.config_item* %0, %struct.config_item** %2, align 8
  %4 = load %struct.config_item*, %struct.config_item** %2, align 8
  %5 = getelementptr inbounds %struct.config_item, %struct.config_item* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.dentry* @dget(i32 %6)
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = icmp ne %struct.dentry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i32 @remove_dir(%struct.dentry* %12)
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = call i32 @dput(%struct.dentry* %14)
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @remove_dir(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
