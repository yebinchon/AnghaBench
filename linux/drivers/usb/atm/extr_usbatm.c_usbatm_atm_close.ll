; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_atm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_atm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i8*, i8*, %struct.usbatm_vcc_data*, %struct.TYPE_3__* }
%struct.usbatm_vcc_data = type { i32*, i32 }
%struct.TYPE_3__ = type { %struct.usbatm_data* }
%struct.usbatm_data = type { i32, %struct.TYPE_4__, i8*, i8*, %struct.usbatm_vcc_data* }
%struct.TYPE_4__ = type { i32 }

@ATM_VPI_UNSPEC = common dso_local global i8* null, align 8
@ATM_VCI_UNSPEC = common dso_local global i8* null, align 8
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_VF_PARTIAL = common dso_local global i32 0, align 4
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @usbatm_atm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbatm_atm_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.usbatm_data*, align 8
  %4 = alloca %struct.usbatm_vcc_data*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %5 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %6 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  store %struct.usbatm_data* %9, %struct.usbatm_data** %3, align 8
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %11 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %10, i32 0, i32 3
  %12 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %11, align 8
  store %struct.usbatm_vcc_data* %12, %struct.usbatm_vcc_data** %4, align 8
  %13 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %14 = icmp ne %struct.usbatm_data* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %4, align 8
  %17 = icmp ne %struct.usbatm_vcc_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %1
  br label %83

19:                                               ; preds = %15
  %20 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %22 = call i32 @usbatm_cancel_send(%struct.usbatm_data* %20, %struct.atm_vcc* %21)
  %23 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %24 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %27 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @tasklet_disable(i32* %28)
  %30 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %31 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %30, i32 0, i32 4
  %32 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %31, align 8
  %33 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %4, align 8
  %34 = icmp eq %struct.usbatm_vcc_data* %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %19
  %36 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %37 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %36, i32 0, i32 4
  store %struct.usbatm_vcc_data* null, %struct.usbatm_vcc_data** %37, align 8
  %38 = load i8*, i8** @ATM_VPI_UNSPEC, align 8
  %39 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %40 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @ATM_VCI_UNSPEC, align 8
  %42 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %43 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %35, %19
  %45 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %4, align 8
  %46 = getelementptr inbounds %struct.usbatm_vcc_data, %struct.usbatm_vcc_data* %45, i32 0, i32 1
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %49 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @tasklet_enable(i32* %50)
  %52 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %4, align 8
  %53 = getelementptr inbounds %struct.usbatm_vcc_data, %struct.usbatm_vcc_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree_skb(i32* %54)
  %56 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %4, align 8
  %57 = getelementptr inbounds %struct.usbatm_vcc_data, %struct.usbatm_vcc_data* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.usbatm_vcc_data*, %struct.usbatm_vcc_data** %4, align 8
  %59 = call i32 @kfree(%struct.usbatm_vcc_data* %58)
  %60 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %61 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %60, i32 0, i32 3
  store %struct.usbatm_vcc_data* null, %struct.usbatm_vcc_data** %61, align 8
  %62 = load i8*, i8** @ATM_VPI_UNSPEC, align 8
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %64 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @ATM_VCI_UNSPEC, align 8
  %66 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %67 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @ATM_VF_READY, align 4
  %69 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %70 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %69, i32 0, i32 0
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = load i32, i32* @ATM_VF_PARTIAL, align 4
  %73 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %74 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %73, i32 0, i32 0
  %75 = call i32 @clear_bit(i32 %72, i32* %74)
  %76 = load i32, i32* @ATM_VF_ADDR, align 4
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %78 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %77, i32 0, i32 0
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %81 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %44, %18
  ret void
}

declare dso_local i32 @usbatm_cancel_send(%struct.usbatm_data*, %struct.atm_vcc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @kfree(%struct.usbatm_vcc_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
