; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_pn_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_pn_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_phonet = type { i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.net_device*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.f_phonet*, i32*, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }
%struct.phonet_port = type { i32, %struct.f_phonet* }

@pn_control_intf_desc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@pn_data_intf_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@phonet_rxq_size = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @pn_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_phonet*, align 8
  %9 = alloca %struct.usb_gadget*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.phonet_port*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = call %struct.f_phonet* @func_to_pn(%struct.usb_function* %13)
  store %struct.f_phonet* %14, %struct.f_phonet** %8, align 8
  %15 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %16 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.usb_gadget*, %struct.usb_gadget** %21, align 8
  store %struct.usb_gadget* %22, %struct.usb_gadget** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pn_control_intf_desc, i32 0, i32 0), align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ugt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  store i32 %34, i32* %4, align 4
  br label %146

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pn_data_intf_desc, i32 0, i32 0), align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %143

39:                                               ; preds = %35
  %40 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %41 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %40, i32 0, i32 3
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  store %struct.net_device* %42, %struct.net_device** %10, align 8
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = call %struct.phonet_port* @netdev_priv(%struct.net_device* %43)
  store %struct.phonet_port* %44, %struct.phonet_port** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %146

50:                                               ; preds = %39
  %51 = load %struct.phonet_port*, %struct.phonet_port** %11, align 8
  %52 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %55 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %62 = call i32 @__pn_reset(%struct.usb_function* %61)
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %139

66:                                               ; preds = %63
  %67 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  %68 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %69 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %70 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = call i64 @config_ep_by_speed(%struct.usb_gadget* %67, %struct.usb_function* %68, %struct.TYPE_11__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  %76 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %77 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %78 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i64 @config_ep_by_speed(%struct.usb_gadget* %75, %struct.usb_function* %76, %struct.TYPE_11__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %74, %66
  %83 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %84 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  %87 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %88 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.phonet_port*, %struct.phonet_port** %11, align 8
  %92 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %146

96:                                               ; preds = %74
  %97 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %98 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = call i32 @usb_ep_enable(%struct.TYPE_11__* %99)
  %101 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %102 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = call i32 @usb_ep_enable(%struct.TYPE_11__* %103)
  %105 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %106 = load %struct.phonet_port*, %struct.phonet_port** %11, align 8
  %107 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %106, i32 0, i32 1
  store %struct.f_phonet* %105, %struct.f_phonet** %107, align 8
  %108 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %109 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %110 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %109, i32 0, i32 2
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store %struct.f_phonet* %108, %struct.f_phonet** %112, align 8
  %113 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %114 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %115 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store %struct.f_phonet* %113, %struct.f_phonet** %117, align 8
  %118 = load %struct.net_device*, %struct.net_device** %10, align 8
  %119 = call i32 @netif_carrier_on(%struct.net_device* %118)
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %135, %96
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @phonet_rxq_size, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %126 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %127 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @GFP_ATOMIC, align 4
  %134 = call i32 @pn_rx_submit(%struct.f_phonet* %125, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %120

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138, %63
  %140 = load %struct.phonet_port*, %struct.phonet_port** %11, align 8
  %141 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  store i32 0, i32* %4, align 4
  br label %146

143:                                              ; preds = %35
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %143, %139, %82, %47, %33
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.f_phonet* @func_to_pn(%struct.usb_function*) #1

declare dso_local %struct.phonet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__pn_reset(%struct.usb_function*) #1

declare dso_local i64 @config_ep_by_speed(%struct.usb_gadget*, %struct.usb_function*, %struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_11__*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @pn_rx_submit(%struct.f_phonet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
