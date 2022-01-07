; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_monwriter.c_monwrite_diag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_monwriter.c_monwrite_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.monwrite_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.appldata_parameter_list = type { i32, i32, i32, i32, i32, i32 }
%struct.appldata_product_id = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"LNXAPPL\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Writing monitor data failed with rc=%i\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.monwrite_hdr*, i8*, i32)* @monwrite_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monwrite_diag(%struct.monwrite_hdr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.monwrite_hdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.appldata_parameter_list*, align 8
  %8 = alloca %struct.appldata_product_id*, align 8
  %9 = alloca i32, align 4
  store %struct.monwrite_hdr* %0, %struct.monwrite_hdr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.appldata_product_id* @kmalloc(i32 24, i32 %10)
  store %struct.appldata_product_id* %11, %struct.appldata_product_id** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.appldata_product_id* @kmalloc(i32 24, i32 %12)
  %14 = bitcast %struct.appldata_product_id* %13 to %struct.appldata_parameter_list*
  store %struct.appldata_parameter_list* %14, %struct.appldata_parameter_list** %7, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %18 = icmp ne %struct.appldata_product_id* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.appldata_parameter_list*, %struct.appldata_parameter_list** %7, align 8
  %21 = icmp ne %struct.appldata_parameter_list* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %3
  br label %78

23:                                               ; preds = %19
  %24 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %25 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %28 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %29 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %32 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %37 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %42 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %44 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %47 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %52 = getelementptr inbounds %struct.appldata_product_id, %struct.appldata_product_id* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.appldata_parameter_list*, %struct.appldata_parameter_list** %7, align 8
  %54 = bitcast %struct.appldata_parameter_list* %53 to %struct.appldata_product_id*
  %55 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.monwrite_hdr*, %struct.monwrite_hdr** %4, align 8
  %59 = getelementptr inbounds %struct.monwrite_hdr, %struct.monwrite_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @appldata_asm(%struct.appldata_product_id* %54, %struct.appldata_product_id* %55, i32 %56, i8* %57, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %23
  br label %78

65:                                               ; preds = %23
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  br label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %72, %70 ], [ %75, %73 ]
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %64, %22
  %79 = load %struct.appldata_product_id*, %struct.appldata_product_id** %8, align 8
  %80 = call i32 @kfree(%struct.appldata_product_id* %79)
  %81 = load %struct.appldata_parameter_list*, %struct.appldata_parameter_list** %7, align 8
  %82 = bitcast %struct.appldata_parameter_list* %81 to %struct.appldata_product_id*
  %83 = call i32 @kfree(%struct.appldata_product_id* %82)
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local %struct.appldata_product_id* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @appldata_asm(%struct.appldata_product_id*, %struct.appldata_product_id*, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.appldata_product_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
