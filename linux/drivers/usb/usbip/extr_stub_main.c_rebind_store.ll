; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_rebind_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_rebind_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.bus_id_priv = type { i32 }

@BUSID_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@STUB_BUSID_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64)* @rebind_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebind_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bus_id_priv*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @BUSID_SIZE, align 4
  %13 = call i32 @strnlen(i8* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @BUSID_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.bus_id_priv* @get_busid_priv(i8* %21)
  store %struct.bus_id_priv* %22, %struct.bus_id_priv** %10, align 8
  %23 = load %struct.bus_id_priv*, %struct.bus_id_priv** %10, align 8
  %24 = icmp ne %struct.bus_id_priv* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %20
  %29 = load i32, i32* @STUB_BUSID_OTHER, align 4
  %30 = load %struct.bus_id_priv*, %struct.bus_id_priv** %10, align 8
  %31 = getelementptr inbounds %struct.bus_id_priv, %struct.bus_id_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bus_id_priv*, %struct.bus_id_priv** %10, align 8
  %33 = call i32 @put_busid_priv(%struct.bus_id_priv* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.bus_id_priv*, %struct.bus_id_priv** %10, align 8
  %36 = call i32 @do_rebind(i8* %34, %struct.bus_id_priv* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %28
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @del_match_busid(i8* %42)
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %39, %25, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local %struct.bus_id_priv* @get_busid_priv(i8*) #1

declare dso_local i32 @put_busid_priv(%struct.bus_id_priv*) #1

declare dso_local i32 @do_rebind(i8*, %struct.bus_id_priv*) #1

declare dso_local i32 @del_match_busid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
