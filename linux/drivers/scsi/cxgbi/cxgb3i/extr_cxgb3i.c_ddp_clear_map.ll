; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ddp_clear_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ddp_clear_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.cxgbi_ppm = type { i32, i32 }
%struct.cxgbi_task_tag_info = type { i32, i32 }
%struct.sk_buff = type { i32 }

@PPOD_SIZE_SHIFT = common dso_local global i32 0, align 4
@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cdev 0x%p, clear idx %u, npods %u.\0A\00", align 1
@IPPOD_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cdev 0x%p, clear ddp, %u,%d/%u, skb OOM.\0A\00", align 1
@CPL_PRIORITY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.cxgbi_ppm*, %struct.cxgbi_task_tag_info*)* @ddp_clear_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddp_clear_map(%struct.cxgbi_device* %0, %struct.cxgbi_ppm* %1, %struct.cxgbi_task_tag_info* %2) #0 {
  %4 = alloca %struct.cxgbi_device*, align 8
  %5 = alloca %struct.cxgbi_ppm*, align 8
  %6 = alloca %struct.cxgbi_task_tag_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %4, align 8
  store %struct.cxgbi_ppm* %1, %struct.cxgbi_ppm** %5, align 8
  store %struct.cxgbi_task_tag_info* %2, %struct.cxgbi_task_tag_info** %6, align 8
  %12 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %13 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PPOD_SIZE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %5, align 8
  %19 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %23 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @log_debug(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %27, i32 %28, i32 %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %60, %3
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load i64, i64* @IPPOD_SIZE, align 8
  %37 = add i64 4, %36
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.sk_buff* @alloc_wr(i64 %37, i32 0, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %11, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_device* %43, i32 %44, i32 %45, i32 %46)
  br label %60

48:                                               ; preds = %35
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ulp_mem_io_set_hdr(%struct.sk_buff* %49, i32 %50)
  %52 = load i32, i32* @CPL_PRIORITY_CONTROL, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %5, align 8
  %56 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = call i32 @cxgb3_ofld_send(i32 %57, %struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %48, %42
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i64, i64* @IPPOD_SIZE, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %31

70:                                               ; preds = %31
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_wr(i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_device*, i32, i32, i32) #1

declare dso_local i32 @ulp_mem_io_set_hdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgb3_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
