; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_imsg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_imsg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_4__*, %struct.rio_mport }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rio_mport = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.rio_mport*, i32, i64, i32)* }

@TSI721_IBDMAC_INT_SRTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"IB MBOX%d SRIO timeout\00", align 1
@TSI721_IBDMAC_INT_PC_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"IB MBOX%d PCIe error\00", align 1
@TSI721_IBDMAC_INT_FQ_LOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"IB MBOX%d IB free queue low\00", align 1
@TSI721_IBDMAC_INT_DQ_RCV = common dso_local global i64 0, align 8
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_DEV_CHAN_INTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_device*, i32)* @tsi721_imsg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_imsg_handler(%struct.tsi721_device* %0, i32 %1) #0 {
  %3 = alloca %struct.tsi721_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i64, align 8
  store %struct.tsi721_device* %0, %struct.tsi721_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %13 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %12, i32 0, i32 4
  store %struct.rio_mport* %13, %struct.rio_mport** %7, align 8
  %14 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %15 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %22 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @TSI721_IBDMAC_INT(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i64 @ioread32(i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @TSI721_IBDMAC_INT_SRTO, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %34 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @tsi_info(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @TSI721_IBDMAC_INT_PC_ERROR, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %46 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @tsi_info(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @TSI721_IBDMAC_INT_FQ_LOW, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %58 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @tsi_info(i32* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %66 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @TSI721_IBDMAC_INT(i32 %68)
  %70 = add nsw i64 %67, %69
  %71 = call i32 @iowrite32(i64 %64, i64 %70)
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @TSI721_IBDMAC_INT_DQ_RCV, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %63
  %77 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %78 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.rio_mport*, i32, i64, i32)*, i32 (%struct.rio_mport*, i32, i64, i32)** %82, align 8
  %84 = icmp ne i32 (%struct.rio_mport*, i32, i64, i32)* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %76
  %86 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %87 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32 (%struct.rio_mport*, i32, i64, i32)*, i32 (%struct.rio_mport*, i32, i64, i32)** %91, align 8
  %93 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %94 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %95 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %5, align 8
  %102 = call i32 %92(%struct.rio_mport* %93, i32 %100, i64 %101, i32 -1)
  br label %103

103:                                              ; preds = %85, %76, %63
  %104 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %105 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TSI721_USING_MSIX, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %103
  %111 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %112 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i64 @ioread32(i64 %115)
  store i64 %116, i64* %8, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @TSI721_INT_IMSG_CHAN(i32 %117)
  %119 = load i64, i64* %8, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %8, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %123 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @iowrite32(i64 %121, i64 %126)
  br label %128

128:                                              ; preds = %110, %103
  %129 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %130 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock(i32* %134)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i64 @TSI721_IBDMAC_INT(i32) #1

declare dso_local i32 @tsi_info(i32*, i8*, i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i64 @TSI721_INT_IMSG_CHAN(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
