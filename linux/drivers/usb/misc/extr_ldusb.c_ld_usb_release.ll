; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ldusb.c_ld_usb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ldusb.c_ld_usb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ld_usb* }
%struct.ld_usb = type { i32, i32, i64, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ld_usb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ld_usb_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ld_usb*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ld_usb*, %struct.ld_usb** %8, align 8
  store %struct.ld_usb* %9, %struct.ld_usb** %5, align 8
  %10 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %11 = icmp eq %struct.ld_usb* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %17 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %20 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %60

26:                                               ; preds = %15
  %27 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %28 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %33 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %36 = call i32 @ld_usb_delete(%struct.ld_usb* %35)
  br label %64

37:                                               ; preds = %26
  %38 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %39 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %44 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %47 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 2, %52
  %54 = call i32 @wait_event_interruptible_timeout(i32 %45, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %42, %37
  %56 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %57 = call i32 @ld_usb_abort_transfers(%struct.ld_usb* %56)
  %58 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %59 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %23
  %61 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %62 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %31, %12
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ld_usb_delete(%struct.ld_usb*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @ld_usb_abort_transfers(%struct.ld_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
