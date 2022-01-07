; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_alloc_tx_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_alloc_tx_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_tx = type { %struct.usb_tx*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_tx* (i32)* @alloc_tx_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_tx* @alloc_tx_struct(i32 %0) #0 {
  %2 = alloca %struct.usb_tx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_tx*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.usb_tx* null, %struct.usb_tx** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.usb_tx* @kzalloc(i32 16, i32 %6)
  store %struct.usb_tx* %7, %struct.usb_tx** %4, align 8
  %8 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %9 = icmp ne %struct.usb_tx* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i32 @usb_alloc_urb(i32 0, i32 %14)
  %16 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %17 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = srem i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.usb_tx* @kmalloc(i32 %25, i32 %26)
  %28 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %29 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %28, i32 0, i32 0
  store %struct.usb_tx* %27, %struct.usb_tx** %29, align 8
  %30 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %31 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %36 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %35, i32 0, i32 0
  %37 = load %struct.usb_tx*, %struct.usb_tx** %36, align 8
  %38 = icmp ne %struct.usb_tx* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %24
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %39, %10
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %48 = icmp ne %struct.usb_tx* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %51 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_free_urb(i32 %52)
  %54 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %55 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %54, i32 0, i32 0
  %56 = load %struct.usb_tx*, %struct.usb_tx** %55, align 8
  %57 = call i32 @kfree(%struct.usb_tx* %56)
  %58 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  %59 = call i32 @kfree(%struct.usb_tx* %58)
  br label %60

60:                                               ; preds = %49, %46
  store %struct.usb_tx* null, %struct.usb_tx** %2, align 8
  br label %63

61:                                               ; preds = %43
  %62 = load %struct.usb_tx*, %struct.usb_tx** %4, align 8
  store %struct.usb_tx* %62, %struct.usb_tx** %2, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.usb_tx*, %struct.usb_tx** %2, align 8
  ret %struct.usb_tx* %64
}

declare dso_local %struct.usb_tx* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_tx* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.usb_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
