; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_prepare_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_prepare_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.xhci_ring* }
%struct.xhci_ring = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"WARN urb submitted to disabled ep\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WARN waiting for error on ep to be cleared\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"WARN halted endpoint, queueing URB anyway.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ERROR unknown endpoint state for ep\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Do not support expand command ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@trace_xhci_dbg_ring_expansion = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"ERROR no room on ep ring, try ring expansion\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Ring expansion failed\0A\00", align 1
@TYPE_ISOC = common dso_local global i64 0, align 8
@XHCI_AMD_0x96_HOST = common dso_local global i32 0, align 4
@TRB_CHAIN = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_ring*, i32, i32, i32)* @prepare_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_ring(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %28 [
    i32 132, label %14
    i32 131, label %19
    i32 130, label %24
    i32 128, label %27
    i32 129, label %27
  ]

14:                                               ; preds = %5
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %16 = call i32 @xhci_warn(%struct.xhci_hcd* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %155

19:                                               ; preds = %5
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %21 = call i32 @xhci_warn(%struct.xhci_hcd* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %155

24:                                               ; preds = %5
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %26 = call i32 @xhci_dbg(%struct.xhci_hcd* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %5, %5, %24
  br label %33

28:                                               ; preds = %5
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %30 = call i32 @xhci_err(%struct.xhci_hcd* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %155

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %72
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %36 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @room_on_ring(%struct.xhci_hcd* %35, %struct.xhci_ring* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %73

41:                                               ; preds = %34
  %42 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %44 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %43, i32 0, i32 1
  %45 = load %struct.xhci_ring*, %struct.xhci_ring** %44, align 8
  %46 = icmp eq %struct.xhci_ring* %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %49 = call i32 @xhci_err(%struct.xhci_hcd* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %155

52:                                               ; preds = %41
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %54 = load i32, i32* @trace_xhci_dbg_ring_expansion, align 4
  %55 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %53, i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %58 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub i32 %56, %59
  store i32 %60, i32* %12, align 4
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %62 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @xhci_ring_expansion(%struct.xhci_hcd* %61, %struct.xhci_ring* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %69 = call i32 @xhci_err(%struct.xhci_hcd* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %155

72:                                               ; preds = %52
  br label %34

73:                                               ; preds = %40
  br label %74

74:                                               ; preds = %139, %73
  %75 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %76 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %75, i32 0, i32 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = call i64 @trb_is_link(%struct.TYPE_7__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %154

80:                                               ; preds = %74
  %81 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %82 = call i32 @xhci_link_trb_quirk(%struct.xhci_hcd* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %80
  %85 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %86 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TYPE_ISOC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %92 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @XHCI_AMD_0x96_HOST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %90, %84
  %98 = load i32, i32* @TRB_CHAIN, align 4
  %99 = xor i32 %98, -1
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %102 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %100
  store i32 %107, i32* %105, align 4
  br label %118

108:                                              ; preds = %90, %80
  %109 = load i32, i32* @TRB_CHAIN, align 4
  %110 = call i32 @cpu_to_le32(i32 %109)
  %111 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %112 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %111, i32 0, i32 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %110
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %108, %97
  %119 = call i32 (...) @wmb()
  %120 = load i32, i32* @TRB_CYCLE, align 4
  %121 = call i32 @cpu_to_le32(i32 %120)
  %122 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %123 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %122, i32 0, i32 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, %121
  store i32 %128, i32* %126, align 4
  %129 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %130 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %129, i32 0, i32 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = call i64 @link_trb_toggles_cycle(%struct.TYPE_7__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %118
  %135 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %136 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = xor i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %134, %118
  %140 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %141 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %146 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %145, i32 0, i32 3
  store %struct.TYPE_6__* %144, %struct.TYPE_6__** %146, align 8
  %147 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %148 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load %struct.xhci_ring*, %struct.xhci_ring** %8, align 8
  %153 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %152, i32 0, i32 4
  store %struct.TYPE_7__* %151, %struct.TYPE_7__** %153, align 8
  br label %74

154:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %154, %67, %47, %28, %19, %14
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local i64 @room_on_ring(%struct.xhci_hcd*, %struct.xhci_ring*, i32) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

declare dso_local i64 @xhci_ring_expansion(%struct.xhci_hcd*, %struct.xhci_ring*, i32, i32) #1

declare dso_local i64 @trb_is_link(%struct.TYPE_7__*) #1

declare dso_local i32 @xhci_link_trb_quirk(%struct.xhci_hcd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @link_trb_toggles_cycle(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
