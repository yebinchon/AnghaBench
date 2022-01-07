; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_snoop_urb_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_snoop_urb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32*, i32 }

@usbfs_snoop_max = common dso_local global i32 0, align 4
@usbfs_snoop = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@USB_SG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, i32)* @snoop_urb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snoop_urb_data(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @usbfs_snoop_max, align 4
  %9 = call i32 @min(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @usbfs_snoop, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %68

16:                                               ; preds = %12
  %17 = load %struct.urb*, %struct.urb** %3, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* @KERN_DEBUG, align 4
  %23 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %24 = load %struct.urb*, %struct.urb** %3, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @print_hex_dump(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23, i32 32, i32 1, i32 %26, i32 %27, i32 1)
  br label %68

29:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %65, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.urb*, %struct.urb** %3, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i1 [ false, %30 ], [ %38, %36 ]
  br i1 %40, label %41, label %68

41:                                               ; preds = %39
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @USB_SG_SIZE, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @USB_SG_SIZE, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @KERN_DEBUG, align 4
  %52 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %53 = load %struct.urb*, %struct.urb** %3, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @sg_virt(i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @print_hex_dump(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %52, i32 32, i32 1, i32 %59, i32 %60, i32 1)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %30

68:                                               ; preds = %15, %21, %39
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_virt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
