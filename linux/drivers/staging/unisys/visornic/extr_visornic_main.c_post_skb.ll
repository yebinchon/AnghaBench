; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_post_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_post_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uiscmdrsp = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.sk_buff* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.visornic_devdata = type { %struct.TYPE_10__, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i64, i64 }

@PI_PAGE_MASK = common dso_local global i64 0, align 8
@PI_PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NET_RCV_POST = common dso_local global i32 0, align 4
@CMD_NET_TYPE = common dso_local global i32 0, align 4
@IOCHAN_TO_IOPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uiscmdrsp*, %struct.visornic_devdata*, %struct.sk_buff*)* @post_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_skb(%struct.uiscmdrsp* %0, %struct.visornic_devdata* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uiscmdrsp*, align 8
  %6 = alloca %struct.visornic_devdata*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.uiscmdrsp* %0, %struct.uiscmdrsp** %5, align 8
  store %struct.visornic_devdata* %1, %struct.visornic_devdata** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %10 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %11 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store %struct.sk_buff* %9, %struct.sk_buff** %12, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @virt_to_page(i64 %15)
  %17 = call i32 @page_to_pfn(i32 %16)
  %18 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %19 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %17, i32* %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PI_PAGE_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %29 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %27, i64* %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %37 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i64 %35, i64* %40, align 8
  %41 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %42 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %45 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  %48 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %49 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = load i64, i64* @PI_PAGE_SIZE, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %97

63:                                               ; preds = %3
  %64 = load i32, i32* @NET_RCV_POST, align 4
  %65 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %66 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @CMD_NET_TYPE, align 4
  %69 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %70 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %72 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %71, i32 0, i32 2
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IOCHAN_TO_IOPART, align 4
  %77 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %78 = call i32 @visorchannel_signalinsert(i32 %75, i32 %76, %struct.uiscmdrsp* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %63
  %82 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %83 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %97

88:                                               ; preds = %63
  %89 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %90 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %89, i32 0, i32 1
  %91 = call i32 @atomic_inc(i32* %90)
  %92 = load %struct.visornic_devdata*, %struct.visornic_devdata** %6, align 8
  %93 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %88, %81, %60
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @visorchannel_signalinsert(i32, i32, %struct.uiscmdrsp*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
