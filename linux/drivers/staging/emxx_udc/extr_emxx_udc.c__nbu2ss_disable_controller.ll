; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_disable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DIRPD = common dso_local global i32 0, align 4
@EPC_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*)* @_nbu2ss_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_disable_controller(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca %struct.nbu2ss_udc*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %2, align 8
  %3 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %4 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %9 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %11 = call i32 @_nbu2ss_reset_controller(%struct.nbu2ss_udc* %10)
  %12 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @DIRPD, align 4
  %17 = load i32, i32* @EPC_RST, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @_nbu2ss_bitset(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @_nbu2ss_reset_controller(%struct.nbu2ss_udc*) #1

declare dso_local i32 @_nbu2ss_bitset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
