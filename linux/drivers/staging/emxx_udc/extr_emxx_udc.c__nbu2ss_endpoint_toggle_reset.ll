; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_endpoint_toggle_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_endpoint_toggle_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@EPN_IPIDCLR = common dso_local global i32 0, align 4
@EPN_BCLR = common dso_local global i32 0, align 4
@EPN_OPIDCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*, i32)* @_nbu2ss_endpoint_toggle_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_endpoint_toggle_reset(%struct.nbu2ss_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.nbu2ss_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %39

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 127
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @EPN_IPIDCLR, align 4
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @EPN_BCLR, align 4
  %25 = load i32, i32* @EPN_OPIDCLR, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %29 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @_nbu2ss_bitset(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %12
  ret void
}

declare dso_local i32 @_nbu2ss_bitset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
