; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_fill_fwpriv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_fill_fwpriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.registry_priv, %struct.dvobj_priv }
%struct.registry_priv = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dvobj_priv = type { i64 }
%struct.fw_priv = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@RTL8712_HCI_TYPE_72USB = common dso_local global i32 0, align 4
@RTL8712_RFC_1T1R = common dso_local global i32 0, align 4
@RTL8712_RFC_2T2R = common dso_local global i32 0, align 4
@RTL8712_RFC_1T2R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %struct.fw_priv*)* @fill_fwpriv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_fwpriv(%struct._adapter* %0, %struct.fw_priv* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.fw_priv*, align 8
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.registry_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.fw_priv* %1, %struct.fw_priv** %4, align 8
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 1
  store %struct.dvobj_priv* %8, %struct.dvobj_priv** %5, align 8
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.registry_priv* %10, %struct.registry_priv** %6, align 8
  %11 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %12 = call i32 @memset(%struct.fw_priv* %11, i32 0, i32 48)
  %13 = load i32, i32* @RTL8712_HCI_TYPE_72USB, align 4
  %14 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %15 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %20 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %19, i32 0, i32 7
  store i64 %18, i64* %20, align 8
  %21 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %22 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %25 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %27 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %38 [
    i32 130, label %29
    i32 128, label %33
    i32 129, label %37
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @RTL8712_RFC_1T1R, align 4
  %31 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %32 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load i32, i32* @RTL8712_RFC_2T2R, align 4
  %35 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %36 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %42

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %2, %37
  %39 = load i32, i32* @RTL8712_RFC_1T2R, align 4
  %40 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %41 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %33, %29
  %43 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %44 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %50 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %52 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %55 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %57 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %60 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %62 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  %67 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %68 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.registry_priv*, %struct.registry_priv** %6, align 8
  %70 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fw_priv*, %struct.fw_priv** %4, align 8
  %73 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fw_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
