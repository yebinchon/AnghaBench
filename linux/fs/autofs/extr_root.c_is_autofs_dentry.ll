; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_is_autofs_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_is_autofs_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32*, i32* }

@autofs_dentry_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_autofs_dentry(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %4 = icmp ne %struct.dentry* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = call i64 @d_really_is_positive(%struct.dentry* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load %struct.dentry*, %struct.dentry** %2, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, @autofs_dentry_operations
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %14, %9, %5, %1
  %20 = phi i1 [ false, %9 ], [ false, %5 ], [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
