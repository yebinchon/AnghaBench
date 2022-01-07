; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_count_ext_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_count_ext_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32, %struct.usb_function** }
%struct.usb_function = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.usb_os_desc* }
%struct.usb_os_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @count_ext_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_ext_compat(%struct.usb_configuration* %0) #0 {
  %2 = alloca %struct.usb_configuration*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_os_desc*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.usb_configuration*, %struct.usb_configuration** %2, align 8
  %11 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %8
  %15 = load %struct.usb_configuration*, %struct.usb_configuration** %2, align 8
  %16 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %15, i32 0, i32 1
  %17 = load %struct.usb_function**, %struct.usb_function*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.usb_function*, %struct.usb_function** %17, i64 %19
  %21 = load %struct.usb_function*, %struct.usb_function** %20, align 8
  store %struct.usb_function* %21, %struct.usb_function** %5, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %60, %14
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %25 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %31 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %29, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %60

40:                                               ; preds = %28
  %41 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %42 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.usb_os_desc*, %struct.usb_os_desc** %47, align 8
  store %struct.usb_os_desc* %48, %struct.usb_os_desc** %7, align 8
  %49 = load %struct.usb_os_desc*, %struct.usb_os_desc** %7, align 8
  %50 = icmp ne %struct.usb_os_desc* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.usb_os_desc*, %struct.usb_os_desc** %7, align 8
  %53 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %51, %40
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %22

63:                                               ; preds = %22
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %8

67:                                               ; preds = %8
  %68 = load i32, i32* %4, align 4
  %69 = icmp sgt i32 %68, 255
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
