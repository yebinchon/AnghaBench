; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera_debugfs_entry = type { i32, i32 }
%struct.gb_camera = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.gb_connection* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.gb_connection = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"camera-%u.%u\00", align 1
@GB_CAMERA_DEBUGFS_BUFFER_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_camera_debugfs_entries = common dso_local global %struct.gb_camera_debugfs_entry* null, align 8
@gb_camera_debugfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*)* @gb_camera_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_debugfs_init(%struct.gb_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_camera*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca [27 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_camera_debugfs_entry*, align 8
  store %struct.gb_camera* %0, %struct.gb_camera** %3, align 8
  %8 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %9 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %8, i32 0, i32 2
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %4, align 8
  %11 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %12 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %13 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %18 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snprintf(i8* %11, i32 27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  %23 = getelementptr inbounds [27 x i8], [27 x i8]* %5, i64 0, i64 0
  %24 = call i32 (...) @gb_debugfs_get()
  %25 = call i32 @debugfs_create_dir(i8* %23, i32 %24)
  %26 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %27 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @GB_CAMERA_DEBUGFS_BUFFER_MAX, align 4
  %30 = call i32 @array_size(i32 %29, i32 8)
  %31 = call %struct.TYPE_8__* @vmalloc(i32 %30)
  %32 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %33 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %36 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %78

43:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.gb_camera_debugfs_entry*, %struct.gb_camera_debugfs_entry** @gb_camera_debugfs_entries, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.gb_camera_debugfs_entry* %46)
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load %struct.gb_camera_debugfs_entry*, %struct.gb_camera_debugfs_entry** @gb_camera_debugfs_entries, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.gb_camera_debugfs_entry, %struct.gb_camera_debugfs_entry* %50, i64 %52
  store %struct.gb_camera_debugfs_entry* %53, %struct.gb_camera_debugfs_entry** %7, align 8
  %54 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %55 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.gb_camera_debugfs_entry*, %struct.gb_camera_debugfs_entry** %7, align 8
  %63 = getelementptr inbounds %struct.gb_camera_debugfs_entry, %struct.gb_camera_debugfs_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gb_camera_debugfs_entry*, %struct.gb_camera_debugfs_entry** %7, align 8
  %66 = getelementptr inbounds %struct.gb_camera_debugfs_entry, %struct.gb_camera_debugfs_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %69 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.gb_camera*, %struct.gb_camera** %3, align 8
  %73 = call i32 @debugfs_create_file(i32 %64, i32 %67, i32 %71, %struct.gb_camera* %72, i32* @gb_camera_debugfs_ops)
  br label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %44

77:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %40
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @gb_debugfs_get(...) #1

declare dso_local %struct.TYPE_8__* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.gb_camera_debugfs_entry*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.gb_camera*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
