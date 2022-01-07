; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_set_halt_and_wedge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_epn.c_ast_vhub_set_halt_and_wedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.ast_vhub_ep = type { i64, %struct.TYPE_2__, i32, %struct.ast_vhub* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.ast_vhub = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Set halt (%d) & wedge (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, i32, i32)* @ast_vhub_set_halt_and_wedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_set_halt_and_wedge(%struct.usb_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ast_vhub_ep*, align 8
  %9 = alloca %struct.ast_vhub*, align 8
  %10 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %12 = call %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep* %11)
  store %struct.ast_vhub_ep* %12, %struct.ast_vhub_ep** %8, align 8
  %13 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %14 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %13, i32 0, i32 3
  %15 = load %struct.ast_vhub*, %struct.ast_vhub** %14, align 8
  store %struct.ast_vhub* %15, %struct.ast_vhub** %9, align 8
  %16 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @EPDBG(%struct.ast_vhub_ep* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %21 = icmp ne %struct.usb_ep* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %24 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %85

30:                                               ; preds = %22
  %31 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %85

36:                                               ; preds = %30
  %37 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %38 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %36
  %46 = load %struct.ast_vhub*, %struct.ast_vhub** %9, align 8
  %47 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %46, i32 0, i32 0
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %54 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %60 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %59, i32 0, i32 2
  %61 = call i32 @list_empty(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load %struct.ast_vhub*, %struct.ast_vhub** %9, align 8
  %65 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %58, %52, %45
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %73 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %77 = getelementptr inbounds %struct.ast_vhub_ep, %struct.ast_vhub_ep* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.ast_vhub_ep*, %struct.ast_vhub_ep** %8, align 8
  %80 = call i32 @ast_vhub_update_epn_stall(%struct.ast_vhub_ep* %79)
  %81 = load %struct.ast_vhub*, %struct.ast_vhub** %9, align 8
  %82 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %81, i32 0, i32 0
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %70, %63, %42, %35, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.ast_vhub_ep* @to_ast_ep(%struct.usb_ep*) #1

declare dso_local i32 @EPDBG(%struct.ast_vhub_ep*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ast_vhub_update_epn_stall(%struct.ast_vhub_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
