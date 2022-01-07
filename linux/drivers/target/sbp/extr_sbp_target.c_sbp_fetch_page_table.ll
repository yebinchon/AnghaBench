; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_fetch_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_fetch_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { %struct.sbp_page_table_entry*, %struct.TYPE_2__ }
%struct.sbp_page_table_entry = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCODE_READ_BLOCK_REQUEST = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp_target_request*)* @sbp_fetch_page_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_fetch_page_table(%struct.sbp_target_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbp_target_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbp_page_table_entry*, align 8
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %3, align 8
  %7 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %8 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be32_to_cpu(i32 %10)
  %12 = call i32 @CMDBLK_ORB_PG_TBL_PRESENT(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %17 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = call i32 @CMDBLK_ORB_DATA_SIZE(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sbp_page_table_entry* @kmalloc(i32 %25, i32 %26)
  store %struct.sbp_page_table_entry* %27, %struct.sbp_page_table_entry** %6, align 8
  %28 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %6, align 8
  %29 = icmp ne %struct.sbp_page_table_entry* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %15
  %34 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %35 = load i32, i32* @TCODE_READ_BLOCK_REQUEST, align 4
  %36 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %37 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @sbp2_pointer_to_addr(i32* %38)
  %40 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @sbp_run_request_transaction(%struct.sbp_target_request* %34, i32 %35, i32 %39, %struct.sbp_page_table_entry* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RCODE_COMPLETE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %6, align 8
  %48 = call i32 @kfree(%struct.sbp_page_table_entry* %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %33
  %52 = load %struct.sbp_page_table_entry*, %struct.sbp_page_table_entry** %6, align 8
  %53 = load %struct.sbp_target_request*, %struct.sbp_target_request** %3, align 8
  %54 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %53, i32 0, i32 0
  store %struct.sbp_page_table_entry* %52, %struct.sbp_page_table_entry** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %46, %30, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @CMDBLK_ORB_PG_TBL_PRESENT(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @CMDBLK_ORB_DATA_SIZE(i32) #1

declare dso_local %struct.sbp_page_table_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @sbp_run_request_transaction(%struct.sbp_target_request*, i32, i32, %struct.sbp_page_table_entry*, i32) #1

declare dso_local i32 @sbp2_pointer_to_addr(i32*) #1

declare dso_local i32 @kfree(%struct.sbp_page_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
