; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_autodisable_serverino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_autodisable_serverino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32, i32, i64 }
%struct.cifs_tcon = type { i8* }

@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Autodisabling the use of server inode numbers on %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"new server\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"The server doesn't seem to support them properly or the files might be on different servers (DFS).\0A\00", align 1
@.str.3 = private unnamed_addr constant [122 x i8] c"Hardlinks will not be recognized on this mount. Consider mounting with the \22noserverino\22 option to silence this message.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_autodisable_serverino(%struct.cifs_sb_info* %0) #0 {
  %2 = alloca %struct.cifs_sb_info*, align 8
  %3 = alloca %struct.cifs_tcon*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %2, align 8
  %4 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %5 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %3, align 8
  %11 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %12 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %17 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %16)
  store %struct.cifs_tcon* %17, %struct.cifs_tcon** %3, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %22 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %2, align 8
  %26 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @VFS, align 4
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %3, align 8
  %29 = icmp ne %struct.cifs_tcon* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %3, align 8
  %32 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @VFS, align 4
  %39 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %38, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @VFS, align 4
  %41 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %40, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
