; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_init_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_init_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_dev = type { i32, i32, %struct.rx_cxt }
%struct.rx_cxt = type { i32, i32, i32, i32, i32, i32 }
%struct.mux_rx = type { i32 }

@MAX_ISSUE_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux_dev*)* @init_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_usb(%struct.mux_dev* %0) #0 {
  %2 = alloca %struct.mux_dev*, align 8
  %3 = alloca %struct.mux_rx*, align 8
  %4 = alloca %struct.rx_cxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mux_dev* %0, %struct.mux_dev** %2, align 8
  %7 = load %struct.mux_dev*, %struct.mux_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %7, i32 0, i32 2
  store %struct.rx_cxt* %8, %struct.rx_cxt** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mux_dev*, %struct.mux_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.rx_cxt*, %struct.rx_cxt** %4, align 8
  %13 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %12, i32 0, i32 5
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.rx_cxt*, %struct.rx_cxt** %4, align 8
  %16 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.rx_cxt*, %struct.rx_cxt** %4, align 8
  %19 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.rx_cxt*, %struct.rx_cxt** %4, align 8
  %22 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %21, i32 0, i32 3
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.rx_cxt*, %struct.rx_cxt** %4, align 8
  %25 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %24, i32 0, i32 2
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.rx_cxt*, %struct.rx_cxt** %4, align 8
  %28 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_init(i32* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %48, %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_ISSUE_NUM, align 4
  %33 = mul nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = call %struct.mux_rx* (...) @alloc_mux_rx()
  store %struct.mux_rx* %36, %struct.mux_rx** %3, align 8
  %37 = load %struct.mux_rx*, %struct.mux_rx** %3, align 8
  %38 = icmp ne %struct.mux_rx* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load %struct.mux_rx*, %struct.mux_rx** %3, align 8
  %44 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %43, i32 0, i32 0
  %45 = load %struct.rx_cxt*, %struct.rx_cxt** %4, align 8
  %46 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %45, i32 0, i32 0
  %47 = call i32 @list_add(i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %30

51:                                               ; preds = %39, %30
  %52 = load %struct.mux_dev*, %struct.mux_dev** %2, align 8
  %53 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %52, i32 0, i32 0
  %54 = load i32, i32* @do_rx, align 4
  %55 = call i32 @INIT_DELAYED_WORK(i32* %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.mux_rx* @alloc_mux_rx(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
