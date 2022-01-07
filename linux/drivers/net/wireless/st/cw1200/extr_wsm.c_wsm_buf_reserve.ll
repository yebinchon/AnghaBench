; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_buf_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_buf_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsm_buf = type { i32*, i32*, i32* }

@FWLOAD_BLOCK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wsm_buf*, i64)* @wsm_buf_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_buf_reserve(%struct.wsm_buf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wsm_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.wsm_buf* %0, %struct.wsm_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %10 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %13 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = ptrtoint i32* %11 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @FWLOAD_BLOCK_SIZE, align 4
  %24 = call i64 @round_up(i64 %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %26 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @GFP_DMA, align 4
  %31 = or i32 %29, %30
  %32 = call i32* @krealloc(i32* %27, i64 %28, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %37 = call i32 @wsm_buf_deinit(%struct.wsm_buf* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %2
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %43 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %45 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %50 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %52 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load %struct.wsm_buf*, %struct.wsm_buf** %4, align 8
  %57 = getelementptr inbounds %struct.wsm_buf, %struct.wsm_buf* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %40, %35
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32* @krealloc(i32*, i64, i32) #1

declare dso_local i32 @wsm_buf_deinit(%struct.wsm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
