; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_usb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_hw_usb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@OP_ENDPTFLUSH = common dso_local global i32 0, align 4
@OP_ENDPTSETUPSTAT = common dso_local global i32 0, align 4
@OP_ENDPTCOMPLETE = common dso_local global i32 0, align 4
@OP_ENDPTPRIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @hw_usb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_usb_reset(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = call i32 @hw_usb_set_address(%struct.ci_hdrc* %3, i32 0)
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %6 = load i32, i32* @OP_ENDPTFLUSH, align 4
  %7 = call i32 @hw_write(%struct.ci_hdrc* %5, i32 %6, i32 -1, i32 -1)
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %9 = load i32, i32* @OP_ENDPTSETUPSTAT, align 4
  %10 = call i32 @hw_write(%struct.ci_hdrc* %8, i32 %9, i32 0, i32 0)
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %12 = load i32, i32* @OP_ENDPTCOMPLETE, align 4
  %13 = call i32 @hw_write(%struct.ci_hdrc* %11, i32 %12, i32 0, i32 0)
  br label %14

14:                                               ; preds = %19, %1
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %16 = load i32, i32* @OP_ENDPTPRIME, align 4
  %17 = call i64 @hw_read(%struct.ci_hdrc* %15, i32 %16, i32 -1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @udelay(i32 10)
  br label %14

21:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @hw_usb_set_address(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i64 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
