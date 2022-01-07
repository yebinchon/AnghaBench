; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_drop_ep_from_interval_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_drop_ep_from_interval_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xhci_bw_info = type { i32, i64, i64, i32 }
%struct.xhci_interval_bw_table = type { %struct.xhci_interval_bw*, i32 }
%struct.xhci_interval_bw = type { i32*, i32 }
%struct.usb_device = type { i32, i64 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_tt_bw_info = type { i32 }

@LS_OVERHEAD_TYPE = common dso_local global i64 0, align 8
@FS_OVERHEAD_TYPE = common dso_local global i64 0, align 8
@HS_OVERHEAD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_bw_info*, %struct.xhci_interval_bw_table*, %struct.usb_device*, %struct.xhci_virt_ep*, %struct.xhci_tt_bw_info*)* @xhci_drop_ep_from_interval_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_drop_ep_from_interval_table(%struct.xhci_hcd* %0, %struct.xhci_bw_info* %1, %struct.xhci_interval_bw_table* %2, %struct.usb_device* %3, %struct.xhci_virt_ep* %4, %struct.xhci_tt_bw_info* %5) #0 {
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_bw_info*, align 8
  %9 = alloca %struct.xhci_interval_bw_table*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.xhci_virt_ep*, align 8
  %12 = alloca %struct.xhci_tt_bw_info*, align 8
  %13 = alloca %struct.xhci_interval_bw*, align 8
  %14 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.xhci_bw_info* %1, %struct.xhci_bw_info** %8, align 8
  store %struct.xhci_interval_bw_table* %2, %struct.xhci_interval_bw_table** %9, align 8
  store %struct.usb_device* %3, %struct.usb_device** %10, align 8
  store %struct.xhci_virt_ep* %4, %struct.xhci_virt_ep** %11, align 8
  store %struct.xhci_tt_bw_info* %5, %struct.xhci_tt_bw_info** %12, align 8
  %15 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %16 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @xhci_is_async_ep(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %158

21:                                               ; preds = %6
  %22 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 131
  br i1 %25, label %26, label %69

26:                                               ; preds = %21
  %27 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %28 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @xhci_is_sync_in_ep(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %34 = call i64 @xhci_get_ss_bw_consumed(%struct.xhci_bw_info* %33)
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %34
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  br label %68

50:                                               ; preds = %26
  %51 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %52 = call i64 @xhci_get_ss_bw_consumed(%struct.xhci_bw_info* %51)
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %54 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %52
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %50, %32
  br label %158

69:                                               ; preds = %21
  %70 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %11, align 8
  %71 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %70, i32 0, i32 0
  %72 = call i64 @list_empty(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %158

75:                                               ; preds = %69
  %76 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 133
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %82 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %14, align 4
  br label %89

84:                                               ; preds = %75
  %85 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %86 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 3
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %94 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.xhci_interval_bw_table*, %struct.xhci_interval_bw_table** %9, align 8
  %97 = getelementptr inbounds %struct.xhci_interval_bw_table, %struct.xhci_interval_bw_table* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 8
  br label %102

102:                                              ; preds = %92, %89
  %103 = load %struct.xhci_interval_bw_table*, %struct.xhci_interval_bw_table** %9, align 8
  %104 = getelementptr inbounds %struct.xhci_interval_bw_table, %struct.xhci_interval_bw_table* %103, i32 0, i32 0
  %105 = load %struct.xhci_interval_bw*, %struct.xhci_interval_bw** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.xhci_interval_bw, %struct.xhci_interval_bw* %105, i64 %107
  store %struct.xhci_interval_bw* %108, %struct.xhci_interval_bw** %13, align 8
  %109 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %8, align 8
  %110 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.xhci_interval_bw*, %struct.xhci_interval_bw** %13, align 8
  %113 = getelementptr inbounds %struct.xhci_interval_bw, %struct.xhci_interval_bw* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %119 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %146 [
    i32 132, label %121
    i32 134, label %129
    i32 133, label %137
    i32 131, label %145
    i32 130, label %145
    i32 129, label %145
    i32 128, label %145
  ]

121:                                              ; preds = %102
  %122 = load %struct.xhci_interval_bw*, %struct.xhci_interval_bw** %13, align 8
  %123 = getelementptr inbounds %struct.xhci_interval_bw, %struct.xhci_interval_bw* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @LS_OVERHEAD_TYPE, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %146

129:                                              ; preds = %102
  %130 = load %struct.xhci_interval_bw*, %struct.xhci_interval_bw** %13, align 8
  %131 = getelementptr inbounds %struct.xhci_interval_bw, %struct.xhci_interval_bw* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @FS_OVERHEAD_TYPE, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %146

137:                                              ; preds = %102
  %138 = load %struct.xhci_interval_bw*, %struct.xhci_interval_bw** %13, align 8
  %139 = getelementptr inbounds %struct.xhci_interval_bw, %struct.xhci_interval_bw* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @HS_OVERHEAD_TYPE, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %146

145:                                              ; preds = %102, %102, %102, %102
  br label %158

146:                                              ; preds = %102, %137, %129, %121
  %147 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %148 = icmp ne %struct.xhci_tt_bw_info* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %151 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %149, %146
  %155 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %11, align 8
  %156 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %155, i32 0, i32 0
  %157 = call i32 @list_del_init(i32* %156)
  br label %158

158:                                              ; preds = %154, %145, %74, %68, %20
  ret void
}

declare dso_local i64 @xhci_is_async_ep(i32) #1

declare dso_local i64 @xhci_is_sync_in_ep(i32) #1

declare dso_local i64 @xhci_get_ss_bw_consumed(%struct.xhci_bw_info*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
