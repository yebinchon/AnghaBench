; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_alloc_writebuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_alloc_writebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @ms_lib_alloc_writebuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_alloc_writebuf(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %5 = load %struct.us_data*, %struct.us_data** %3, align 8
  %6 = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %8, %struct.ene_ub6250_info** %4, align 8
  %9 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %10 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i64 -1, i64* %11, align 8
  %12 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %13 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %17 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc_array(i32 %15, i32 %19, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %24 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32* %22, i32** %25, align 8
  %26 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %27 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc_array(i32 %29, i32 4, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %34 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* %32, i32** %35, align 8
  %36 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %37 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %1
  %42 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %43 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %1
  %48 = load %struct.us_data*, %struct.us_data** %3, align 8
  %49 = call i32 @ms_lib_free_writebuf(%struct.us_data* %48)
  store i32 -1, i32* %2, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load %struct.us_data*, %struct.us_data** %3, align 8
  %52 = call i32 @ms_lib_clear_writebuf(%struct.us_data* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ms_lib_free_writebuf(%struct.us_data*) #1

declare dso_local i32 @ms_lib_clear_writebuf(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
