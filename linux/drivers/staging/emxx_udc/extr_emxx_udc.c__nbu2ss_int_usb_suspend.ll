; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_int_usb_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_int_usb_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32*)* }

@vbus_gpio = common dso_local global i32 0, align 4
@SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*)* @_nbu2ss_int_usb_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_int_usb_suspend(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca %struct.nbu2ss_udc*, align 8
  %3 = alloca i64, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %2, align 8
  %4 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %5 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %1
  %9 = load i32, i32* @vbus_gpio, align 4
  %10 = call i64 @gpiod_get_value(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %50

14:                                               ; preds = %8
  %15 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %16 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %18 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %23 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (i32*)*, i32 (i32*)** %25, align 8
  %27 = icmp ne i32 (i32*)* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %30 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %33 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %38 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %37, i32 0, i32 3
  %39 = call i32 %36(i32* %38)
  %40 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %41 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %40, i32 0, i32 2
  %42 = call i32 @spin_lock(i32* %41)
  br label %43

43:                                               ; preds = %28, %21, %14
  %44 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %45 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* @SUSPEND, align 4
  %49 = call i32 @_nbu2ss_bitset(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %13, %43, %1
  ret void
}

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_nbu2ss_bitset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
