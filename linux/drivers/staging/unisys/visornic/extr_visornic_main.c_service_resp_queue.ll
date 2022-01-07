; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_service_resp_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_service_resp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uiscmdrsp = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i64, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.visornic_devdata = type { i32, i32, i32, i32, i32, %struct.net_device*, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_6__* }
%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { %struct.net_device* }

@IOCHAN_FROM_IOPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uiscmdrsp*, %struct.visornic_devdata*, i32*, i32)* @service_resp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_resp_queue(%struct.uiscmdrsp* %0, %struct.visornic_devdata* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.uiscmdrsp*, align 8
  %6 = alloca %struct.visornic_devdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.uiscmdrsp* %0, %struct.uiscmdrsp** %5, align 8
  store %struct.visornic_devdata* %1, %struct.visornic_devdata** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %207, %4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %208

16:                                               ; preds = %11
  %17 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %18 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %17, i32 0, i32 10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IOCHAN_FROM_IOPART, align 4
  %23 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %24 = call i64 @visorchannel_signalremove(i32 %21, i32 %22, %struct.uiscmdrsp* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %208

27:                                               ; preds = %16
  %28 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %29 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %206 [
    i32 130, label %32
    i32 128, label %43
    i32 129, label %114
    i32 131, label %155
  ]

32:                                               ; preds = %27
  %33 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %34 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %39 = call i32 @visornic_rx(%struct.uiscmdrsp* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %207

43:                                               ; preds = %27
  %44 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %45 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %44, i32 0, i32 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %49 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %54 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %61 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %43
  %66 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %67 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.sk_buff*
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load %struct.net_device*, %struct.net_device** %71, align 8
  store %struct.net_device* %72, %struct.net_device** %10, align 8
  %73 = load %struct.net_device*, %struct.net_device** %10, align 8
  %74 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %75 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %74, i32 0, i32 5
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = icmp eq %struct.net_device* %73, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %65
  %79 = load %struct.net_device*, %struct.net_device** %10, align 8
  %80 = call i32 @netif_queue_stopped(%struct.net_device* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %84 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %85 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @vnic_hit_low_watermark(%struct.visornic_devdata* %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load %struct.net_device*, %struct.net_device** %10, align 8
  %91 = call i32 @netif_wake_queue(%struct.net_device* %90)
  %92 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %93 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %82
  br label %97

97:                                               ; preds = %96, %78, %65
  %98 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %99 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %103 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %102, i32 0, i32 7
  %104 = call i32 @skb_unlink(i64 %101, i32* %103)
  %105 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %106 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %105, i32 0, i32 4
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %110 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @kfree_skb(i64 %112)
  br label %207

114:                                              ; preds = %27
  %115 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %116 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %121 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.net_device*
  store %struct.net_device* %125, %struct.net_device** %10, align 8
  %126 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %127 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %126, i32 0, i32 4
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @spin_lock_irqsave(i32* %127, i64 %128)
  %130 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %131 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %133 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %132, i32 0, i32 4
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %137 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %114
  %141 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %142 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %147 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %149 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %148, i32 0, i32 2
  store i32 0, i32* %149, align 8
  %150 = load %struct.net_device*, %struct.net_device** %10, align 8
  %151 = call i32 @netif_wake_queue(%struct.net_device* %150)
  %152 = load %struct.net_device*, %struct.net_device** %10, align 8
  %153 = call i32 @netif_carrier_on(%struct.net_device* %152)
  br label %154

154:                                              ; preds = %145, %140, %114
  br label %207

155:                                              ; preds = %27
  %156 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %157 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %156, i32 0, i32 5
  %158 = load %struct.net_device*, %struct.net_device** %157, align 8
  store %struct.net_device* %158, %struct.net_device** %10, align 8
  %159 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %160 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %185

165:                                              ; preds = %155
  %166 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %167 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %166, i32 0, i32 4
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @spin_lock_irqsave(i32* %167, i64 %168)
  %170 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %171 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %176 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %178 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %177, i32 0, i32 4
  %179 = load i64, i64* %9, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* %178, i64 %179)
  %181 = load %struct.net_device*, %struct.net_device** %10, align 8
  %182 = call i32 @netif_wake_queue(%struct.net_device* %181)
  %183 = load %struct.net_device*, %struct.net_device** %10, align 8
  %184 = call i32 @netif_carrier_on(%struct.net_device* %183)
  br label %205

185:                                              ; preds = %155
  %186 = load %struct.net_device*, %struct.net_device** %10, align 8
  %187 = call i32 @netif_stop_queue(%struct.net_device* %186)
  %188 = load %struct.net_device*, %struct.net_device** %10, align 8
  %189 = call i32 @netif_carrier_off(%struct.net_device* %188)
  %190 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %191 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %190, i32 0, i32 4
  %192 = load i64, i64* %9, align 8
  %193 = call i32 @spin_lock_irqsave(i32* %191, i64 %192)
  %194 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %195 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %200 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  %201 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %202 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %201, i32 0, i32 4
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* %202, i64 %203)
  br label %205

205:                                              ; preds = %185, %165
  br label %207

206:                                              ; preds = %27
  br label %207

207:                                              ; preds = %206, %205, %154, %97, %32
  br label %11

208:                                              ; preds = %26, %11
  ret void
}

declare dso_local i64 @visorchannel_signalremove(i32, i32, %struct.uiscmdrsp*) #1

declare dso_local i32 @visornic_rx(%struct.uiscmdrsp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @vnic_hit_low_watermark(%struct.visornic_devdata*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @skb_unlink(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree_skb(i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
