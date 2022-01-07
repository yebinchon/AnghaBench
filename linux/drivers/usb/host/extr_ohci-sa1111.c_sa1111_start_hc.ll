; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_sa1111_start_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_sa1111_start_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"starting SA-1111 OHCI USB Controller\0A\00", align 1
@USB_RESET_PWRSENSELOW = common dso_local global i32 0, align 4
@USB_RESET_PWRCTRLLOW = common dso_local global i32 0, align 4
@USB_RESET_FORCEIFRESET = common dso_local global i32 0, align 4
@USB_RESET_FORCEHCRESET = common dso_local global i32 0, align 4
@USB_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa1111_dev*)* @sa1111_start_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1111_start_hc(%struct.sa1111_dev* %0) #0 {
  %2 = alloca %struct.sa1111_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %6 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %5, i32 0, i32 1
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = call i64 (...) @machine_is_xp860()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = call i64 (...) @machine_is_assabet()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = call i64 (...) @machine_is_pfs168()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i64 (...) @machine_is_badge4()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %13, %10, %1
  %20 = load i32, i32* @USB_RESET_PWRSENSELOW, align 4
  %21 = load i32, i32* @USB_RESET_PWRCTRLLOW, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @USB_RESET_FORCEIFRESET, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_RESET_FORCEHCRESET, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %30 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @USB_RESET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %36 = call i32 @sa1111_enable_device(%struct.sa1111_dev* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %23
  %40 = call i32 @udelay(i32 11)
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %43 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USB_RESET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %39, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @machine_is_xp860(...) #1

declare dso_local i64 @machine_is_assabet(...) #1

declare dso_local i64 @machine_is_pfs168(...) #1

declare dso_local i64 @machine_is_badge4(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sa1111_enable_device(%struct.sa1111_dev*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
