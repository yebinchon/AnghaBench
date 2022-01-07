; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_set_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_set_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iattr = type { i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.inode*, i8*, %struct.TYPE_8__*, i32)* }
%struct.TYPE_8__ = type { i32, i64, i8*, i8*, i8*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TCP_Server_Info* }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CIFS - CTIME changed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_set_file_info(%struct.inode* %0, %struct.iattr* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cifs_sb_info*, align 8
  %14 = alloca %struct.TCP_Server_Info*, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.iattr* %1, %struct.iattr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cifs_sb_info* @CIFS_SB(i32 %18)
  store %struct.cifs_sb_info* %19, %struct.cifs_sb_info** %13, align 8
  %20 = load %struct.iattr*, %struct.iattr** %8, align 8
  %21 = icmp eq %struct.iattr* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %109

25:                                               ; preds = %5
  %26 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %27 = call %struct.TYPE_9__* @cifs_sb_master_tcon(%struct.cifs_sb_info* %26)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %30, align 8
  store %struct.TCP_Server_Info* %31, %struct.TCP_Server_Info** %14, align 8
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32 (%struct.inode*, i8*, %struct.TYPE_8__*, i32)*, i32 (%struct.inode*, i8*, %struct.TYPE_8__*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.inode*, i8*, %struct.TYPE_8__*, i32)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOSYS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %109

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.iattr*, %struct.iattr** %8, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATTR_ATIME, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  %50 = load %struct.iattr*, %struct.iattr** %8, align 8
  %51 = getelementptr inbounds %struct.iattr, %struct.iattr* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cifs_UnixTimeToNT(i32 %52)
  %54 = call i8* @cpu_to_le64(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  store i8* %54, i8** %55, align 8
  br label %58

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %56, %49
  %59 = load %struct.iattr*, %struct.iattr** %8, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATTR_MTIME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  %66 = load %struct.iattr*, %struct.iattr** %8, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cifs_UnixTimeToNT(i32 %68)
  %70 = call i8* @cpu_to_le64(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  br label %74

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i8* null, i8** %73, align 8
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = load %struct.iattr*, %struct.iattr** %8, align 8
  %79 = getelementptr inbounds %struct.iattr, %struct.iattr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ATTR_CTIME, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i32, i32* @FYI, align 4
  %86 = call i32 @cifs_dbg(i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.iattr*, %struct.iattr** %8, align 8
  %88 = getelementptr inbounds %struct.iattr, %struct.iattr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cifs_UnixTimeToNT(i32 %89)
  %91 = call i8* @cpu_to_le64(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i8* %91, i8** %92, align 8
  br label %95

93:                                               ; preds = %77, %74
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i8* null, i8** %94, align 8
  br label %95

95:                                               ; preds = %93, %84
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @cpu_to_le32(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %14, align 8
  %101 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32 (%struct.inode*, i8*, %struct.TYPE_8__*, i32)*, i32 (%struct.inode*, i8*, %struct.TYPE_8__*, i32)** %103, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 %104(%struct.inode* %105, i8* %106, %struct.TYPE_8__* %15, i32 %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %95, %38, %22
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.TYPE_9__* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cifs_UnixTimeToNT(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
