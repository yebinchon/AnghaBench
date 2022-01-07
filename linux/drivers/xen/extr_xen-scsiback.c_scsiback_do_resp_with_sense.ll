; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_do_resp_with_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_do_resp_with_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_pend = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@scsiback_free_translation_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.vscsibk_pend*)* @scsiback_do_resp_with_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsiback_do_resp_with_sense(i8* %0, i32 %1, i32 %2, %struct.vscsibk_pend* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vscsibk_pend*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.vscsibk_pend* %3, %struct.vscsibk_pend** %8, align 8
  %9 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %8, align 8
  %10 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %8, align 8
  %16 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @scsiback_send_response(i32 %11, i8* %12, i32 %13, i32 %14, i32 %17)
  %19 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %8, align 8
  %20 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %8, align 8
  %25 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @scsiback_free_translation_entry, align 4
  %29 = call i32 @kref_put(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %4
  ret void
}

declare dso_local i32 @scsiback_send_response(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
