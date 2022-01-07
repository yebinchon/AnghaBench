; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub_dev = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Reset of disabled device, enabling...\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Reset of enabled device, resetting...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_vhub_dev_reset(%struct.ast_vhub_dev* %0) #0 {
  %2 = alloca %struct.ast_vhub_dev*, align 8
  store %struct.ast_vhub_dev* %0, %struct.ast_vhub_dev** %2, align 8
  %3 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %4 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %9 = call i32 @ast_vhub_dev_disable(%struct.ast_vhub_dev* %8)
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %17 = call i32 @DDBG(%struct.ast_vhub_dev* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %19 = call i32 @ast_vhub_dev_enable(%struct.ast_vhub_dev* %18)
  br label %43

20:                                               ; preds = %10
  %21 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %22 = call i32 @DDBG(%struct.ast_vhub_dev* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %24 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %29 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %28, i32 0, i32 2
  %30 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %31 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_gadget_udc_reset(i32* %29, i32 %32)
  %34 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %35 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %40 = call i32 @ast_vhub_dev_disable(%struct.ast_vhub_dev* %39)
  %41 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %2, align 8
  %42 = call i32 @ast_vhub_dev_enable(%struct.ast_vhub_dev* %41)
  br label %43

43:                                               ; preds = %7, %20, %15
  ret void
}

declare dso_local i32 @ast_vhub_dev_disable(%struct.ast_vhub_dev*) #1

declare dso_local i32 @DDBG(%struct.ast_vhub_dev*, i8*) #1

declare dso_local i32 @ast_vhub_dev_enable(%struct.ast_vhub_dev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_udc_reset(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
