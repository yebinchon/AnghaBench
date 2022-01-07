; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_process_bulk_intr_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_process_bulk_intr_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.xhci_td = type { %struct.TYPE_10__*, %union.xhci_trb* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%union.xhci_trb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.xhci_transfer_event = type { i32, i32, i32 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_slot_ctx = type { i32 }
%struct.xhci_ring = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"WARN Successful completion on short TX\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"ep %#x - asked for %d bytes, %d bytes untransferred\0A\00", align 1
@MAX_SOFT_RETRY = common dso_local global i32 0, align 4
@TT_SLOT = common dso_local global i32 0, align 4
@EP_SOFT_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"bad transfer trb length %d in event trb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*)* @process_bulk_intr_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_bulk_intr_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %union.xhci_trb* %2, %struct.xhci_transfer_event* %3, %struct.xhci_virt_ep* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.xhci_td*, align 8
  %10 = alloca %union.xhci_trb*, align 8
  %11 = alloca %struct.xhci_transfer_event*, align 8
  %12 = alloca %struct.xhci_virt_ep*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xhci_slot_ctx*, align 8
  %15 = alloca %struct.xhci_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %8, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %9, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %10, align 8
  store %struct.xhci_transfer_event* %3, %struct.xhci_transfer_event** %11, align 8
  store %struct.xhci_virt_ep* %4, %struct.xhci_virt_ep** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %23 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = call i32 @TRB_TO_SLOT_ID(i32 %25)
  store i32 %26, i32* %20, align 4
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %29, align 8
  %31 = load i32, i32* %20, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %27, i32 %36)
  store %struct.xhci_slot_ctx* %37, %struct.xhci_slot_ctx** %14, align 8
  %38 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %39 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = call i32 @TRB_TO_EP_ID(i32 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %21, align 4
  %44 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %45 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %46 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = call %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %44, i32 %48)
  store %struct.xhci_ring* %49, %struct.xhci_ring** %15, align 8
  %50 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %51 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = call i32 @GET_COMP_CODE(i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %56 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = call i32 @EVENT_TRB_LEN(i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %61 = bitcast %union.xhci_trb* %60 to %struct.TYPE_7__*
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = call i32 @TRB_LEN(i32 %66)
  store i32 %67, i32* %19, align 4
  %68 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %69 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %16, align 4
  switch i32 %73, label %150 [
    i32 129, label %74
    i32 132, label %102
    i32 130, label %116
    i32 131, label %122
    i32 128, label %123
  ]

74:                                               ; preds = %6
  %75 = load %struct.xhci_ring*, %struct.xhci_ring** %15, align 8
  %76 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %78 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %79 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %78, i32 0, i32 1
  %80 = load %union.xhci_trb*, %union.xhci_trb** %79, align 8
  %81 = icmp ne %union.xhci_trb* %77, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82, %74
  %86 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %87 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %89 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %90 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @xhci_dbg(%struct.xhci_hcd* %88, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %82
  %101 = load i32*, i32** %13, align 8
  store i32 0, i32* %101, align 4
  br label %151

102:                                              ; preds = %6
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %104 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %105 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @xhci_dbg(%struct.xhci_hcd* %103, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  %115 = load i32*, i32** %13, align 8
  store i32 0, i32* %115, align 4
  br label %151

116:                                              ; preds = %6
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %119 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  br label %179

122:                                              ; preds = %6
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %151

123:                                              ; preds = %6
  %124 = load %struct.xhci_ring*, %struct.xhci_ring** %15, align 8
  %125 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @MAX_SOFT_RETRY, align 4
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %138, label %130

130:                                              ; preds = %123
  %131 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %14, align 8
  %132 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = load i32, i32* @TT_SLOT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130, %123
  br label %151

139:                                              ; preds = %130
  %140 = load i32*, i32** %13, align 8
  store i32 0, i32* %140, align 4
  %141 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load %struct.xhci_ring*, %struct.xhci_ring** %15, align 8
  %145 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %148 = load i32, i32* @EP_SOFT_RESET, align 4
  %149 = call i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd* %141, i32 %142, i32 %143, i32 %146, %struct.xhci_td* %147, i32 %148)
  store i32 0, i32* %7, align 4
  br label %198

150:                                              ; preds = %6
  br label %151

151:                                              ; preds = %150, %138, %122, %102, %100
  %152 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %153 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %154 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %153, i32 0, i32 1
  %155 = load %union.xhci_trb*, %union.xhci_trb** %154, align 8
  %156 = icmp eq %union.xhci_trb* %152, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %17, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %162 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 4
  br label %178

165:                                              ; preds = %151
  %166 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %167 = load %struct.xhci_ring*, %struct.xhci_ring** %15, align 8
  %168 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %169 = call i32 @sum_trb_lengths(%struct.xhci_hcd* %166, %struct.xhci_ring* %167, %union.xhci_trb* %168)
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %175 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %165, %157
  br label %179

179:                                              ; preds = %178, %116
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %185 = load i32, i32* %17, align 4
  %186 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %188 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %183, %179
  %192 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %193 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %194 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %195 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %196 = load i32*, i32** %13, align 8
  %197 = call i32 @finish_td(%struct.xhci_hcd* %192, %struct.xhci_td* %193, %struct.xhci_transfer_event* %194, %struct.xhci_virt_ep* %195, i32* %196)
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %191, %139
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

declare dso_local i32 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @TRB_TO_EP_ID(i32) #1

declare dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @GET_COMP_CODE(i32) #1

declare dso_local i32 @EVENT_TRB_LEN(i32) #1

declare dso_local i32 @TRB_LEN(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i32, i32) #1

declare dso_local i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd*, i32, i32, i32, %struct.xhci_td*, i32) #1

declare dso_local i32 @sum_trb_lengths(%struct.xhci_hcd*, %struct.xhci_ring*, %union.xhci_trb*) #1

declare dso_local i32 @finish_td(%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
