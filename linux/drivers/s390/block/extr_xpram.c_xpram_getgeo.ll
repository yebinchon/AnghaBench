; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_xpram.c_xpram_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_xpram.c_xpram_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.hd_geometry = type { i64, i32, i32, i32 }

@xpram_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @xpram_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpram_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load i32, i32* @xpram_pages, align 4
  %7 = mul nsw i32 %6, 8
  %8 = and i32 %7, -64
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = lshr i64 %10, 6
  %12 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %13 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %15 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %14, i32 0, i32 1
  store i32 4, i32* %15, align 8
  %16 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %17 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %16, i32 0, i32 2
  store i32 16, i32* %17, align 4
  %18 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %19 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %18, i32 0, i32 3
  store i32 4, i32* %19, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
