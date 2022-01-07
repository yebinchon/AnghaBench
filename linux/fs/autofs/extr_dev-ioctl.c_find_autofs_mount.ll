; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_find_autofs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_find_autofs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@AT_FDCWD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@AUTOFS_SUPER_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, i32 (%struct.path*, i8*)*, i8*)* @find_autofs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_autofs_mount(i8* %0, %struct.path* %1, i32 (%struct.path*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i32 (%struct.path*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.path, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store i32 (%struct.path*, i8*)* %2, i32 (%struct.path*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @AT_FDCWD, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @kern_path_mountpoint(i32 %12, i8* %13, %struct.path* %10, i32 0)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %54, %19
  %23 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %24, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AUTOFS_SUPER_MAGIC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load i32 (%struct.path*, i8*)*, i32 (%struct.path*, i8*)** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 %40(%struct.path* %10, i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = call i32 @path_get(%struct.path* %10)
  %46 = load %struct.path*, %struct.path** %7, align 8
  %47 = bitcast %struct.path* %46 to i8*
  %48 = bitcast %struct.path* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %55

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %30
  %51 = call i32 @follow_up(%struct.path* %10)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %55

54:                                               ; preds = %50
  br label %22

55:                                               ; preds = %53, %44, %22
  %56 = call i32 @path_put(%struct.path* %10)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @kern_path_mountpoint(i32, i8*, %struct.path*, i32) #1

declare dso_local i32 @path_get(%struct.path*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @follow_up(%struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
