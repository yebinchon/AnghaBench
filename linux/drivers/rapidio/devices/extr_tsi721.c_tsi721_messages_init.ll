; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_messages_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_messages_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i64 }

@TSI721_SMSG_ECC_LOG = common dso_local global i64 0, align 8
@TSI721_RETRY_GEN_CNT = common dso_local global i64 0, align 8
@TSI721_RETRY_RX_CNT = common dso_local global i64 0, align 8
@TSI721_RQRPTO_VAL = common dso_local global i32 0, align 4
@TSI721_RQRPTO = common dso_local global i64 0, align 8
@TSI721_IMSG_CHNUM = common dso_local global i32 0, align 4
@TSI721_IBDMAC_INT_MASK = common dso_local global i32 0, align 4
@TSI721_SMSG_ECC_COR_LOG_MASK = common dso_local global i32 0, align 4
@TSI721_SMSG_ECC_NCOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_device*)* @tsi721_messages_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_messages_init(%struct.tsi721_device* %0) #0 {
  %2 = alloca %struct.tsi721_device*, align 8
  %3 = alloca i32, align 4
  store %struct.tsi721_device* %0, %struct.tsi721_device** %2, align 8
  %4 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %5 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TSI721_SMSG_ECC_LOG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @iowrite32(i32 0, i64 %8)
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TSI721_RETRY_GEN_CNT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @iowrite32(i32 0, i64 %14)
  %16 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %17 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TSI721_RETRY_RX_CNT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @iowrite32(i32 0, i64 %20)
  %22 = load i32, i32* @TSI721_RQRPTO_VAL, align 4
  %23 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %24 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TSI721_RQRPTO, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @iowrite32(i32 %22, i64 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %65, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @TSI721_IMSG_CHNUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load i32, i32* @TSI721_IBDMAC_INT_MASK, align 4
  %35 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %36 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @TSI721_IBDMAC_INT(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @iowrite32(i32 %34, i64 %40)
  %42 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %43 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @TSI721_IBDMAC_STS(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = call i32 @iowrite32(i32 0, i64 %47)
  %49 = load i32, i32* @TSI721_SMSG_ECC_COR_LOG_MASK, align 4
  %50 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %51 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @TSI721_SMSG_ECC_COR_LOG(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @iowrite32(i32 %49, i64 %55)
  %57 = load i32, i32* @TSI721_SMSG_ECC_NCOR_MASK, align 4
  %58 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %59 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @TSI721_SMSG_ECC_NCOR(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @iowrite32(i32 %57, i64 %63)
  br label %65

65:                                               ; preds = %33
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %29

68:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_IBDMAC_INT(i32) #1

declare dso_local i64 @TSI721_IBDMAC_STS(i32) #1

declare dso_local i64 @TSI721_SMSG_ECC_COR_LOG(i32) #1

declare dso_local i64 @TSI721_SMSG_ECC_NCOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
