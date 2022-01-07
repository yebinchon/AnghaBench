; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_alloc_vda_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_alloc_vda_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i32 }
%struct.esas2r_request = type { %union.atto_vda_req*, %struct.esas2r_mem_desc* }
%union.atto_vda_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.esas2r_mem_desc = type { i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not alloc mem for vda request memdesc\0A\00", align 1
@ESAS2R_DATA_BUF_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"could not alloc mem for vda request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*)* @alloc_vda_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_vda_req(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca %struct.esas2r_mem_desc*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.esas2r_mem_desc* @kzalloc(i32 24, i32 %7)
  store %struct.esas2r_mem_desc* %8, %struct.esas2r_mem_desc** %6, align 8
  %9 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %10 = icmp eq %struct.esas2r_mem_desc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load i64, i64* @ESAS2R_DATA_BUF_LEN, align 8
  %15 = add i64 8, %14
  %16 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %17 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %19 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %20 = call i32 @esas2r_initmem_alloc(%struct.esas2r_adapter* %18, %struct.esas2r_mem_desc* %19, i32 256)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %25 = call i32 @kfree(%struct.esas2r_mem_desc* %24)
  store i32 0, i32* %3, align 4
  br label %53

26:                                               ; preds = %13
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %32 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %31, i32 0, i32 1
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %33, i32 0, i32 1
  %35 = call i32 @list_add(i32* %32, i32* %34)
  %36 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %37 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %38 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %37, i32 0, i32 1
  store %struct.esas2r_mem_desc* %36, %struct.esas2r_mem_desc** %38, align 8
  %39 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %40 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %union.atto_vda_req*
  %43 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %44 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %43, i32 0, i32 0
  store %union.atto_vda_req* %42, %union.atto_vda_req** %44, align 8
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %49 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %48, i32 0, i32 0
  %50 = load %union.atto_vda_req*, %union.atto_vda_req** %49, align 8
  %51 = bitcast %union.atto_vda_req* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %26, %22, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.esas2r_mem_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_initmem_alloc(%struct.esas2r_adapter*, %struct.esas2r_mem_desc*, i32) #1

declare dso_local i32 @kfree(%struct.esas2r_mem_desc*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
