; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_wdata_alloc_and_fillpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_wdata_alloc_and_fillpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_writedata = type { i32 }
%struct.address_space = type { i32 }

@cifs_writev_complete = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cifs_writedata* (i64, %struct.address_space*, i64, i64*, i32*)* @wdata_alloc_and_fillpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cifs_writedata* @wdata_alloc_and_fillpages(i64 %0, %struct.address_space* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.cifs_writedata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cifs_writedata*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.address_space* %1, %struct.address_space** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @cifs_writev_complete, align 4
  %16 = call %struct.cifs_writedata* @cifs_writedata_alloc(i32 %14, i32 %15)
  store %struct.cifs_writedata* %16, %struct.cifs_writedata** %12, align 8
  %17 = load %struct.cifs_writedata*, %struct.cifs_writedata** %12, align 8
  %18 = icmp ne %struct.cifs_writedata* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.cifs_writedata* null, %struct.cifs_writedata** %6, align 8
  br label %32

20:                                               ; preds = %5
  %21 = load %struct.address_space*, %struct.address_space** %8, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.cifs_writedata*, %struct.cifs_writedata** %12, align 8
  %27 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @find_get_pages_range_tag(%struct.address_space* %21, i64* %22, i64 %23, i32 %24, i64 %25, i32 %28)
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.cifs_writedata*, %struct.cifs_writedata** %12, align 8
  store %struct.cifs_writedata* %31, %struct.cifs_writedata** %6, align 8
  br label %32

32:                                               ; preds = %20, %19
  %33 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  ret %struct.cifs_writedata* %33
}

declare dso_local %struct.cifs_writedata* @cifs_writedata_alloc(i32, i32) #1

declare dso_local i32 @find_get_pages_range_tag(%struct.address_space*, i64*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
