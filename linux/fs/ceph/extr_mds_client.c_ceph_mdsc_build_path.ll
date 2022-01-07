; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_build_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_build_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.inode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@rename_lock = common dso_local global i32 0, align 4
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"build_path path+%d: %p SNAPDIR\0A\00", align 1
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"build_path did not end path lookup where expected, pos is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"build_path on %p %d built %llx '%.*s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ceph_mdsc_build_path(%struct.dentry* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = icmp ne %struct.dentry* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %5, align 8
  br label %168

22:                                               ; preds = %4
  %23 = call i8* (...) @__getname()
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i8* @ERR_PTR(i32 %28)
  store i8* %29, i8** %5, align 8
  br label %168

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %142, %30
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  %38 = call i32 @read_seqbegin(i32* @rename_lock)
  store i32 %38, i32* %13, align 4
  %39 = call i32 (...) @rcu_read_lock()
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %40, %struct.dentry** %10, align 8
  br label %41

41:                                               ; preds = %126, %31
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.dentry*, %struct.dentry** %10, align 8
  %46 = call %struct.inode* @d_inode(%struct.dentry* %45)
  store %struct.inode* %46, %struct.inode** %15, align 8
  %47 = load %struct.inode*, %struct.inode** %15, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.inode*, %struct.inode** %15, align 8
  %51 = call i64 @ceph_snap(%struct.inode* %50)
  %52 = load i64, i64* @CEPH_SNAPDIR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.dentry*, %struct.dentry** %10, align 8
  %57 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55, %struct.dentry* %56)
  br label %109

58:                                               ; preds = %49, %41
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %15, align 8
  %63 = icmp ne %struct.inode* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = load %struct.dentry*, %struct.dentry** %10, align 8
  %67 = icmp ne %struct.dentry* %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.inode*, %struct.inode** %15, align 8
  %70 = call i64 @ceph_snap(%struct.inode* %69)
  %71 = load i64, i64* @CEPH_NOSNAP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.dentry*, %struct.dentry** %10, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %131

79:                                               ; preds = %68, %64, %61, %58
  %80 = load %struct.dentry*, %struct.dentry** %10, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load %struct.dentry*, %struct.dentry** %10, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  br label %131

94:                                               ; preds = %79
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load %struct.dentry*, %struct.dentry** %10, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dentry*, %struct.dentry** %10, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @memcpy(i8* %98, i32 %102, i64 %106)
  br label %108

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %54
  %110 = load %struct.dentry*, %struct.dentry** %10, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.dentry*, %struct.dentry** %10, align 8
  %114 = getelementptr inbounds %struct.dentry, %struct.dentry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.dentry* @READ_ONCE(i32 %115)
  store %struct.dentry* %116, %struct.dentry** %10, align 8
  %117 = load %struct.dentry*, %struct.dentry** %10, align 8
  %118 = call i64 @IS_ROOT(%struct.dentry* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %131

121:                                              ; preds = %109
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %12, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %11, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 47, i8* %130, align 1
  br label %41

131:                                              ; preds = %125, %120, %90, %73
  %132 = load %struct.dentry*, %struct.dentry** %10, align 8
  %133 = call %struct.inode* @d_inode(%struct.dentry* %132)
  %134 = call i32 @ceph_ino(%struct.inode* %133)
  store i32 %134, i32* %14, align 4
  %135 = call i32 (...) @rcu_read_unlock()
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %13, align 4
  %140 = call i64 @read_seqretry(i32* @rename_lock, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138, %131
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %31

145:                                              ; preds = %138
  %146 = load i32, i32* %14, align 4
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @PATH_MAX, align 4
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32*, i32** %7, align 8
  store i32 %151, i32* %152, align 4
  %153 = load %struct.dentry*, %struct.dentry** %6, align 8
  %154 = load %struct.dentry*, %struct.dentry** %6, align 8
  %155 = call i32 @d_count(%struct.dentry* %154)
  %156 = load i32, i32* %14, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %11, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %153, i32 %155, i32 %156, i32 %158, i8* %162)
  %164 = load i8*, i8** %11, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  store i8* %167, i8** %5, align 8
  br label %168

168:                                              ; preds = %145, %26, %18
  %169 = load i8*, i8** %5, align 8
  ret i8* %169
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @__getname(...) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local %struct.dentry* @READ_ONCE(i32) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
