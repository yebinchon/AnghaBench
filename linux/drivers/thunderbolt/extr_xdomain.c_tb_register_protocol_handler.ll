; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_register_protocol_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_register_protocol_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_protocol_handler = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@tb_xdp_uuid = common dso_local global i32 0, align 4
@xdomain_lock = common dso_local global i32 0, align 4
@protocol_handlers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_register_protocol_handler(%struct.tb_protocol_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_protocol_handler*, align 8
  store %struct.tb_protocol_handler* %0, %struct.tb_protocol_handler** %3, align 8
  %4 = load %struct.tb_protocol_handler*, %struct.tb_protocol_handler** %3, align 8
  %5 = getelementptr inbounds %struct.tb_protocol_handler, %struct.tb_protocol_handler* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.tb_protocol_handler*, %struct.tb_protocol_handler** %3, align 8
  %10 = getelementptr inbounds %struct.tb_protocol_handler, %struct.tb_protocol_handler* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %8
  %17 = load %struct.tb_protocol_handler*, %struct.tb_protocol_handler** %3, align 8
  %18 = getelementptr inbounds %struct.tb_protocol_handler, %struct.tb_protocol_handler* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @uuid_equal(i32 %19, i32* @tb_xdp_uuid)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %16
  %26 = call i32 @mutex_lock(i32* @xdomain_lock)
  %27 = load %struct.tb_protocol_handler*, %struct.tb_protocol_handler** %3, align 8
  %28 = getelementptr inbounds %struct.tb_protocol_handler, %struct.tb_protocol_handler* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %28, i32* @protocol_handlers)
  %30 = call i32 @mutex_unlock(i32* @xdomain_lock)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %22, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @uuid_equal(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
