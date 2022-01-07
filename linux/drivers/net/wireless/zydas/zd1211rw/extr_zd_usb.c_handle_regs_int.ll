; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_handle_regs_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_handle_regs_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.zd_usb* }
%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }
%struct.zd_mac = type { i32, i32, i32 }

@CR_INTERRUPT = common dso_local global i64 0, align 8
@USB_MAX_EP_INT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @handle_regs_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_regs_int(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca %struct.zd_usb_interrupt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.zd_mac*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 2
  %11 = load %struct.zd_usb*, %struct.zd_usb** %10, align 8
  store %struct.zd_usb* %11, %struct.zd_usb** %3, align 8
  %12 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %13 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %12, i32 0, i32 0
  store %struct.zd_usb_interrupt* %13, %struct.zd_usb_interrupt** %4, align 8
  %14 = call i32 (...) @in_interrupt()
  %15 = call i32 @ZD_ASSERT(i32 %14)
  %16 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %17 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @CR_INTERRUPT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %1
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 2
  %34 = load %struct.zd_usb*, %struct.zd_usb** %33, align 8
  %35 = call i32 @zd_usb_to_hw(%struct.zd_usb* %34)
  %36 = call %struct.zd_mac* @zd_hw_mac(i32 %35)
  store %struct.zd_mac* %36, %struct.zd_mac** %8, align 8
  %37 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %38 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %41 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %40, i32 0, i32 2
  %42 = load %struct.urb*, %struct.urb** %2, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_MAX_EP_INT_BUFFER, align 4
  %46 = call i32 @memcpy(i32* %41, i32 %44, i32 %45)
  %47 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %48 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %51 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %50, i32 0, i32 0
  %52 = call i32 @schedule_work(i32* %51)
  br label %105

53:                                               ; preds = %1
  %54 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %55 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %54, i32 0, i32 0
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %53
  %59 = load %struct.urb*, %struct.urb** %2, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %6, align 4
  %62 = load %struct.urb*, %struct.urb** %2, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %66 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %69, 8
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 8, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %58
  %73 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %74 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.urb*, %struct.urb** %2, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @memcpy(i32* %76, i32 %79, i32 %80)
  %82 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %83 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %84 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %88 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @check_read_regs(%struct.zd_usb* %82, i32 %86, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %72
  br label %106

94:                                               ; preds = %72
  %95 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %96 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %95, i32 0, i32 0
  %97 = call i32 @atomic_set(i32* %96, i32 0)
  %98 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %99 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %101 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = call i32 @complete(i32* %102)
  br label %106

104:                                              ; preds = %53
  br label %105

105:                                              ; preds = %104, %31
  br label %106

106:                                              ; preds = %105, %94, %93
  %107 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %108 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %107, i32 0, i32 1
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @CR_INTERRUPT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %116 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %115, i32 0, i32 0
  %117 = call i64 @atomic_read(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.urb*, %struct.urb** %2, align 8
  %121 = call i32 @handle_regs_int_override(%struct.urb* %120)
  br label %122

122:                                              ; preds = %119, %114, %106
  ret void
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.zd_mac* @zd_hw_mac(i32) #1

declare dso_local i32 @zd_usb_to_hw(%struct.zd_usb*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @check_read_regs(%struct.zd_usb*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @handle_regs_int_override(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
