; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_obgrid_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_obgrid_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_fw_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@IMGU_OBGRID_TILE_SIZE = common dso_local global i32 0, align 4
@IPU3_UAPI_ISP_VEC_ELEMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_fw_obgrid_size(%struct.imgu_fw_info* %0) #0 {
  %2 = alloca %struct.imgu_fw_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imgu_fw_info* %0, %struct.imgu_fw_info** %2, align 8
  %6 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %2, align 8
  %7 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IMGU_OBGRID_TILE_SIZE, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i32 @DIV_ROUND_UP(i32 %12, i32 %14)
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %2, align 8
  %18 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IMGU_OBGRID_TILE_SIZE, align 4
  %25 = mul nsw i32 %24, 2
  %26 = call i32 @DIV_ROUND_UP(i32 %23, i32 %25)
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IPU3_UAPI_ISP_VEC_ELEMS, align 4
  %30 = sdiv i32 %29, 4
  %31 = call i32 @ALIGN(i32 %28, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = mul i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @PAGE_ALIGN(i32 %37)
  %39 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %2, align 8
  %40 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul i32 %38, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
