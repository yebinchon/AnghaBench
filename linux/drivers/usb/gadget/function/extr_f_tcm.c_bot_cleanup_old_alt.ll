; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_cleanup_old_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_cleanup_old_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32* }

@USBG_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_uas*)* @bot_cleanup_old_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bot_cleanup_old_alt(%struct.f_uas* %0) #0 {
  %2 = alloca %struct.f_uas*, align 8
  store %struct.f_uas* %0, %struct.f_uas** %2, align 8
  %3 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %4 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @USBG_ENABLED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %73

10:                                               ; preds = %1
  %11 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %12 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @usb_ep_disable(i32 %13)
  %15 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %16 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_ep_disable(i32 %17)
  %19 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %20 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %10
  br label %73

24:                                               ; preds = %10
  %25 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %26 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %29 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usb_ep_free_request(i32 %27, i32* %30)
  %32 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %33 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %36 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @usb_ep_free_request(i32 %34, i32* %37)
  %39 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %40 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %43 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @usb_ep_free_request(i32 %41, i32* %45)
  %47 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %48 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %51 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @usb_ep_free_request(i32 %49, i32* %53)
  %55 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %56 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %61 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %63 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %65 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %68 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.f_uas*, %struct.f_uas** %2, align 8
  %71 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %24, %23, %9
  ret void
}

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local i32 @usb_ep_free_request(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
