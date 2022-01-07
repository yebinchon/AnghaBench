; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_write_elp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_write_elp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.wl1251_sdio* }
%struct.wl1251_sdio = type { i32, %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"sdio_writeb failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, i32, i32)* @wl1251_sdio_write_elp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_sdio_write_elp(%struct.wl1251* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl1251_sdio*, align 8
  %9 = alloca %struct.sdio_func*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %11 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %10, i32 0, i32 0
  %12 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %11, align 8
  store %struct.wl1251_sdio* %12, %struct.wl1251_sdio** %8, align 8
  %13 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %8, align 8
  %14 = getelementptr inbounds %struct.wl1251_sdio, %struct.wl1251_sdio* %13, i32 0, i32 1
  %15 = load %struct.sdio_func*, %struct.sdio_func** %14, align 8
  store %struct.sdio_func* %15, %struct.sdio_func** %9, align 8
  %16 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %17 = call i32 @sdio_claim_host(%struct.sdio_func* %16)
  %18 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sdio_writeb(%struct.sdio_func* %18, i32 %19, i32 %20, i32* %7)
  %22 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %23 = call i32 @sdio_release_host(%struct.sdio_func* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @wl1251_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %33

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %8, align 8
  %32 = getelementptr inbounds %struct.wl1251_sdio, %struct.wl1251_sdio* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @wl1251_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
