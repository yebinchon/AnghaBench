; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.mon_bus* }
%struct.mon_bus = type { i32 }
%struct.file = type { %struct.mon_reader_text* }
%struct.mon_reader_text = type { %struct.mon_reader_text*, %struct.TYPE_2__, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.mon_reader_text*, %struct.mon_bus* }

@mon_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PRINTF_DFL = common dso_local global i32 0, align 4
@mon_text_submit = common dso_local global i32 0, align 4
@mon_text_error = common dso_local global i32 0, align 4
@mon_text_complete = common dso_local global i32 0, align 4
@SLAB_NAME_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mon_text_%p\00", align 1
@mon_text_ctor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mon_text_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_text_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mon_bus*, align 8
  %7 = alloca %struct.mon_reader_text*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = call i32 @mutex_lock(i32* @mon_lock)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.mon_bus*, %struct.mon_bus** %11, align 8
  store %struct.mon_bus* %12, %struct.mon_bus** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mon_reader_text* @kzalloc(i32 72, i32 %13)
  store %struct.mon_reader_text* %14, %struct.mon_reader_text** %7, align 8
  %15 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %16 = icmp eq %struct.mon_reader_text* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %22 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %21, i32 0, i32 7
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %25 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %24, i32 0, i32 6
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %28 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %27, i32 0, i32 5
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load i32, i32* @PRINTF_DFL, align 4
  %31 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %32 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %34 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mon_reader_text* @kmalloc(i32 %35, i32 %36)
  %38 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %39 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %38, i32 0, i32 0
  store %struct.mon_reader_text* %37, %struct.mon_reader_text** %39, align 8
  %40 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %41 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %40, i32 0, i32 0
  %42 = load %struct.mon_reader_text*, %struct.mon_reader_text** %41, align 8
  %43 = icmp eq %struct.mon_reader_text* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %20
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %102

47:                                               ; preds = %20
  %48 = load %struct.mon_bus*, %struct.mon_bus** %6, align 8
  %49 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %50 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store %struct.mon_bus* %48, %struct.mon_bus** %51, align 8
  %52 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %53 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %54 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store %struct.mon_reader_text* %52, %struct.mon_reader_text** %55, align 8
  %56 = load i32, i32* @mon_text_submit, align 4
  %57 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %58 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @mon_text_error, align 4
  %61 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %62 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @mon_text_complete, align 4
  %65 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %66 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %69 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SLAB_NAME_SZ, align 4
  %72 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %73 = call i32 @snprintf(i32 %70, i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.mon_reader_text* %72)
  %74 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %75 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @mon_text_ctor, align 4
  %78 = call i32* @kmem_cache_create(i32 %76, i32 4, i32 8, i32 0, i32 %77)
  %79 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %80 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %82 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %47
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %97

88:                                               ; preds = %47
  %89 = load %struct.mon_bus*, %struct.mon_bus** %6, align 8
  %90 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %91 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %90, i32 0, i32 1
  %92 = call i32 @mon_reader_add(%struct.mon_bus* %89, %struct.TYPE_2__* %91)
  %93 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  store %struct.mon_reader_text* %93, %struct.mon_reader_text** %95, align 8
  %96 = call i32 @mutex_unlock(i32* @mon_lock)
  store i32 0, i32* %3, align 4
  br label %108

97:                                               ; preds = %85
  %98 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %99 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %98, i32 0, i32 0
  %100 = load %struct.mon_reader_text*, %struct.mon_reader_text** %99, align 8
  %101 = call i32 @kfree(%struct.mon_reader_text* %100)
  br label %102

102:                                              ; preds = %97, %44
  %103 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %104 = call i32 @kfree(%struct.mon_reader_text* %103)
  br label %105

105:                                              ; preds = %102, %17
  %106 = call i32 @mutex_unlock(i32* @mon_lock)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %88
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mon_reader_text* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.mon_reader_text* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.mon_reader_text*) #1

declare dso_local i32* @kmem_cache_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mon_reader_add(%struct.mon_bus*, %struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mon_reader_text*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
