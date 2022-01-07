; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r8712_init_drv_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r8712_init_drv_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct._adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct._adapter* }

@r8712_use_tkipkey_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_init_drv_sw(%struct._adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %5 = load %struct._adapter*, %struct._adapter** %3, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 5
  %7 = call i32 @r8712_init_cmd_priv(%struct.TYPE_5__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %72

12:                                               ; preds = %1
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct._adapter* %13, %struct._adapter** %16, align 8
  %17 = load %struct._adapter*, %struct._adapter** %3, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 4
  %19 = call i32 @r8712_init_evt_priv(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %72

24:                                               ; preds = %12
  %25 = load %struct._adapter*, %struct._adapter** %3, align 8
  %26 = call i32 @r8712_init_mlme_priv(%struct._adapter* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %24
  %32 = load %struct._adapter*, %struct._adapter** %3, align 8
  %33 = getelementptr inbounds %struct._adapter, %struct._adapter* %32, i32 0, i32 3
  %34 = load %struct._adapter*, %struct._adapter** %3, align 8
  %35 = call i32 @_r8712_init_xmit_priv(i32* %33, %struct._adapter* %34)
  %36 = load %struct._adapter*, %struct._adapter** %3, align 8
  %37 = getelementptr inbounds %struct._adapter, %struct._adapter* %36, i32 0, i32 2
  %38 = load %struct._adapter*, %struct._adapter** %3, align 8
  %39 = call i32 @_r8712_init_recv_priv(i32* %37, %struct._adapter* %38)
  %40 = load %struct._adapter*, %struct._adapter** %3, align 8
  %41 = getelementptr inbounds %struct._adapter, %struct._adapter* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_4__* %41 to i8*
  %43 = call i32 @memset(i8* %42, i32 0, i32 4)
  %44 = load %struct._adapter*, %struct._adapter** %3, align 8
  %45 = getelementptr inbounds %struct._adapter, %struct._adapter* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* @r8712_use_tkipkey_handler, align 4
  %48 = call i32 @timer_setup(i32* %46, i32 %47, i32 0)
  %49 = load %struct._adapter*, %struct._adapter** %3, align 8
  %50 = getelementptr inbounds %struct._adapter, %struct._adapter* %49, i32 0, i32 0
  %51 = call i32 @_r8712_init_sta_priv(%struct.TYPE_6__* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %31
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %72

56:                                               ; preds = %31
  %57 = load %struct._adapter*, %struct._adapter** %3, align 8
  %58 = load %struct._adapter*, %struct._adapter** %3, align 8
  %59 = getelementptr inbounds %struct._adapter, %struct._adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct._adapter* %57, %struct._adapter** %60, align 8
  %61 = load %struct._adapter*, %struct._adapter** %3, align 8
  %62 = call i32 @r8712_init_bcmc_stainfo(%struct._adapter* %61)
  %63 = load %struct._adapter*, %struct._adapter** %3, align 8
  %64 = call i32 @r8712_init_pwrctrl_priv(%struct._adapter* %63)
  %65 = load %struct._adapter*, %struct._adapter** %3, align 8
  %66 = call i32 @mp871xinit(%struct._adapter* %65)
  %67 = load %struct._adapter*, %struct._adapter** %3, align 8
  %68 = call i32 @init_default_value(%struct._adapter* %67)
  %69 = load %struct._adapter*, %struct._adapter** %3, align 8
  %70 = call i32 @r8712_InitSwLeds(%struct._adapter* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %56, %54, %29, %22, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @r8712_init_cmd_priv(%struct.TYPE_5__*) #1

declare dso_local i32 @r8712_init_evt_priv(i32*) #1

declare dso_local i32 @r8712_init_mlme_priv(%struct._adapter*) #1

declare dso_local i32 @_r8712_init_xmit_priv(i32*, %struct._adapter*) #1

declare dso_local i32 @_r8712_init_recv_priv(i32*, %struct._adapter*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @_r8712_init_sta_priv(%struct.TYPE_6__*) #1

declare dso_local i32 @r8712_init_bcmc_stainfo(%struct._adapter*) #1

declare dso_local i32 @r8712_init_pwrctrl_priv(%struct._adapter*) #1

declare dso_local i32 @mp871xinit(%struct._adapter*) #1

declare dso_local i32 @init_default_value(%struct._adapter*) #1

declare dso_local i32 @r8712_InitSwLeds(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
