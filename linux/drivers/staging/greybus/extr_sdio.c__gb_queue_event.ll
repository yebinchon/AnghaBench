; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_queue_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_sdio_host = type { i32 }

@GB_SDIO_CARD_INSERTED = common dso_local global i32 0, align 4
@GB_SDIO_CARD_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_sdio_host*, i32)* @_gb_queue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gb_queue_event(%struct.gb_sdio_host* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_sdio_host*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_sdio_host* %0, %struct.gb_sdio_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @GB_SDIO_CARD_INSERTED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @GB_SDIO_CARD_REMOVED, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %13 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GB_SDIO_CARD_REMOVED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* @GB_SDIO_CARD_INSERTED, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %25 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %16
  br label %29

29:                                               ; preds = %28, %9
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %32 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
