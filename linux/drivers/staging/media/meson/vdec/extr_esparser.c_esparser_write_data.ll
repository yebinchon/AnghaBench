; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_core = type { i32 }

@PFIFO_RD_PTR = common dso_local global i32 0, align 4
@PFIFO_WR_PTR = common dso_local global i32 0, align 4
@PARSER_CONTROL = common dso_local global i32 0, align 4
@ES_WRITE = common dso_local global i32 0, align 4
@ES_PARSER_START = common dso_local global i32 0, align 4
@ES_SEARCH = common dso_local global i32 0, align 4
@ES_PACK_SIZE_BIT = common dso_local global i32 0, align 4
@PARSER_FETCH_ADDR = common dso_local global i32 0, align 4
@PARSER_FETCH_CMD = common dso_local global i32 0, align 4
@FETCH_ENDIAN_BIT = common dso_local global i32 0, align 4
@SEARCH_PATTERN_LEN = common dso_local global i32 0, align 4
@search_done = common dso_local global i64 0, align 8
@wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_core*, i32, i32)* @esparser_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esparser_write_data(%struct.amvdec_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amvdec_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amvdec_core* %0, %struct.amvdec_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %8 = load i32, i32* @PFIFO_RD_PTR, align 4
  %9 = call i32 @amvdec_write_parser(%struct.amvdec_core* %7, i32 %8, i32 0)
  %10 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %11 = load i32, i32* @PFIFO_WR_PTR, align 4
  %12 = call i32 @amvdec_write_parser(%struct.amvdec_core* %10, i32 %11, i32 0)
  %13 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %14 = load i32, i32* @PARSER_CONTROL, align 4
  %15 = load i32, i32* @ES_WRITE, align 4
  %16 = load i32, i32* @ES_PARSER_START, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ES_SEARCH, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ES_PACK_SIZE_BIT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = call i32 @amvdec_write_parser(%struct.amvdec_core* %13, i32 %14, i32 %23)
  %25 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %26 = load i32, i32* @PARSER_FETCH_ADDR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @amvdec_write_parser(%struct.amvdec_core* %25, i32 %26, i32 %27)
  %29 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %30 = load i32, i32* @PARSER_FETCH_CMD, align 4
  %31 = load i32, i32* @FETCH_ENDIAN_BIT, align 4
  %32 = shl i32 7, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SEARCH_PATTERN_LEN, align 4
  %35 = add nsw i32 %33, %34
  %36 = or i32 %32, %35
  %37 = call i32 @amvdec_write_parser(%struct.amvdec_core* %29, i32 %30, i32 %36)
  store i64 0, i64* @search_done, align 8
  %38 = load i32, i32* @wq, align 4
  %39 = load i64, i64* @search_done, align 8
  %40 = load i32, i32* @HZ, align 4
  %41 = sdiv i32 %40, 5
  %42 = call i32 @wait_event_interruptible_timeout(i32 %38, i64 %39, i32 %41)
  ret i32 %42
}

declare dso_local i32 @amvdec_write_parser(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
