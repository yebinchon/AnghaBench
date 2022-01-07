; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_get_target.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_symlink.c_get_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.config_item = type { i32 }
%struct.super_block = type { i32 }

@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, %struct.config_item**, %struct.super_block*)* @get_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_target(i8* %0, %struct.path* %1, %struct.config_item** %2, %struct.super_block* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.config_item**, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store %struct.config_item** %2, %struct.config_item*** %7, align 8
  store %struct.super_block* %3, %struct.super_block** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %12 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.path*, %struct.path** %6, align 8
  %15 = call i32 @kern_path(i8* %10, i32 %13, %struct.path* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %4
  %19 = load %struct.path*, %struct.path** %6, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  %24 = load %struct.super_block*, %struct.super_block** %8, align 8
  %25 = icmp eq %struct.super_block* %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.path*, %struct.path** %6, align 8
  %28 = getelementptr inbounds %struct.path, %struct.path* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call %struct.config_item* @configfs_get_config_item(%struct.TYPE_2__* %29)
  %31 = load %struct.config_item**, %struct.config_item*** %7, align 8
  store %struct.config_item* %30, %struct.config_item** %31, align 8
  %32 = load %struct.config_item**, %struct.config_item*** %7, align 8
  %33 = load %struct.config_item*, %struct.config_item** %32, align 8
  %34 = icmp ne %struct.config_item* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.path*, %struct.path** %6, align 8
  %39 = call i32 @path_put(%struct.path* %38)
  br label %40

40:                                               ; preds = %35, %26
  br label %46

41:                                               ; preds = %18
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.path*, %struct.path** %6, align 8
  %45 = call i32 @path_put(%struct.path* %44)
  br label %46

46:                                               ; preds = %41, %40
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local %struct.config_item* @configfs_get_config_item(%struct.TYPE_2__*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
