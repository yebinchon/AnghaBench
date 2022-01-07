; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_fattr_to_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_fattr_to_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_fattr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifsInodeInfo = type { i32, i32, i64, i32 }
%struct.cifs_sb_info = type { i32 }

@I_NEW = common dso_local global i32 0, align 4
@CIFS_MOUNT_DYNPERM = common dso_local global i32 0, align 4
@CIFS_FATTR_NEED_REVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CIFS_FATTR_DELETE_PENDING = common dso_local global i32 0, align 4
@CIFS_INO_DELETE_PENDING = common dso_local global i32 0, align 4
@CIFS_FATTR_DFS_REFERRAL = common dso_local global i32 0, align 4
@S_AUTOMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_fattr_to_inode(%struct.inode* %0, %struct.cifs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.cifs_fattr*, align 8
  %5 = alloca %struct.cifsInodeInfo*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.cifs_fattr* %1, %struct.cifs_fattr** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %7)
  store %struct.cifsInodeInfo* %8, %struct.cifsInodeInfo** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cifs_sb_info* @CIFS_SB(i32 %11)
  store %struct.cifs_sb_info* %12, %struct.cifs_sb_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %15 = call i32 @cifs_revalidate_cache(%struct.inode* %13, %struct.cifs_fattr* %14)
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 3
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %19, i32 0, i32 10
  %21 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %22 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %21, i32 0, i32 9
  %23 = call i64 @timespec64_compare(i32* %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %27 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %33 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %39 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %49 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %55 = call i32 @cifs_nlink_fattr_to_inode(%struct.inode* %53, %struct.cifs_fattr* %54)
  %56 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %57 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %62 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @I_NEW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %37
  %73 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CIFS_MOUNT_DYNPERM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72, %37
  %80 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %81 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %87 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %90 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %92 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %99 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  br label %104

100:                                              ; preds = %85
  %101 = load i64, i64* @jiffies, align 8
  %102 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %103 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %97
  %105 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %106 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CIFS_FATTR_DELETE_PENDING, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i32, i32* @CIFS_INO_DELETE_PENDING, align 4
  %113 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %114 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %113, i32 0, i32 1
  %115 = call i32 @set_bit(i32 %112, i32* %114)
  br label %121

116:                                              ; preds = %104
  %117 = load i32, i32* @CIFS_INO_DELETE_PENDING, align 4
  %118 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %119 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %118, i32 0, i32 1
  %120 = call i32 @clear_bit(i32 %117, i32* %119)
  br label %121

121:                                              ; preds = %116, %111
  %122 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %123 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %126 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %128 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %129 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @is_size_safe_to_change(%struct.cifsInodeInfo* %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %121
  %134 = load %struct.inode*, %struct.inode** %3, align 8
  %135 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %136 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @i_size_write(%struct.inode* %134, i32 %137)
  %139 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %140 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 511, %141
  %143 = ashr i32 %142, 9
  %144 = load %struct.inode*, %struct.inode** %3, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %133, %121
  %147 = load %struct.inode*, %struct.inode** %3, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 3
  %149 = call i32 @spin_unlock(i32* %148)
  %150 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %151 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CIFS_FATTR_DFS_REFERRAL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %146
  %157 = load i32, i32* @S_AUTOMOUNT, align 4
  %158 = load %struct.inode*, %struct.inode** %3, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %146
  %163 = load %struct.inode*, %struct.inode** %3, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @I_NEW, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load %struct.inode*, %struct.inode** %3, align 8
  %171 = call i32 @cifs_set_ops(%struct.inode* %170)
  br label %172

172:                                              ; preds = %169, %162
  ret void
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @cifs_revalidate_cache(%struct.inode*, %struct.cifs_fattr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @timespec64_compare(i32*, i32*) #1

declare dso_local i32 @cifs_nlink_fattr_to_inode(%struct.inode*, %struct.cifs_fattr*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @is_size_safe_to_change(%struct.cifsInodeInfo*, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_set_ops(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
