; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_io.c_r8712_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_io.c_r8712_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.intf_hdl.0*, i32, i32, i32*)* }
%struct.intf_hdl.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_read_mem(%struct._adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.intf_hdl*, align 8
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct._adapter*, %struct._adapter** %5, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.intf_hdl* %13, %struct.intf_hdl** %9, align 8
  %14 = load %struct._adapter*, %struct._adapter** %5, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct._adapter*, %struct._adapter** %5, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %4
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.intf_hdl*, %struct.intf_hdl** %9, align 8
  %26 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.intf_hdl.0*, i32, i32, i32*)*, i32 (%struct.intf_hdl.0*, i32, i32, i32*)** %27, align 8
  %29 = load %struct.intf_hdl*, %struct.intf_hdl** %9, align 8
  %30 = bitcast %struct.intf_hdl* %29 to %struct.intf_hdl.0*
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 %28(%struct.intf_hdl.0* %30, i32 %31, i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %24, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
