; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_io.c_register_intf_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_io.c_register_intf_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { i32*, i32*, i64 }
%struct._adapter = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.intf_hdl*)* @register_intf_hdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_intf_hdl(i32* %0, %struct.intf_hdl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.intf_hdl*, align 8
  %6 = alloca %struct._adapter*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.intf_hdl* %1, %struct.intf_hdl** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct._adapter*
  store %struct._adapter* %8, %struct._adapter** %6, align 8
  %9 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %10 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %13 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct._adapter*, %struct._adapter** %6, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 0
  %16 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %17 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct._adapter*, %struct._adapter** %6, align 8
  %19 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %20 = call i32 @_init_intf_hdl(%struct._adapter* %18, %struct.intf_hdl* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @_init_intf_hdl(%struct._adapter*, %struct.intf_hdl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
