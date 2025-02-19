; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_int.h_dasd_init_chunklist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_int.h_dasd_init_chunklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dasd_mchunk = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, i8*, i64)* @dasd_init_chunklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_init_chunklist(%struct.list_head* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dasd_mchunk*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8
  %9 = call i32 @INIT_LIST_HEAD(%struct.list_head* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dasd_mchunk*
  store %struct.dasd_mchunk* %11, %struct.dasd_mchunk** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 16
  %14 = load %struct.dasd_mchunk*, %struct.dasd_mchunk** %7, align 8
  %15 = getelementptr inbounds %struct.dasd_mchunk, %struct.dasd_mchunk* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.dasd_mchunk*, %struct.dasd_mchunk** %7, align 8
  %17 = getelementptr inbounds %struct.dasd_mchunk, %struct.dasd_mchunk* %16, i32 0, i32 1
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = call i32 @list_add(i32* %17, %struct.list_head* %18)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
