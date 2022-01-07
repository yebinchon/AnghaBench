; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_ccb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_ccb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_info_result = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"attempting info on ca_ra 0x%llx\00", align 1
@HV_EOK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"HV_EOK (ca_ra 0x%llx): %d\00", align 1
@DAX_CCB_ENQUEUED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"dax_unit %d, queue_num %d, queue_pos %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s (ca_ra 0x%llx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ccb_info_result*)* @dax_ccb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_ccb_info(i32 %0, %struct.ccb_info_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccb_info_result*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ccb_info_result* %1, %struct.ccb_info_result** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 (i8*, i8*, ...) @dax_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ccb_info_result*, %struct.ccb_info_result** %4, align 8
  %14 = call i64 @sun4v_ccb_info(i32 %12, %struct.ccb_info_result* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @HV_EOK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ccb_info_result*, %struct.ccb_info_result** %4, align 8
  %21 = getelementptr inbounds %struct.ccb_info_result, %struct.ccb_info_result* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, i32, i64, ...) @dax_info_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %19, i64 %22)
  %24 = load %struct.ccb_info_result*, %struct.ccb_info_result** %4, align 8
  %25 = getelementptr inbounds %struct.ccb_info_result, %struct.ccb_info_result* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAX_CCB_ENQUEUED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load %struct.ccb_info_result*, %struct.ccb_info_result** %4, align 8
  %31 = getelementptr inbounds %struct.ccb_info_result, %struct.ccb_info_result* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ccb_info_result*, %struct.ccb_info_result** %4, align 8
  %34 = getelementptr inbounds %struct.ccb_info_result, %struct.ccb_info_result* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.ccb_info_result*, %struct.ccb_info_result** %4, align 8
  %38 = getelementptr inbounds %struct.ccb_info_result, %struct.ccb_info_result* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, i64, ...) @dax_info_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %32, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %18
  br label %48

42:                                               ; preds = %2
  %43 = load i64, i64* %5, align 8
  %44 = call i8* @dax_hv_errno(i64 %43, i32* %7)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i8*, i8*, ...) @dax_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %41
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @dax_dbg(i8*, i8*, ...) #1

declare dso_local i64 @sun4v_ccb_info(i32, %struct.ccb_info_result*) #1

declare dso_local i32 @dax_info_dbg(i8*, i32, i64, ...) #1

declare dso_local i8* @dax_hv_errno(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
