; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_trace_debugfs_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_debugfs.c_fnic_trace_debugfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.inode = type { i64 }
%struct.file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fc_trc_flag = common dso_local global %struct.TYPE_8__* null, align 8
@trace_max_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@fnic_fc_trace_max_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fnic_trace_debugfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_trace_debugfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_7__* @kzalloc(i32 16, i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fc_trc_flag, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %19
  %27 = load i32, i32* @trace_max_pages, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @array3_size(i32 3, i32 %27, i32 %28)
  %30 = call i8* @vmalloc(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = call i32 @kfree(%struct.TYPE_7__* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %90

42:                                               ; preds = %26
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @trace_max_pages, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = mul nsw i32 3, %48
  %50 = call i32 @memset(i8* %45, i32 0, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = call i32 @fnic_get_trace_data(%struct.TYPE_7__* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %86

55:                                               ; preds = %19
  %56 = load i32, i32* @fnic_fc_trace_max_pages, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = call i32 @array3_size(i32 3, i32 %56, i32 %57)
  %59 = call i8* @vmalloc(i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %55
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = call i32 @kfree(%struct.TYPE_7__* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %90

71:                                               ; preds = %55
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @fnic_fc_trace_max_pages, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = mul nsw i32 3, %77
  %79 = call i32 @memset(i8* %74, i32 0, i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @fnic_fc_trace_get_data(%struct.TYPE_7__* %80, i64 %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %71, %42
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %66, %37, %16
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fnic_get_trace_data(%struct.TYPE_7__*) #1

declare dso_local i32 @fnic_fc_trace_get_data(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
