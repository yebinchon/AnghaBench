; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock_add_if.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_lock_add_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.cifsLockInfo = type { %struct.TYPE_6__, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.cifsInodeInfo = type { i32, i64 }

@CIFS_LOCK_OP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*, %struct.cifsLockInfo*, i32)* @cifs_lock_add_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_lock_add_if(%struct.cifsFileInfo* %0, %struct.cifsLockInfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifsFileInfo*, align 8
  %6 = alloca %struct.cifsLockInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifsLockInfo*, align 8
  %9 = alloca %struct.cifsInodeInfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %5, align 8
  store %struct.cifsLockInfo* %1, %struct.cifsLockInfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %13 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @d_inode(i32 %14)
  %16 = call %struct.cifsInodeInfo* @CIFS_I(i32 %15)
  store %struct.cifsInodeInfo* %16, %struct.cifsInodeInfo** %9, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %98, %3
  store i32 0, i32* %10, align 4
  %18 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %19 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %18, i32 0, i32 0
  %20 = call i32 @cifs_down_write(i32* %19)
  %21 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %22 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %23 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %26 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %29 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %32 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CIFS_LOCK_OP, align 4
  %35 = call i32 @cifs_find_lock_conflict(%struct.cifsFileInfo* %21, i32 %24, i32 %27, i32 %30, i32 %33, %struct.cifsLockInfo** %8, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %17
  %39 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %40 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %45 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %44, i32 0, i32 2
  %46 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %47 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(%struct.TYPE_6__* %45, %struct.TYPE_6__* %49)
  %51 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %52 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %51, i32 0, i32 0
  %53 = call i32 @up_write(i32* %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %112

55:                                               ; preds = %38, %17
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %107

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EACCES, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %106

65:                                               ; preds = %59
  %66 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %67 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %66, i32 0, i32 0
  %68 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %8, align 8
  %69 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(%struct.TYPE_6__* %67, %struct.TYPE_6__* %69)
  %71 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %72 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %71, i32 0, i32 0
  %73 = call i32 @up_write(i32* %72)
  %74 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %75 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %78 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %82 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %81, i32 0, i32 0
  %83 = icmp eq %struct.TYPE_6__* %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %65
  %85 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %86 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %90 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %89, i32 0, i32 0
  %91 = icmp eq %struct.TYPE_6__* %88, %90
  br label %92

92:                                               ; preds = %84, %65
  %93 = phi i1 [ false, %65 ], [ %91, %84 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @wait_event_interruptible(i32 %76, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %17

99:                                               ; preds = %92
  %100 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %101 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %100, i32 0, i32 0
  %102 = call i32 @cifs_down_write(i32* %101)
  %103 = load %struct.cifsLockInfo*, %struct.cifsLockInfo** %6, align 8
  %104 = getelementptr inbounds %struct.cifsLockInfo, %struct.cifsLockInfo* %103, i32 0, i32 0
  %105 = call i32 @list_del_init(%struct.TYPE_6__* %104)
  br label %106

106:                                              ; preds = %99, %62
  br label %107

107:                                              ; preds = %106, %58
  %108 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %109 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %108, i32 0, i32 0
  %110 = call i32 @up_write(i32* %109)
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %43
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @cifs_down_write(i32*) #1

declare dso_local i32 @cifs_find_lock_conflict(%struct.cifsFileInfo*, i32, i32, i32, i32, %struct.cifsLockInfo**, i32) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @list_del_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
