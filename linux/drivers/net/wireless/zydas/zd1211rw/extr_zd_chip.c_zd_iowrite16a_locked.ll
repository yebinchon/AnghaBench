; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_iowrite16a_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_iowrite16a_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32 }
%struct.zd_ioreq16 = type { i32 }

@USB_MAX_IOWRITE16_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"error zd_usb_iowrite16v. Error number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip* %0, %struct.zd_ioreq16* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca %struct.zd_ioreq16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %5, align 8
  store %struct.zd_ioreq16* %1, %struct.zd_ioreq16** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %14 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %13, i32 0, i32 1
  %15 = call i32 @mutex_is_locked(i32* %14)
  %16 = call i32 @ZD_ASSERT(i32 %15)
  %17 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %18 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %17, i32 0, i32 0
  %19 = call i32 @zd_usb_iowrite16v_async_start(i32* %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %74, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @USB_MAX_IOWRITE16_COUNT, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @USB_MAX_IOWRITE16_COUNT, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %24
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %39, i64 %43
  %45 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %34

53:                                               ; preds = %48, %34
  %54 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %55 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %54, i32 0, i32 0
  %56 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @zd_usb_iowrite16v_async(i32* %55, %struct.zd_ioreq16* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %66 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %65, i32 0, i32 0
  %67 = call i32 @zd_usb_iowrite16v_async_end(i32* %66, i32 0)
  %68 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %69 = call i32 @zd_chip_dev(%struct.zd_chip* %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_dbg_f(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %84

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %20

80:                                               ; preds = %20
  %81 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %82 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %81, i32 0, i32 0
  %83 = call i32 @zd_usb_iowrite16v_async_end(i32* %82, i32 50)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %64
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_usb_iowrite16v_async_start(i32*) #1

declare dso_local i32 @zd_usb_iowrite16v_async(i32*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @zd_usb_iowrite16v_async_end(i32*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
