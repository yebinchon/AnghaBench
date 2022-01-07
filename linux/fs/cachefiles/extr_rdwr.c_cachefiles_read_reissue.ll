; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_rdwr.c_cachefiles_read_reissue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_rdwr.c_cachefiles_read_reissue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { i32, i32 }
%struct.cachefiles_one_read = type { i32, i32, %struct.page* }
%struct.page = type { i32, i32, %struct.address_space* }
%struct.address_space = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, %struct.page*)* }
%struct.TYPE_4__ = type { i32, %struct.address_space* }

@.str = private unnamed_addr constant [20 x i8] c"{ino=%lx},{%lx,%lx}\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" = -ENODATA [mapping]\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c" = -ENODATA [gone]\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" = -ENODATA [different]\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"reissue read\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"jumpstart %p {%lx}\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" = -EINPROGRESS\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_object*, %struct.cachefiles_one_read*)* @cachefiles_read_reissue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_read_reissue(%struct.cachefiles_object* %0, %struct.cachefiles_one_read* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_object*, align 8
  %5 = alloca %struct.cachefiles_one_read*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %4, align 8
  store %struct.cachefiles_one_read* %1, %struct.cachefiles_one_read** %5, align 8
  %10 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %11 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_4__* @d_backing_inode(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %6, align 8
  %16 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %17 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %16, i32 0, i32 2
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %7, align 8
  %19 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %20 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_4__* @d_backing_inode(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @_enter(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 2
  %34 = load %struct.address_space*, %struct.address_space** %33, align 8
  %35 = load %struct.address_space*, %struct.address_space** %6, align 8
  %36 = icmp ne %struct.address_space* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %132

41:                                               ; preds = %2
  %42 = load %struct.address_space*, %struct.address_space** %6, align 8
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.page* @find_get_page(%struct.address_space* %42, i32 %45)
  store %struct.page* %46, %struct.page** %8, align 8
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = icmp ne %struct.page* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENODATA, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %132

53:                                               ; preds = %41
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = icmp ne %struct.page* %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.page*, %struct.page** %8, align 8
  %59 = call i32 @put_page(%struct.page* %58)
  %60 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @ENODATA, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %132

63:                                               ; preds = %53
  %64 = load %struct.page*, %struct.page** %8, align 8
  %65 = call i32 @put_page(%struct.page* %64)
  %66 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %67 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %66, i32 0, i32 0
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %71 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %70, i32 0, i32 1
  %72 = call i32 @add_page_wait_queue(%struct.page* %69, i32* %71)
  %73 = load %struct.page*, %struct.page** %7, align 8
  %74 = call i64 @trylock_page(%struct.page* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %63
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.page*, %struct.page** %7, align 8
  %80 = call i64 @PageError(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %117

83:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  %84 = load %struct.page*, %struct.page** %7, align 8
  %85 = call i64 @PageUptodate(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %117

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.address_space*, %struct.address_space** %6, align 8
  %91 = getelementptr inbounds %struct.address_space, %struct.address_space* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32 (i32*, %struct.page*)*, i32 (i32*, %struct.page*)** %93, align 8
  %95 = load %struct.page*, %struct.page** %7, align 8
  %96 = call i32 %94(i32* null, %struct.page* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %117

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %63
  %102 = load %struct.page*, %struct.page** %7, align 8
  %103 = call i64 @trylock_page(%struct.page* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.page*, %struct.page** %7, align 8
  %107 = load %struct.page*, %struct.page** %7, align 8
  %108 = getelementptr inbounds %struct.page, %struct.page* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.page* %106, i32 %109)
  %111 = load %struct.page*, %struct.page** %7, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  br label %113

113:                                              ; preds = %105, %101
  %114 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i32, i32* @EINPROGRESS, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %132

117:                                              ; preds = %99, %87, %82
  %118 = load %struct.page*, %struct.page** %7, align 8
  %119 = call i32 @unlock_page(%struct.page* %118)
  %120 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %121 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %120, i32 0, i32 0
  %122 = call i32 @spin_lock_irq(i32* %121)
  %123 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %124 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %123, i32 0, i32 0
  %125 = call i32 @list_del(i32* %124)
  %126 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %127 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock_irq(i32* %127)
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %117, %113, %57, %49, %37
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_4__* @d_backing_inode(i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @add_page_wait_queue(%struct.page*, i32*) #1

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
