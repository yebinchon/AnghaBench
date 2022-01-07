; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_xfer_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c_wa_xfer_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wa_xfer*)* @wa_xfer_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_xfer_completion(%struct.wa_xfer* %0) #0 {
  %2 = alloca %struct.wa_xfer*, align 8
  store %struct.wa_xfer* %0, %struct.wa_xfer** %2, align 8
  %3 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %4 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %9 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @wusb_dev_put(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rpipe_put(i32 %17)
  %19 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %20 = call i32 @wa_xfer_giveback(%struct.wa_xfer* %19)
  ret void
}

declare dso_local i32 @wusb_dev_put(i64) #1

declare dso_local i32 @rpipe_put(i32) #1

declare dso_local i32 @wa_xfer_giveback(%struct.wa_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
