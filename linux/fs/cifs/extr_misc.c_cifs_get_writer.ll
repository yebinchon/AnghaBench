; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_get_writer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_get_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { i64, i32, i32 }

@CIFS_INODE_PENDING_OPLOCK_BREAK = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@CIFS_INODE_PENDING_WRITERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_get_writer(%struct.cifsInodeInfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cifsInodeInfo*, align 8
  %4 = alloca i32, align 4
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %3, align 8
  br label %5

5:                                                ; preds = %56, %1
  %6 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %7 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %6, i32 0, i32 2
  %8 = load i32, i32* @CIFS_INODE_PENDING_OPLOCK_BREAK, align 4
  %9 = load i32, i32* @TASK_KILLABLE, align 4
  %10 = call i32 @wait_on_bit(i32* %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %5
  %16 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %17 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %20 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @CIFS_INODE_PENDING_WRITERS, align 4
  %25 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %26 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %25, i32 0, i32 2
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %15
  %29 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %30 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load i32, i32* @CIFS_INODE_PENDING_OPLOCK_BREAK, align 4
  %34 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %35 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %34, i32 0, i32 2
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %28
  %39 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %40 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %44 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i32, i32* @CIFS_INODE_PENDING_WRITERS, align 4
  %49 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %50 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %49, i32 0, i32 2
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %53 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %52, i32 0, i32 2
  %54 = load i32, i32* @CIFS_INODE_PENDING_WRITERS, align 4
  %55 = call i32 @wake_up_bit(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %38
  %57 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %58 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  br label %5

60:                                               ; preds = %28
  %61 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %62 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
