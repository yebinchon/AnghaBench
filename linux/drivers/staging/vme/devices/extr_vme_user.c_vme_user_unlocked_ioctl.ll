; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_unlocked_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_unlocked_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.inode = type { i32 }

@image = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @vme_user_unlocked_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vme_user_unlocked_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MINOR(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @vme_user_ioctl(%struct.inode* %22, %struct.file* %23, i32 %24, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  ret i64 %34
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vme_user_ioctl(%struct.inode*, %struct.file*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
