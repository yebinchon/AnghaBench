; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_inode.c_affs_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_inode.c_affs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_5__, i32, i32, %struct.super_block* }
%struct.TYPE_5__ = type { i32 }
%struct.super_block = type { i32 }
%struct.writeback_control = type { i32 }
%struct.buffer_head = type { i32 }
%struct.affs_tail = type { i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"write_inode(%lu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"write_inode\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot read block %lu\00", align 1
@EIO = common dso_local global i32 0, align 4
@ST_ROOT = common dso_local global i32 0, align 4
@SF_MUFS = common dso_local global i32 0, align 4
@SF_SETUID = common dso_local global i32 0, align 4
@SF_SETGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.affs_tail*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %158

23:                                               ; preds = %2
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.buffer_head* @affs_bread(%struct.super_block* %24, i64 %27)
  store %struct.buffer_head* %28, %struct.buffer_head** %7, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.super_block*, %struct.super_block** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @affs_error(%struct.super_block* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %158

39:                                               ; preds = %23
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = call %struct.affs_tail* @AFFS_TAIL(%struct.super_block* %40, %struct.buffer_head* %41)
  store %struct.affs_tail* %42, %struct.affs_tail** %8, align 8
  %43 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %44 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @ST_ROOT, align 4
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = icmp eq i8* %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call %struct.TYPE_7__* @AFFS_ROOT_TAIL(%struct.super_block* %54, %struct.buffer_head* %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @affs_secs_to_datestamp(i32 %53, i32* %57)
  br label %147

59:                                               ; preds = %39
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call %struct.TYPE_8__* @AFFS_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %66 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %72 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %78 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %77, i32 0, i32 3
  %79 = call i32 @affs_secs_to_datestamp(i32 %76, i32* %78)
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  br i1 %87, label %146, label %88

88:                                               ; preds = %59
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call i32 @i_uid_read(%struct.inode* %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = call i32 @i_gid_read(%struct.inode* %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.super_block*, %struct.super_block** %6, align 8
  %94 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SF_MUFS, align 4
  %98 = call i64 @affs_test_opt(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %88
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 65535
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %9, align 4
  %108 = xor i32 %107, -1
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 65535
  br i1 %114, label %115, label %118

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %10, align 4
  %117 = xor i32 %116, -1
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %88
  %120 = load %struct.super_block*, %struct.super_block** %6, align 8
  %121 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SF_SETUID, align 4
  %125 = call i64 @affs_test_opt(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %9, align 4
  %129 = call i8* @cpu_to_be16(i32 %128)
  %130 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %131 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %127, %119
  %133 = load %struct.super_block*, %struct.super_block** %6, align 8
  %134 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %133)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SF_SETGID, align 4
  %138 = call i64 @affs_test_opt(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %10, align 4
  %142 = call i8* @cpu_to_be16(i32 %141)
  %143 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %144 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %132
  br label %146

146:                                              ; preds = %145, %59
  br label %147

147:                                              ; preds = %146, %49
  %148 = load %struct.super_block*, %struct.super_block** %6, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %150 = call i32 @affs_fix_checksum(%struct.super_block* %148, %struct.buffer_head* %149)
  %151 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %151, %struct.inode* %152)
  %154 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %155 = call i32 @affs_brelse(%struct.buffer_head* %154)
  %156 = load %struct.inode*, %struct.inode** %4, align 8
  %157 = call i32 @affs_free_prealloc(%struct.inode* %156)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %147, %31, %22
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i64) #1

declare dso_local i32 @affs_error(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local %struct.affs_tail* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @affs_secs_to_datestamp(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @AFFS_ROOT_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local %struct.TYPE_8__* @AFFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i64 @affs_test_opt(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @affs_free_prealloc(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
