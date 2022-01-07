; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_dns_query.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_dns_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vlserver_list = type { i32 }
%struct.afs_cell = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"afsdb\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"srv=1\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" = %d [dns]\00", align 1
@VL_SERVICE = common dso_local global i32 0, align 4
@AFS_VL_PORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to parse DNS data %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_vlserver_list* @afs_dns_query(%struct.afs_cell* %0, i64* %1) #0 {
  %3 = alloca %struct.afs_vlserver_list*, align 8
  %4 = alloca %struct.afs_cell*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.afs_vlserver_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.afs_cell* %0, %struct.afs_cell** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %10 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %14 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %19 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %22 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = call i32 @dns_query(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, i64* %24, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.afs_vlserver_list* @ERR_PTR(i32 %31)
  store %struct.afs_vlserver_list* %32, %struct.afs_vlserver_list** %3, align 8
  br label %82

33:                                               ; preds = %2
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i64 (...) @ktime_get_real_seconds()
  %39 = add nsw i64 %38, 60
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.afs_vlserver_list* @afs_extract_vlserver_list(%struct.afs_cell* %51, i8* %52, i32 %53)
  store %struct.afs_vlserver_list* %54, %struct.afs_vlserver_list** %6, align 8
  br label %64

55:                                               ; preds = %44, %41
  %56 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %57 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @VL_SERVICE, align 4
  %62 = load i32, i32* @AFS_VL_PORT, align 4
  %63 = call %struct.afs_vlserver_list* @afs_parse_text_addrs(%struct.TYPE_2__* %58, i8* %59, i32 %60, i8 signext 44, i32 %61, i32 %62)
  store %struct.afs_vlserver_list* %63, %struct.afs_vlserver_list** %6, align 8
  br label %64

64:                                               ; preds = %55, %50
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %6, align 8
  %68 = call i64 @IS_ERR(%struct.afs_vlserver_list* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %6, align 8
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.afs_vlserver_list* @ERR_PTR(i32 %73)
  %75 = icmp ne %struct.afs_vlserver_list* %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %6, align 8
  %78 = call i32 @PTR_ERR(%struct.afs_vlserver_list* %77)
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %70, %64
  %81 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %6, align 8
  store %struct.afs_vlserver_list* %81, %struct.afs_vlserver_list** %3, align 8
  br label %82

82:                                               ; preds = %80, %28
  %83 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %3, align 8
  ret %struct.afs_vlserver_list* %83
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @dns_query(i32, i8*, i32, i32, i8*, i8**, i64*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local %struct.afs_vlserver_list* @ERR_PTR(i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local %struct.afs_vlserver_list* @afs_extract_vlserver_list(%struct.afs_cell*, i8*, i32) #1

declare dso_local %struct.afs_vlserver_list* @afs_parse_text_addrs(%struct.TYPE_2__*, i8*, i32, i8 signext, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.afs_vlserver_list*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.afs_vlserver_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
