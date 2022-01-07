; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_capi.c_gigaset_isdn_unregdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_capi.c_gigaset_isdn_unregdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.gigaset_capi_ctr* }
%struct.gigaset_capi_ctr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_isdn_unregdev(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.gigaset_capi_ctr*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 0
  %6 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %5, align 8
  store %struct.gigaset_capi_ctr* %6, %struct.gigaset_capi_ctr** %3, align 8
  %7 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %8 = getelementptr inbounds %struct.gigaset_capi_ctr, %struct.gigaset_capi_ctr* %7, i32 0, i32 0
  %9 = call i32 @detach_capi_ctr(i32* %8)
  %10 = load %struct.gigaset_capi_ctr*, %struct.gigaset_capi_ctr** %3, align 8
  %11 = call i32 @kfree(%struct.gigaset_capi_ctr* %10)
  %12 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 0
  store %struct.gigaset_capi_ctr* null, %struct.gigaset_capi_ctr** %13, align 8
  ret void
}

declare dso_local i32 @detach_capi_ctr(i32*) #1

declare dso_local i32 @kfree(%struct.gigaset_capi_ctr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
