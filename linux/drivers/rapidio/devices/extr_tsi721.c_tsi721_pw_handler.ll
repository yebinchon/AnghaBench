; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_pw_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_pw_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, i64, i32, i32, i32 }

@TSI721_RIO_PW_MSG_SIZE = common dso_local global i32 0, align 4
@TSI721_RIO_PW_RX_STAT = common dso_local global i64 0, align 8
@TSI721_RIO_PW_RX_STAT_PW_VAL = common dso_local global i32 0, align 4
@TSI721_RIO_PW_RX_STAT_PW_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_device*)* @tsi721_pw_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_pw_handler(%struct.tsi721_device* %0) #0 {
  %2 = alloca %struct.tsi721_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.tsi721_device* %0, %struct.tsi721_device** %2, align 8
  %6 = load i32, i32* @TSI721_RIO_PW_MSG_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = udiv i64 %7, 4
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %12 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TSI721_RIO_PW_RX_STAT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TSI721_RIO_PW_RX_STAT_PW_VAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %1
  %22 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %23 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @TSI721_RIO_PW_RX_CAPT(i32 0)
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread32(i64 %26)
  %28 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %30 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @TSI721_RIO_PW_RX_CAPT(i32 1)
  %33 = add nsw i64 %31, %32
  %34 = call i32 @ioread32(i64 %33)
  %35 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %37 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @TSI721_RIO_PW_RX_CAPT(i32 2)
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32(i64 %40)
  %42 = getelementptr inbounds i32, i32* %10, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %44 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @TSI721_RIO_PW_RX_CAPT(i32 3)
  %47 = add nsw i64 %45, %46
  %48 = call i32 @ioread32(i64 %47)
  %49 = getelementptr inbounds i32, i32* %10, i64 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %51 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %50, i32 0, i32 2
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %54 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %53, i32 0, i32 4
  %55 = call i32 @kfifo_avail(i32* %54)
  %56 = load i32, i32* @TSI721_RIO_PW_MSG_SIZE, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %21
  %59 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %60 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %59, i32 0, i32 4
  %61 = load i32, i32* @TSI721_RIO_PW_MSG_SIZE, align 4
  %62 = call i32 @kfifo_in(i32* %60, i32* %10, i32 %61)
  br label %68

63:                                               ; preds = %21
  %64 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %65 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %70 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68, %1
  %73 = load i32, i32* @TSI721_RIO_PW_RX_STAT_PW_DISC, align 4
  %74 = load i32, i32* @TSI721_RIO_PW_RX_STAT_PW_VAL, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %77 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TSI721_RIO_PW_RX_STAT, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @iowrite32(i32 %75, i64 %80)
  %82 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %83 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %82, i32 0, i32 0
  %84 = call i32 @schedule_work(i32* %83)
  %85 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %85)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ioread32(i64) #2

declare dso_local i64 @TSI721_RIO_PW_RX_CAPT(i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @kfifo_avail(i32*) #2

declare dso_local i32 @kfifo_in(i32*, i32*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @iowrite32(i32, i64) #2

declare dso_local i32 @schedule_work(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
