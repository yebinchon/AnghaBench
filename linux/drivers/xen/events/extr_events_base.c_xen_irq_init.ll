; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate metadata for IRQ%d\0A\00", align 1
@IRQT_UNBOUND = common dso_local global i32 0, align 4
@xen_irq_list_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xen_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_irq_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.irq_info* @kzalloc(i32 12, i32 %4)
  store %struct.irq_info* %5, %struct.irq_info** %3, align 8
  %6 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %7 = icmp eq %struct.irq_info* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @IRQT_UNBOUND, align 4
  %13 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %14 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %16 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %19 = call i32 @irq_set_handler_data(i32 %17, %struct.irq_info* %18)
  %20 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %21 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %20, i32 0, i32 1
  %22 = call i32 @list_add_tail(i32* %21, i32* @xen_irq_list_head)
  ret void
}

declare dso_local %struct.irq_info* @kzalloc(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @irq_set_handler_data(i32, %struct.irq_info*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
