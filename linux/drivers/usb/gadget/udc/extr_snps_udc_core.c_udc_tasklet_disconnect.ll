; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_tasklet_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_tasklet_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32, %struct.TYPE_4__*, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*)* }

@.str = private unnamed_addr constant [20 x i8] c"Tasklet disconnect\0A\00", align 1
@UDC_EP_NUM = common dso_local global i64 0, align 8
@UDC_EP0IN_IX = common dso_local global i64 0, align 8
@soft_reset_occured = common dso_local global i32 0, align 4
@use_fullspeed = common dso_local global i64 0, align 8
@UDC_DEVCFG_SPD_FS = common dso_local global i32 0, align 4
@UDC_DEVCFG_SPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @udc_tasklet_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_tasklet_disconnect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.udc*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.udc**
  %7 = load %struct.udc*, %struct.udc** %6, align 8
  store %struct.udc* %7, %struct.udc** %3, align 8
  %8 = load %struct.udc*, %struct.udc** %3, align 8
  %9 = call i32 @DBG(%struct.udc* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.udc*, %struct.udc** %3, align 8
  %11 = getelementptr inbounds %struct.udc, %struct.udc* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.udc*, %struct.udc** %3, align 8
  %14 = getelementptr inbounds %struct.udc, %struct.udc* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %1
  %18 = load %struct.udc*, %struct.udc** %3, align 8
  %19 = getelementptr inbounds %struct.udc, %struct.udc* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.udc*, %struct.udc** %3, align 8
  %22 = getelementptr inbounds %struct.udc, %struct.udc* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = load %struct.udc*, %struct.udc** %3, align 8
  %27 = getelementptr inbounds %struct.udc, %struct.udc* %26, i32 0, i32 3
  %28 = call i32 %25(i32* %27)
  %29 = load %struct.udc*, %struct.udc** %3, align 8
  %30 = getelementptr inbounds %struct.udc, %struct.udc* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %43, %17
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @UDC_EP_NUM, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.udc*, %struct.udc** %3, align 8
  %38 = getelementptr inbounds %struct.udc, %struct.udc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @empty_req_queue(i32* %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %32

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.udc*, %struct.udc** %3, align 8
  %49 = getelementptr inbounds %struct.udc, %struct.udc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.udc*, %struct.udc** %3, align 8
  %52 = getelementptr inbounds %struct.udc, %struct.udc* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @UDC_EP0IN_IX, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i32 @ep_init(%struct.TYPE_4__* %50, i32* %55)
  %57 = load i32, i32* @soft_reset_occured, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %47
  %60 = load %struct.udc*, %struct.udc** %3, align 8
  %61 = call i32 @udc_soft_reset(%struct.udc* %60)
  %62 = load i32, i32* @soft_reset_occured, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @soft_reset_occured, align 4
  br label %64

64:                                               ; preds = %59, %47
  %65 = load %struct.udc*, %struct.udc** %3, align 8
  %66 = call i32 @udc_enable_dev_setup_interrupts(%struct.udc* %65)
  %67 = load i64, i64* @use_fullspeed, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load %struct.udc*, %struct.udc** %3, align 8
  %71 = getelementptr inbounds %struct.udc, %struct.udc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i64 @readl(i32* %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* @UDC_DEVCFG_SPD_FS, align 4
  %77 = load i32, i32* @UDC_DEVCFG_SPD, align 4
  %78 = call i64 @AMD_ADDBITS(i64 %75, i32 %76, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.udc*, %struct.udc** %3, align 8
  %81 = getelementptr inbounds %struct.udc, %struct.udc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @writel(i64 %79, i32* %83)
  br label %85

85:                                               ; preds = %69, %64
  %86 = load %struct.udc*, %struct.udc** %3, align 8
  %87 = getelementptr inbounds %struct.udc, %struct.udc* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @empty_req_queue(i32*) #1

declare dso_local i32 @ep_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @udc_soft_reset(%struct.udc*) #1

declare dso_local i32 @udc_enable_dev_setup_interrupts(%struct.udc*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @AMD_ADDBITS(i64, i32, i32) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
