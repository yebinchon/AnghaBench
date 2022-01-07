; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.eerbuffer* }
%struct.eerbuffer = type { i32, i32, i32, %struct.eerbuffer* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@eer_pages = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"can't open device since module parameter eer_pages is smaller than 1 or bigger than %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bufferlock = common dso_local global i32 0, align 4
@bufferlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dasd_eer_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eer_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.eerbuffer*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.eerbuffer* @kzalloc(i32 24, i32 %8)
  store %struct.eerbuffer* %9, %struct.eerbuffer** %6, align 8
  %10 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %11 = icmp ne %struct.eerbuffer* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %97

15:                                               ; preds = %2
  %16 = load i32, i32* @eer_pages, align 4
  %17 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %18 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %20 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %25 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sdiv i32 %27, %28
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23, %15
  %32 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %33 = call i32 @kfree(%struct.eerbuffer* %32)
  %34 = load i32, i32* @DBF_WARNING, align 4
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sdiv i32 %35, %36
  %38 = call i32 @DBF_EVENT(i32 %34, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %97

41:                                               ; preds = %23
  %42 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %43 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %48 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %50 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.eerbuffer* @kmalloc_array(i32 %51, i32 8, i32 %52)
  %54 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %55 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %54, i32 0, i32 3
  store %struct.eerbuffer* %53, %struct.eerbuffer** %55, align 8
  %56 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %57 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %56, i32 0, i32 3
  %58 = load %struct.eerbuffer*, %struct.eerbuffer** %57, align 8
  %59 = icmp ne %struct.eerbuffer* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %41
  %61 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %62 = call i32 @kfree(%struct.eerbuffer* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %97

65:                                               ; preds = %41
  %66 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %67 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %66, i32 0, i32 3
  %68 = load %struct.eerbuffer*, %struct.eerbuffer** %67, align 8
  %69 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %70 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @dasd_eer_allocate_buffer_pages(%struct.eerbuffer* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %76 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %75, i32 0, i32 3
  %77 = load %struct.eerbuffer*, %struct.eerbuffer** %76, align 8
  %78 = call i32 @kfree(%struct.eerbuffer* %77)
  %79 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %80 = call i32 @kfree(%struct.eerbuffer* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %97

83:                                               ; preds = %65
  %84 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %85 = load %struct.file*, %struct.file** %5, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 0
  store %struct.eerbuffer* %84, %struct.eerbuffer** %86, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_lock_irqsave(i32* @bufferlock, i64 %87)
  %89 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %90 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %89, i32 0, i32 2
  %91 = call i32 @list_add(i32* %90, i32* @bufferlist)
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* @bufferlock, i64 %92)
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = load %struct.file*, %struct.file** %5, align 8
  %96 = call i32 @nonseekable_open(%struct.inode* %94, %struct.file* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %83, %74, %60, %31, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.eerbuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.eerbuffer*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local %struct.eerbuffer* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @dasd_eer_allocate_buffer_pages(%struct.eerbuffer*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
