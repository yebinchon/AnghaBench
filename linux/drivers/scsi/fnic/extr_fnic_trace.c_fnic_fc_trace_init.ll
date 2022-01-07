; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_trace.c_fnic_fc_trace_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_trace.c_fnic_fc_trace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64, i64 }

@fnic_fc_trace_max_pages = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@FC_TRC_SIZE_BYTES = common dso_local global i64 0, align 8
@fc_trace_max_entries = common dso_local global i32 0, align 4
@fnic_fc_ctlr_trace_buf_p = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"fnic: Failed to allocate memory for FC Control Trace Buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fc_trace_entries = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"fnic:Failed to allocate memory for page_offset\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"fnic: Freeing FC Control Trace Buf\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"fnic: Successfully Initialized FC_CTLR Trace Buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_fc_trace_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* @fnic_fc_trace_max_pages, align 8
  %6 = load i64, i64* @PAGE_SIZE, align 8
  %7 = mul i64 %5, %6
  %8 = load i64, i64* @FC_TRC_SIZE_BYTES, align 8
  %9 = udiv i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @fc_trace_max_entries, align 4
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* @fnic_fc_trace_max_pages, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @array_size(i32 %12, i32 %14)
  %16 = call i64* @vmalloc(i32 %15)
  %17 = ptrtoint i64* %16 to i64
  store i64 %17, i64* @fnic_fc_ctlr_trace_buf_p, align 8
  %18 = load i64, i64* @fnic_fc_ctlr_trace_buf_p, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %0
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %78

24:                                               ; preds = %0
  %25 = load i64, i64* @fnic_fc_ctlr_trace_buf_p, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i64, i64* @fnic_fc_trace_max_pages, align 8
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = mul i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i8* %26, i32 0, i32 %30)
  %32 = load i32, i32* @fc_trace_max_entries, align 4
  %33 = call i32 @array_size(i32 %32, i32 8)
  %34 = call i64* @vmalloc(i32 %33)
  store i64* %34, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fc_trace_entries, i32 0, i32 0), align 8
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fc_trace_entries, i32 0, i32 0), align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %24
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @fnic_fc_ctlr_trace_buf_p, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* @fnic_fc_ctlr_trace_buf_p, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @vfree(i8* %44)
  store i64 0, i64* @fnic_fc_ctlr_trace_buf_p, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %78

49:                                               ; preds = %24
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fc_trace_entries, i32 0, i32 0), align 8
  %51 = bitcast i64* %50 to i8*
  %52 = load i32, i32* @fc_trace_max_entries, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i8* %51, i32 0, i32 %55)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fc_trace_entries, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fc_trace_entries, i32 0, i32 2), align 8
  %57 = load i64, i64* @fnic_fc_ctlr_trace_buf_p, align 8
  store i64 %57, i64* %2, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %71, %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @fc_trace_max_entries, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i64, i64* %2, align 8
  %64 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fc_trace_entries, i32 0, i32 0), align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %63, i64* %67, align 8
  %68 = load i64, i64* @FC_TRC_SIZE_BYTES, align 8
  %69 = load i64, i64* %2, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %2, align 8
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %58

74:                                               ; preds = %58
  %75 = call i32 (...) @fnic_fc_trace_debugfs_init()
  %76 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %3, align 4
  store i32 %77, i32* %1, align 4
  br label %80

78:                                               ; preds = %46, %20
  %79 = load i32, i32* %3, align 4
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i64* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @fnic_fc_trace_debugfs_init(...) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
