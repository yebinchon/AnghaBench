; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.autofs_sb_info = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.inode = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c",fd=%d\00", align 1
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c",pgrp=%d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c",timeout=%lu\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c",minproto=%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c",maxproto=%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c",offset\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c",direct\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c",indirect\00", align 1
@AUTOFS_SBI_STRICTEXPIRE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c",strictexpire\00", align 1
@AUTOFS_SBI_IGNORE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c",ignore\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @autofs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.autofs_sb_info* @autofs_sbi(%struct.TYPE_4__* %10)
  store %struct.autofs_sb_info* %11, %struct.autofs_sb_info** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @d_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %19 = icmp ne %struct.autofs_sb_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %31 = call i32 @uid_eq(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %21
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %37)
  %39 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %21
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %45 = call i32 @gid_eq(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %51)
  %53 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %57 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pid_vnr(i32 %58)
  %60 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HZ, align 4
  %66 = sdiv i32 %64, %65
  %67 = call i32 @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %70 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %75 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %79 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @autofs_type_offset(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %54
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = call i32 @seq_puts(%struct.seq_file* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %99

86:                                               ; preds = %54
  %87 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %88 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @autofs_type_direct(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = call i32 @seq_puts(%struct.seq_file* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %98

95:                                               ; preds = %86
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = call i32 @seq_puts(%struct.seq_file* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %101 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @AUTOFS_SBI_STRICTEXPIRE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = call i32 @seq_puts(%struct.seq_file* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %99
  %110 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %111 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @AUTOFS_SBI_IGNORE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %118 = call i32 @seq_puts(%struct.seq_file* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %109
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %20
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(%struct.TYPE_4__*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

declare dso_local i32 @pid_vnr(i32) #1

declare dso_local i64 @autofs_type_offset(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @autofs_type_direct(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
