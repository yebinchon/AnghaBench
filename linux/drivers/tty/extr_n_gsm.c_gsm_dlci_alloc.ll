; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i32, i32, i32, i32, %struct.gsm_mux*, %struct.TYPE_2__, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.gsm_mux = type { %struct.gsm_dlci**, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@gsm_dlci_t1 = common dso_local global i32 0, align 4
@gsm_port_ops = common dso_local global i32 0, align 4
@DLCI_CLOSED = common dso_local global i32 0, align 4
@gsm_dlci_data = common dso_local global i32 0, align 4
@gsm_dlci_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gsm_dlci* (%struct.gsm_mux*, i32)* @gsm_dlci_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gsm_dlci* @gsm_dlci_alloc(%struct.gsm_mux* %0, i32 %1) #0 {
  %3 = alloca %struct.gsm_dlci*, align 8
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsm_dlci*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.gsm_dlci* @kzalloc(i32 64, i32 %7)
  store %struct.gsm_dlci* %8, %struct.gsm_dlci** %6, align 8
  %9 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %10 = icmp eq %struct.gsm_dlci* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.gsm_dlci* null, %struct.gsm_dlci** %3, align 8
  br label %78

12:                                               ; preds = %2
  %13 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %14 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %13, i32 0, i32 11
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %17 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %16, i32 0, i32 10
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %20 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %19, i32 0, i32 8
  %21 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %22 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %21, i32 0, i32 9
  store i32* %20, i32** %22, align 8
  %23 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %24 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %23, i32 0, i32 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @kfifo_alloc(i32* %24, i32 4096, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %12
  %29 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %30 = call i32 @kfree(%struct.gsm_dlci* %29)
  store %struct.gsm_dlci* null, %struct.gsm_dlci** %3, align 8
  br label %78

31:                                               ; preds = %12
  %32 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %33 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %32, i32 0, i32 7
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %36 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %35, i32 0, i32 6
  %37 = load i32, i32* @gsm_dlci_t1, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %40 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %39, i32 0, i32 5
  %41 = call i32 @tty_port_init(%struct.TYPE_2__* %40)
  %42 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %43 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* @gsm_port_ops, i32** %44, align 8
  %45 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %46 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %47 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %46, i32 0, i32 4
  store %struct.gsm_mux* %45, %struct.gsm_mux** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %50 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %52 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %55 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @DLCI_CLOSED, align 4
  %57 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %58 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %31
  %62 = load i32, i32* @gsm_dlci_data, align 4
  %63 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %64 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %31
  %66 = load i32, i32* @gsm_dlci_command, align 4
  %67 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %68 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %71 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %72 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %71, i32 0, i32 0
  %73 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %73, i64 %75
  store %struct.gsm_dlci* %70, %struct.gsm_dlci** %76, align 8
  %77 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  store %struct.gsm_dlci* %77, %struct.gsm_dlci** %3, align 8
  br label %78

78:                                               ; preds = %69, %28, %11
  %79 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  ret %struct.gsm_dlci* %79
}

declare dso_local %struct.gsm_dlci* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.gsm_dlci*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
