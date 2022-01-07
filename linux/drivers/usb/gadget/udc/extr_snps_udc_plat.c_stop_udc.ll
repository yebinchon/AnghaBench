; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_plat.c_stop_udc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_plat.c_stop_udc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32, i32, i64, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.TYPE_3__ = type { i32 }

@UDC_DEVCTL_SRX_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ep rx queue flushed\0A\00", align 1
@UDC_EP_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Device disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @stop_udc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_udc(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %2, align 8
  %5 = load %struct.udc*, %struct.udc** %2, align 8
  %6 = getelementptr inbounds %struct.udc, %struct.udc* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.udc*, %struct.udc** %2, align 8
  %9 = getelementptr inbounds %struct.udc, %struct.udc* %8, i32 0, i32 6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @readl(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @UDC_DEVCTL_SRX_FLUSH, align 4
  %14 = call i32 @AMD_BIT(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.udc*, %struct.udc** %2, align 8
  %19 = getelementptr inbounds %struct.udc, %struct.udc* %18, i32 0, i32 6
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @writel(i32 %17, i32* %21)
  %23 = load %struct.udc*, %struct.udc** %2, align 8
  %24 = getelementptr inbounds %struct.udc, %struct.udc* %23, i32 0, i32 6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @readl(i32* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @UDC_DEVCTL_SRX_FLUSH, align 4
  %29 = call i32 @AMD_BIT(i32 %28)
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.udc*, %struct.udc** %2, align 8
  %35 = getelementptr inbounds %struct.udc, %struct.udc* %34, i32 0, i32 6
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @writel(i32 %33, i32* %37)
  %39 = load %struct.udc*, %struct.udc** %2, align 8
  %40 = getelementptr inbounds %struct.udc, %struct.udc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.udc*, %struct.udc** %2, align 8
  %44 = call i32 @udc_mask_unused_interrupts(%struct.udc* %43)
  %45 = load %struct.udc*, %struct.udc** %2, align 8
  %46 = getelementptr inbounds %struct.udc, %struct.udc* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %1
  %50 = load %struct.udc*, %struct.udc** %2, align 8
  %51 = getelementptr inbounds %struct.udc, %struct.udc* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.udc*, %struct.udc** %2, align 8
  %54 = getelementptr inbounds %struct.udc, %struct.udc* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (i32*)*, i32 (i32*)** %56, align 8
  %58 = load %struct.udc*, %struct.udc** %2, align 8
  %59 = getelementptr inbounds %struct.udc, %struct.udc* %58, i32 0, i32 4
  %60 = call i32 %57(i32* %59)
  %61 = load %struct.udc*, %struct.udc** %2, align 8
  %62 = getelementptr inbounds %struct.udc, %struct.udc* %61, i32 0, i32 1
  %63 = call i32 @spin_lock(i32* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %76, %49
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @UDC_EP_NUM, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.udc*, %struct.udc** %2, align 8
  %70 = getelementptr inbounds %struct.udc, %struct.udc* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @empty_req_queue(i32* %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %64

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.udc*, %struct.udc** %2, align 8
  %82 = getelementptr inbounds %struct.udc, %struct.udc* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.udc*, %struct.udc** %2, align 8
  %84 = getelementptr inbounds %struct.udc, %struct.udc* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.udc*, %struct.udc** %2, align 8
  %87 = getelementptr inbounds %struct.udc, %struct.udc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_info(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @udc_mask_unused_interrupts(%struct.udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @empty_req_queue(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
