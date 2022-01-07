; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_errata2_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_errata2_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.timer_list = type { i32 }
%struct.isp1760_hcd = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ptd = type { i32, i32 }

@errata2_timer_hcd = common dso_local global %struct.usb_hcd* null, align 8
@jiffies = common dso_local global i64 0, align 8
@SLOT_TIMEOUT = common dso_local global i32 0, align 4
@ATL_PTD_OFFSET = common dso_local global i32 0, align 4
@SLOT_CHECK_PERIOD = common dso_local global i32 0, align 4
@errata2_timer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @errata2_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @errata2_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.isp1760_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptd, align 4
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** @errata2_timer_hcd, align 8
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %9)
  store %struct.isp1760_hcd* %10, %struct.isp1760_hcd** %4, align 8
  %11 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %68, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %71

18:                                               ; preds = %15
  %19 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %18
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %31 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @SLOT_TIMEOUT, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i64 @time_after(i64 %29, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %28
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATL_PTD_OFFSET, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ptd_read(i32 %46, i32 %47, i32 %48, %struct.ptd* %6)
  %50 = getelementptr inbounds %struct.ptd, %struct.ptd* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FROM_DW0_VALID(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.ptd, %struct.ptd* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @FROM_DW3_ACTIVE(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 1, %60
  %62 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %63 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %54, %43
  br label %67

67:                                               ; preds = %66, %28, %18
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %15

71:                                               ; preds = %15
  %72 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %73 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %78 = call i32 @handle_done_ptds(%struct.usb_hcd* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %81 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %80, i32 0, i32 1
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i64, i64* @jiffies, align 8
  %85 = load i32, i32* @SLOT_CHECK_PERIOD, align 4
  %86 = call i64 @msecs_to_jiffies(i32 %85)
  %87 = add nsw i64 %84, %86
  store i64 %87, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @errata2_timer, i32 0, i32 0), align 8
  %88 = call i32 @add_timer(%struct.TYPE_5__* @errata2_timer)
  ret void
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ptd_read(i32, i32, i32, %struct.ptd*) #1

declare dso_local i32 @FROM_DW0_VALID(i32) #1

declare dso_local i32 @FROM_DW3_ACTIVE(i32) #1

declare dso_local i32 @handle_done_ptds(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
