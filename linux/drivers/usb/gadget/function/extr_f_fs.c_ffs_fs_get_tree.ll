; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_fs_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_fs_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, %struct.ffs_sb_fill_data* }
%struct.ffs_sb_fill_data = type { %struct.ffs_data*, i32, i32 }
%struct.ffs_data = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"No source specified\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ffs_sb_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @ffs_fs_get_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_fs_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.ffs_sb_fill_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ffs_data*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %7 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %8 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %7, i32 0, i32 1
  %9 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %8, align 8
  store %struct.ffs_sb_fill_data* %9, %struct.ffs_sb_fill_data** %4, align 8
  %10 = call i32 (...) @ENTER()
  %11 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %12 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %17 = call i32 @invalf(%struct.fs_context* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %86

18:                                               ; preds = %1
  %19 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %20 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ffs_data* @ffs_data_new(i32 %21)
  store %struct.ffs_data* %22, %struct.ffs_data** %6, align 8
  %23 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %24 = icmp ne %struct.ffs_data* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %18
  %33 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %4, align 8
  %34 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %37 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %4, align 8
  %39 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %42 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %44 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @kstrdup(i32 %45, i32 %46)
  %48 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %49 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %51 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %32
  %59 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %60 = call i32 @ffs_data_put(%struct.ffs_data* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %86

63:                                               ; preds = %32
  %64 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %65 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @ffs_acquire_dev(i32 %66)
  store i8* %67, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %73 = call i32 @ffs_data_put(%struct.ffs_data* %72)
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %86

76:                                               ; preds = %63
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %79 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %81 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %4, align 8
  %82 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %81, i32 0, i32 0
  store %struct.ffs_data* %80, %struct.ffs_data** %82, align 8
  %83 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %84 = load i32, i32* @ffs_sb_fill, align 4
  %85 = call i32 @get_tree_nodev(%struct.fs_context* %83, i32 %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %76, %71, %58, %29, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*) #1

declare dso_local %struct.ffs_data* @ffs_data_new(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @ffs_data_put(%struct.ffs_data*) #1

declare dso_local i8* @ffs_acquire_dev(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @get_tree_nodev(%struct.fs_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
