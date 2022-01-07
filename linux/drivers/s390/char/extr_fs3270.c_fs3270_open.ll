; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_fs3270.c_fs3270_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_fs3270.c_fs3270_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.idal_buffer* }
%struct.idal_buffer = type { %struct.TYPE_8__, %struct.idal_buffer*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fs3270 = type { %struct.TYPE_8__, %struct.fs3270*, i32, i32 }
%struct.tty_struct = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@IBM_FS3270_MAJOR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IBM_TTY3270_MAJOR = common dso_local global i64 0, align 8
@fs3270_mutex = common dso_local global i32 0, align 4
@fs3270_fn = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@RAW3270_VIEW_LOCK_BH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fs3270_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs3270_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fs3270*, align 8
  %7 = alloca %struct.idal_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tty_struct*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call i32 @file_inode(%struct.file* %11)
  %13 = call i64 @imajor(i32 %12)
  %14 = load i64, i64* @IBM_FS3270_MAJOR, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %147

19:                                               ; preds = %2
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = call i32 @file_inode(%struct.file* %20)
  %22 = call i32 @iminor(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = call %struct.tty_struct* (...) @get_current_tty()
  store %struct.tty_struct* %26, %struct.tty_struct** %10, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %28 = icmp ne %struct.tty_struct* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IBM_TTY3270_MAJOR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29, %25
  %38 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %39 = call i32 @tty_kref_put(%struct.tty_struct* %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %147

42:                                               ; preds = %29
  %43 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  %46 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  %47 = call i32 @tty_kref_put(%struct.tty_struct* %46)
  br label %48

48:                                               ; preds = %42, %19
  %49 = call i32 @mutex_lock(i32* @fs3270_mutex)
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @raw3270_find_view(i32* @fs3270_fn, i32 %50)
  %52 = inttoptr i64 %51 to %struct.fs3270*
  store %struct.fs3270* %52, %struct.fs3270** %6, align 8
  %53 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %54 = bitcast %struct.fs3270* %53 to %struct.idal_buffer*
  %55 = call i64 @IS_ERR(%struct.idal_buffer* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %59 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %58, i32 0, i32 0
  %60 = call i32 @raw3270_put_view(%struct.TYPE_8__* %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %144

63:                                               ; preds = %48
  %64 = call %struct.idal_buffer* (...) @fs3270_alloc_view()
  %65 = bitcast %struct.idal_buffer* %64 to %struct.fs3270*
  store %struct.fs3270* %65, %struct.fs3270** %6, align 8
  %66 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %67 = bitcast %struct.fs3270* %66 to %struct.idal_buffer*
  %68 = call i64 @IS_ERR(%struct.idal_buffer* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %72 = bitcast %struct.fs3270* %71 to %struct.idal_buffer*
  %73 = call i32 @PTR_ERR(%struct.idal_buffer* %72)
  store i32 %73, i32* %9, align 4
  br label %144

74:                                               ; preds = %63
  %75 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %76 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %75, i32 0, i32 3
  %77 = call i32 @init_waitqueue_head(i32* %76)
  %78 = load i32, i32* @current, align 4
  %79 = call i32 @task_pid(i32 %78)
  %80 = call i32 @get_pid(i32 %79)
  %81 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %82 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %84 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @RAW3270_VIEW_LOCK_BH, align 4
  %87 = call i32 @raw3270_add_view(%struct.TYPE_8__* %84, i32* @fs3270_fn, i32 %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %74
  %91 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %92 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %91, i32 0, i32 0
  %93 = call i32 @fs3270_free_view(%struct.TYPE_8__* %92)
  br label %144

94:                                               ; preds = %74
  %95 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %96 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 2, %98
  %100 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %101 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %99, %103
  %105 = add nsw i32 %104, 5
  %106 = call %struct.idal_buffer* @idal_buffer_alloc(i32 %105, i32 0)
  store %struct.idal_buffer* %106, %struct.idal_buffer** %7, align 8
  %107 = load %struct.idal_buffer*, %struct.idal_buffer** %7, align 8
  %108 = call i64 @IS_ERR(%struct.idal_buffer* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %94
  %111 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %112 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %111, i32 0, i32 0
  %113 = call i32 @raw3270_put_view(%struct.TYPE_8__* %112)
  %114 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %115 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %114, i32 0, i32 0
  %116 = call i32 @raw3270_del_view(%struct.TYPE_8__* %115)
  %117 = load %struct.idal_buffer*, %struct.idal_buffer** %7, align 8
  %118 = call i32 @PTR_ERR(%struct.idal_buffer* %117)
  store i32 %118, i32* %9, align 4
  br label %144

119:                                              ; preds = %94
  %120 = load %struct.idal_buffer*, %struct.idal_buffer** %7, align 8
  %121 = bitcast %struct.idal_buffer* %120 to %struct.fs3270*
  %122 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %123 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %122, i32 0, i32 1
  store %struct.fs3270* %121, %struct.fs3270** %123, align 8
  %124 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %125 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %124, i32 0, i32 0
  %126 = call i32 @raw3270_activate_view(%struct.TYPE_8__* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %119
  %130 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %131 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %130, i32 0, i32 0
  %132 = call i32 @raw3270_put_view(%struct.TYPE_8__* %131)
  %133 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %134 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %133, i32 0, i32 0
  %135 = call i32 @raw3270_del_view(%struct.TYPE_8__* %134)
  br label %144

136:                                              ; preds = %119
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = load %struct.file*, %struct.file** %5, align 8
  %139 = call i32 @stream_open(%struct.inode* %137, %struct.file* %138)
  %140 = load %struct.fs3270*, %struct.fs3270** %6, align 8
  %141 = bitcast %struct.fs3270* %140 to %struct.idal_buffer*
  %142 = load %struct.file*, %struct.file** %5, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 0
  store %struct.idal_buffer* %141, %struct.idal_buffer** %143, align 8
  br label %144

144:                                              ; preds = %136, %129, %110, %90, %70, %57
  %145 = call i32 @mutex_unlock(i32* @fs3270_mutex)
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %144, %37, %16
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @imajor(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local %struct.tty_struct* @get_current_tty(...) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @raw3270_find_view(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.idal_buffer*) #1

declare dso_local i32 @raw3270_put_view(%struct.TYPE_8__*) #1

declare dso_local %struct.idal_buffer* @fs3270_alloc_view(...) #1

declare dso_local i32 @PTR_ERR(%struct.idal_buffer*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @raw3270_add_view(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @fs3270_free_view(%struct.TYPE_8__*) #1

declare dso_local %struct.idal_buffer* @idal_buffer_alloc(i32, i32) #1

declare dso_local i32 @raw3270_del_view(%struct.TYPE_8__*) #1

declare dso_local i32 @raw3270_activate_view(%struct.TYPE_8__*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
