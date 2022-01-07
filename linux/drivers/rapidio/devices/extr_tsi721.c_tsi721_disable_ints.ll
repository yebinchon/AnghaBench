; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_disable_ints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_disable_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i64 }

@TSI721_DEV_INTE = common dso_local global i64 0, align 8
@TSI721_DEV_CHAN_INTE = common dso_local global i64 0, align 8
@TSI721_IMSG_CHNUM = common dso_local global i32 0, align 4
@TSI721_OMSG_CHNUM = common dso_local global i32 0, align 4
@TSI721_SMSG_INTE = common dso_local global i64 0, align 8
@TSI721_DMA_MAXCH = common dso_local global i32 0, align 4
@TSI721_DMAC_INTE = common dso_local global i64 0, align 8
@TSI721_BDMA_INTE = common dso_local global i64 0, align 8
@TSI721_SRIO_MAXCH = common dso_local global i32 0, align 4
@TSI721_SR2PC_GEN_INTE = common dso_local global i64 0, align 8
@TSI721_PC2SR_INTE = common dso_local global i64 0, align 8
@TSI721_I2C_INT_ENABLE = common dso_local global i64 0, align 8
@TSI721_RIO_EM_INT_ENABLE = common dso_local global i64 0, align 8
@TSI721_RIO_EM_DEV_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_device*)* @tsi721_disable_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_disable_ints(%struct.tsi721_device* %0) #0 {
  %2 = alloca %struct.tsi721_device*, align 8
  %3 = alloca i32, align 4
  store %struct.tsi721_device* %0, %struct.tsi721_device** %2, align 8
  %4 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %5 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TSI721_DEV_INTE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @iowrite32(i32 0, i64 %8)
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @iowrite32(i32 0, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TSI721_IMSG_CHNUM, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %22 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @TSI721_IBDMAC_INTE(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @iowrite32(i32 0, i64 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %16

31:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @TSI721_OMSG_CHNUM, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %38 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @TSI721_OBDMAC_INTE(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @iowrite32(i32 0, i64 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %49 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TSI721_SMSG_INTE, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @iowrite32(i32 0, i64 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %68, %47
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @TSI721_DMA_MAXCH, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %60 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @TSI721_DMAC_BASE(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = load i64, i64* @TSI721_DMAC_INTE, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @iowrite32(i32 0, i64 %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %73 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TSI721_BDMA_INTE, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @iowrite32(i32 0, i64 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %90, %71
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @TSI721_SRIO_MAXCH, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %84 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i64 @TSI721_SR_CHINTE(i32 %86)
  %88 = add nsw i64 %85, %87
  %89 = call i32 @iowrite32(i32 0, i64 %88)
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %78

93:                                               ; preds = %78
  %94 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %95 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TSI721_SR2PC_GEN_INTE, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @iowrite32(i32 0, i64 %98)
  %100 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %101 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TSI721_PC2SR_INTE, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @iowrite32(i32 0, i64 %104)
  %106 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %107 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TSI721_I2C_INT_ENABLE, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @iowrite32(i32 0, i64 %110)
  %112 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %113 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TSI721_RIO_EM_INT_ENABLE, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @iowrite32(i32 0, i64 %116)
  %118 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %119 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TSI721_RIO_EM_DEV_INT_EN, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @iowrite32(i32 0, i64 %122)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_IBDMAC_INTE(i32) #1

declare dso_local i64 @TSI721_OBDMAC_INTE(i32) #1

declare dso_local i64 @TSI721_DMAC_BASE(i32) #1

declare dso_local i64 @TSI721_SR_CHINTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
