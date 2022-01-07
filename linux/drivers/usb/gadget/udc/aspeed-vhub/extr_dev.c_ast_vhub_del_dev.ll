; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_del_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_del_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_del_dev(%struct.ast_vhub_dev* %0) #0 {
  %2 = alloca %struct.ast_vhub_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %2, align 8
  %4 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %11 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %16 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %23 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %25 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %31 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %30, i32 0, i32 2
  %32 = call i32 @usb_del_gadget_udc(i32* %31)
  %33 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %34 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_unregister(i32 %35)
  br label %37

37:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
