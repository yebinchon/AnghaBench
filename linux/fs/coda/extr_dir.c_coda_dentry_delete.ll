; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_dentry_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_dentry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@C_PURGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @coda_dentry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_dentry_delete(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = call i64 @d_really_is_negative(%struct.dentry* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call i32 @d_inode(%struct.dentry* %10)
  %12 = call %struct.TYPE_2__* @ITOC(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @C_PURGE, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i32 @d_inode(%struct.dentry* %17)
  %19 = call i64 @is_bad_inode(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %9
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @ITOC(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @is_bad_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
