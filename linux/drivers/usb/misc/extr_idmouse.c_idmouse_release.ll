; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_idmouse.c_idmouse_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_idmouse.c_idmouse_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.usb_idmouse* }
%struct.usb_idmouse = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@open_disc_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @idmouse_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmouse_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.usb_idmouse*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.usb_idmouse*, %struct.usb_idmouse** %8, align 8
  store %struct.usb_idmouse* %9, %struct.usb_idmouse** %6, align 8
  %10 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %11 = icmp eq %struct.usb_idmouse* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = call i32 @mutex_lock(i32* @open_disc_mutex)
  %17 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %18 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %21 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %26 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = call i32 @mutex_unlock(i32* @open_disc_mutex)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %15
  %32 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %33 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %37 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %42 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = call i32 @mutex_unlock(i32* @open_disc_mutex)
  %45 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %46 = call i32 @idmouse_delete(%struct.usb_idmouse* %45)
  br label %52

47:                                               ; preds = %31
  %48 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %49 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = call i32 @mutex_unlock(i32* @open_disc_mutex)
  br label %52

52:                                               ; preds = %47, %40
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %24, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idmouse_delete(%struct.usb_idmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
