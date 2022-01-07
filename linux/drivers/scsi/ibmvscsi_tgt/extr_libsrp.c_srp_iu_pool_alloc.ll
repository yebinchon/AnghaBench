; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_iu_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_iu_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_queue = type { i8*, i32, %struct.iu_entry*, i32 }
%struct.iu_entry = type { %struct.srp_buf* }
%struct.srp_buf = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_queue*, i64, %struct.srp_buf**)* @srp_iu_pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_iu_pool_alloc(%struct.srp_queue* %0, i64 %1, %struct.srp_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.srp_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.srp_buf**, align 8
  %8 = alloca %struct.iu_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.srp_queue* %0, %struct.srp_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.srp_buf** %2, %struct.srp_buf*** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kcalloc(i64 %10, i32 8, i32 %11)
  %13 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %14 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %16 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kcalloc(i64 %23, i32 8, i32 %24)
  %26 = bitcast i8* %25 to %struct.iu_entry*
  %27 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %28 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %27, i32 0, i32 2
  store %struct.iu_entry* %26, %struct.iu_entry** %28, align 8
  %29 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %30 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %29, i32 0, i32 2
  %31 = load %struct.iu_entry*, %struct.iu_entry** %30, align 8
  %32 = icmp ne %struct.iu_entry* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %72

34:                                               ; preds = %22
  %35 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %36 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %35, i32 0, i32 3
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %39 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %38, i32 0, i32 1
  %40 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %41 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 %43, 8
  %45 = call i32 @kfifo_init(i32* %39, i8* %42, i64 %44)
  store i32 0, i32* %9, align 4
  %46 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %47 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %46, i32 0, i32 2
  %48 = load %struct.iu_entry*, %struct.iu_entry** %47, align 8
  store %struct.iu_entry* %48, %struct.iu_entry** %8, align 8
  br label %49

49:                                               ; preds = %68, %34
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %56 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %55, i32 0, i32 1
  %57 = bitcast %struct.iu_entry** %8 to i8*
  %58 = call i32 @kfifo_in(i32* %56, i8* %57, i32 8)
  %59 = load %struct.srp_buf**, %struct.srp_buf*** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.srp_buf*, %struct.srp_buf** %59, i64 %61
  %63 = load %struct.srp_buf*, %struct.srp_buf** %62, align 8
  %64 = load %struct.iu_entry*, %struct.iu_entry** %8, align 8
  %65 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %64, i32 0, i32 0
  store %struct.srp_buf* %63, %struct.srp_buf** %65, align 8
  %66 = load %struct.iu_entry*, %struct.iu_entry** %8, align 8
  %67 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %66, i32 1
  store %struct.iu_entry* %67, %struct.iu_entry** %8, align 8
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %49

71:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %79

72:                                               ; preds = %33
  %73 = load %struct.srp_queue*, %struct.srp_queue** %5, align 8
  %74 = getelementptr inbounds %struct.srp_queue, %struct.srp_queue* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @kfree(i8* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %71, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfifo_init(i32*, i8*, i64) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
