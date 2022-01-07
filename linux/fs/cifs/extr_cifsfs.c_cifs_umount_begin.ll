; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_umount_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_umount_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"wake up tasks now - umount begin not complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @cifs_umount_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_umount_begin(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.cifs_sb_info*, align 8
  %4 = alloca %struct.cifs_tcon*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %5)
  store %struct.cifs_sb_info* %6, %struct.cifs_sb_info** %3, align 8
  %7 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %8 = icmp eq %struct.cifs_sb_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %76

10:                                               ; preds = %1
  %11 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %12 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %11)
  store %struct.cifs_tcon* %12, %struct.cifs_tcon** %4, align 8
  %13 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %15 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CifsExiting, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %10
  %25 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  br label %76

26:                                               ; preds = %18
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @CifsExiting, align 8
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %34 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35
  %37 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %75

42:                                               ; preds = %36
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %42
  %50 = load i32, i32* @FYI, align 4
  %51 = call i32 @cifs_dbg(i32 %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %53 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @wake_up_all(i32* %57)
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %60 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @wake_up_all(i32* %64)
  %66 = call i32 @msleep(i32 1)
  %67 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %68 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @wake_up_all(i32* %72)
  %74 = call i32 @msleep(i32 1)
  br label %75

75:                                               ; preds = %49, %42, %36
  br label %76

76:                                               ; preds = %75, %24, %9
  ret void
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
