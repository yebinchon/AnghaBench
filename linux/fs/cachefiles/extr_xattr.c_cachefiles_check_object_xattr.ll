; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_check_object_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_xattr.c_cachefiles_check_object_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { %struct.TYPE_6__, %struct.dentry* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.dentry = type { i32 }
%struct.cachefiles_xattr = type { i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p,#%d\00", align 1
@cachefiles_gfp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cachefiles_xattr_cache = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't read xattr on %lu (err %d)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"checkaux %s #%u\00", align 1
@XATTR_REPLACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Can't update xattr on %lu (error %d)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Cache object %lu xattr length incorrect\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_check_object_xattr(%struct.cachefiles_object* %0, %struct.cachefiles_xattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_object*, align 8
  %5 = alloca %struct.cachefiles_xattr*, align 8
  %6 = alloca %struct.cachefiles_xattr*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %4, align 8
  store %struct.cachefiles_xattr* %1, %struct.cachefiles_xattr** %5, align 8
  %11 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %12 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %11, i32 0, i32 1
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %7, align 8
  %14 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %15 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %16 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.cachefiles_object* %14, i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call i32 @ASSERT(%struct.dentry* %19)
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = call %struct.dentry* @d_backing_inode(%struct.dentry* %21)
  %23 = call i32 @ASSERT(%struct.dentry* %22)
  %24 = load i32, i32* @cachefiles_gfp, align 4
  %25 = call %struct.cachefiles_xattr* @kmalloc(i32 536, i32 %24)
  store %struct.cachefiles_xattr* %25, %struct.cachefiles_xattr** %6, align 8
  %26 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %27 = icmp ne %struct.cachefiles_xattr* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %158

32:                                               ; preds = %2
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = load i32, i32* @cachefiles_xattr_cache, align 4
  %35 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %36 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %35, i32 0, i32 1
  %37 = call i32 @vfs_getxattr(%struct.dentry* %33, i32 %34, i64* %36, i32 513)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ENODATA, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %155

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ERANGE, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %147

52:                                               ; preds = %46
  %53 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = call %struct.dentry* @d_backing_inode(%struct.dentry* %54)
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @cachefiles_io_error_obj(%struct.cachefiles_object* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59)
  br label %141

61:                                               ; preds = %32
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %147

65:                                               ; preds = %61
  %66 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %67 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %70 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %155

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %77 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %79 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %139

87:                                               ; preds = %74
  %88 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %89 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %93 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %103 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %102, i32 0, i32 0
  %104 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %105 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %104, i32 0, i32 2
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.dentry*, %struct.dentry** %7, align 8
  %108 = call %struct.dentry* @d_backing_inode(%struct.dentry* %107)
  %109 = call i32 @i_size_read(%struct.dentry* %108)
  %110 = call i32 @fscache_check_aux(%struct.TYPE_6__* %103, i32* %105, i32 %106, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  switch i32 %111, label %115 [
    i32 128, label %112
    i32 130, label %113
    i32 129, label %114
  ]

112:                                              ; preds = %87
  br label %140

113:                                              ; preds = %87
  br label %117

114:                                              ; preds = %87
  br label %155

115:                                              ; preds = %87
  %116 = call i32 (...) @BUG()
  br label %117

117:                                              ; preds = %115, %113
  %118 = load %struct.dentry*, %struct.dentry** %7, align 8
  %119 = load i32, i32* @cachefiles_xattr_cache, align 4
  %120 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %121 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %120, i32 0, i32 1
  %122 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %5, align 8
  %123 = getelementptr inbounds %struct.cachefiles_xattr, %struct.cachefiles_xattr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @XATTR_REPLACE, align 4
  %126 = call i32 @vfs_setxattr(%struct.dentry* %118, i32 %119, i64* %121, i32 %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %117
  %130 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %131 = load %struct.dentry*, %struct.dentry** %7, align 8
  %132 = call %struct.dentry* @d_backing_inode(%struct.dentry* %131)
  %133 = getelementptr inbounds %struct.dentry, %struct.dentry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @cachefiles_io_error_obj(%struct.cachefiles_object* %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %136)
  br label %141

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138, %74
  br label %140

140:                                              ; preds = %139, %112
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %155, %147, %140, %129, %52
  %142 = load %struct.cachefiles_xattr*, %struct.cachefiles_xattr** %6, align 8
  %143 = call i32 @kfree(%struct.cachefiles_xattr* %142)
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %158

147:                                              ; preds = %64, %51
  %148 = load %struct.dentry*, %struct.dentry** %7, align 8
  %149 = call %struct.dentry* @d_backing_inode(%struct.dentry* %148)
  %150 = getelementptr inbounds %struct.dentry, %struct.dentry* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %141

155:                                              ; preds = %114, %73, %45
  %156 = load i32, i32* @ESTALE, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %8, align 4
  br label %141

158:                                              ; preds = %141, %28
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @_enter(i8*, %struct.cachefiles_object*, i32) #1

declare dso_local i32 @ASSERT(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_backing_inode(%struct.dentry*) #1

declare dso_local %struct.cachefiles_xattr* @kmalloc(i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i32, i64*, i32) #1

declare dso_local i32 @cachefiles_io_error_obj(%struct.cachefiles_object*, i8*, i32, i32) #1

declare dso_local i32 @_debug(i8*, i32, i32) #1

declare dso_local i32 @fscache_check_aux(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.dentry*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @vfs_setxattr(%struct.dentry*, i32, i64*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cachefiles_xattr*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
