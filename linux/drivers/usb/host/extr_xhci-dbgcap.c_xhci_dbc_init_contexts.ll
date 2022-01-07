; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_init_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_init_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_dbc* }
%struct.xhci_dbc = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dbc_info_context = type { i8*, i8*, i8*, i8*, i8* }
%struct.xhci_ep_ctx = type { i8*, i8*, i64 }

@DBC_MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@BULK_OUT_EP = common dso_local global i32 0, align 4
@BULK_IN_EP = common dso_local global i32 0, align 4
@DBC_VENDOR_ID = common dso_local global i32 0, align 4
@DBC_PROTOCOL = common dso_local global i32 0, align 4
@DBC_DEVICE_REV = common dso_local global i32 0, align 4
@DBC_PRODUCT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32)* @xhci_dbc_init_contexts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_dbc_init_contexts(%struct.xhci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_dbc*, align 8
  %6 = alloca %struct.dbc_info_context*, align 8
  %7 = alloca %struct.xhci_ep_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 0
  %14 = load %struct.xhci_dbc*, %struct.xhci_dbc** %13, align 8
  store %struct.xhci_dbc* %14, %struct.xhci_dbc** %5, align 8
  %15 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %16 = icmp ne %struct.xhci_dbc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %139

18:                                               ; preds = %2
  %19 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %20 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dbc_info_context*
  store %struct.dbc_info_context* %24, %struct.dbc_info_context** %6, align 8
  %25 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %26 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i8* @cpu_to_le64(i32 %28)
  %30 = load %struct.dbc_info_context*, %struct.dbc_info_context** %6, align 8
  %31 = getelementptr inbounds %struct.dbc_info_context, %struct.dbc_info_context* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @DBC_MAX_STRING_LENGTH, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i8* @cpu_to_le64(i32 %34)
  %36 = load %struct.dbc_info_context*, %struct.dbc_info_context** %6, align 8
  %37 = getelementptr inbounds %struct.dbc_info_context, %struct.dbc_info_context* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @DBC_MAX_STRING_LENGTH, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %38, %40
  %42 = call i8* @cpu_to_le64(i32 %41)
  %43 = load %struct.dbc_info_context*, %struct.dbc_info_context** %6, align 8
  %44 = getelementptr inbounds %struct.dbc_info_context, %struct.dbc_info_context* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @DBC_MAX_STRING_LENGTH, align 4
  %47 = mul nsw i32 %46, 3
  %48 = add nsw i32 %45, %47
  %49 = call i8* @cpu_to_le64(i32 %48)
  %50 = load %struct.dbc_info_context*, %struct.dbc_info_context** %6, align 8
  %51 = getelementptr inbounds %struct.dbc_info_context, %struct.dbc_info_context* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.dbc_info_context*, %struct.dbc_info_context** %6, align 8
  %55 = getelementptr inbounds %struct.dbc_info_context, %struct.dbc_info_context* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %57 = call %struct.xhci_ep_ctx* @dbc_bulkout_ctx(%struct.xhci_dbc* %56)
  store %struct.xhci_ep_ctx* %57, %struct.xhci_ep_ctx** %7, align 8
  %58 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %59 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = call i32 @readl(i32* %61)
  %63 = call i32 @DBC_CTRL_MAXBURST(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %65 = call i32 @dbc_bulkout_enq(%struct.xhci_dbc* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @BULK_OUT_EP, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i8* @dbc_epctx_info2(i32 %68, i32 1024, i32 %69)
  %71 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %75 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %74, i32 0, i32 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  %80 = call i8* @cpu_to_le64(i32 %79)
  %81 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %7, align 8
  %82 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %84 = call %struct.xhci_ep_ctx* @dbc_bulkin_ctx(%struct.xhci_dbc* %83)
  store %struct.xhci_ep_ctx* %84, %struct.xhci_ep_ctx** %7, align 8
  %85 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %86 = call i32 @dbc_bulkin_enq(%struct.xhci_dbc* %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %7, align 8
  %88 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @BULK_IN_EP, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i8* @dbc_epctx_info2(i32 %89, i32 1024, i32 %90)
  %92 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %96 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %94, %99
  %101 = call i8* @cpu_to_le64(i32 %100)
  %102 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %7, align 8
  %103 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %105 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %106 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %111 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = call i32 @xhci_write_64(%struct.xhci_hcd* %104, i32 %109, i32* %113)
  %115 = load i32, i32* @DBC_VENDOR_ID, align 4
  %116 = shl i32 %115, 16
  %117 = load i32, i32* @DBC_PROTOCOL, align 4
  %118 = or i32 %116, %117
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %123 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = call i32 @writel(i32 %121, i32* %125)
  %127 = load i32, i32* @DBC_DEVICE_REV, align 4
  %128 = shl i32 %127, 16
  %129 = load i32, i32* @DBC_PRODUCT_ID, align 4
  %130 = or i32 %128, %129
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %135 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = call i32 @writel(i32 %133, i32* %137)
  br label %139

139:                                              ; preds = %18, %17
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.xhci_ep_ctx* @dbc_bulkout_ctx(%struct.xhci_dbc*) #1

declare dso_local i32 @DBC_CTRL_MAXBURST(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dbc_bulkout_enq(%struct.xhci_dbc*) #1

declare dso_local i8* @dbc_epctx_info2(i32, i32, i32) #1

declare dso_local %struct.xhci_ep_ctx* @dbc_bulkin_ctx(%struct.xhci_dbc*) #1

declare dso_local i32 @dbc_bulkin_enq(%struct.xhci_dbc*) #1

declare dso_local i32 @xhci_write_64(%struct.xhci_hcd*, i32, i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
