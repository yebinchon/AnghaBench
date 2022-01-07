; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_sesInfoAlloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_sesInfoAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sesInfoAllocCount = common dso_local global i32 0, align 4
@CifsNew = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_ses* @sesInfoAlloc() #0 {
  %1 = alloca %struct.cifs_ses*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.cifs_ses* @kzalloc(i32 24, i32 %2)
  store %struct.cifs_ses* %3, %struct.cifs_ses** %1, align 8
  %4 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  %5 = icmp ne %struct.cifs_ses* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = call i32 @atomic_inc(i32* @sesInfoAllocCount)
  %8 = load i32, i32* @CifsNew, align 4
  %9 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  %10 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  %12 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  %16 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  %19 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  %22 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_init(i32* %25)
  br label %27

27:                                               ; preds = %6, %0
  %28 = load %struct.cifs_ses*, %struct.cifs_ses** %1, align 8
  ret %struct.cifs_ses* %28
}

declare dso_local %struct.cifs_ses* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
