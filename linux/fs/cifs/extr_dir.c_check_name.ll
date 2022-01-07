; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_check_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_check_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.cifs_tcon = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cifs_sb_info = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid file name\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.cifs_tcon*)* @check_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_name(%struct.dentry* %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.cifs_sb_info* @CIFS_SB(i32 %10)
  store %struct.cifs_sb_info* %11, %struct.cifs_sb_info** %6, align 8
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %13 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %23 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @le32_to_cpu(i64 %25)
  %27 = icmp sgt i32 %21, %26
  br label %28

28:                                               ; preds = %17, %2
  %29 = phi i1 [ false, %2 ], [ %27, %17 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENAMETOOLONG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %28
  %37 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %38 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i32, i32* @FYI, align 4
  %64 = call i32 @cifs_dbg(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %44

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71, %36
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %62, %33
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
