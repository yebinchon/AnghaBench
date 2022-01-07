; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs_bsg.c_ufs_bsg_alloc_desc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs_bsg.c_ufs_bsg_alloc_desc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.bsg_job = type { %struct.TYPE_4__, %struct.ufs_bsg_request* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ufs_bsg_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i32 }

@UPIU_QUERY_OPCODE_WRITE_DESC = common dso_local global i32 0, align 4
@UPIU_QUERY_OPCODE_READ_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Illegal desc size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.bsg_job*, i32**, i32*, i32)* @ufs_bsg_alloc_desc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_bsg_alloc_desc_buffer(%struct.ufs_hba* %0, %struct.bsg_job* %1, i32** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufs_hba*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ufs_bsg_request*, align 8
  %13 = alloca %struct.utp_upiu_query*, align 8
  %14 = alloca i32*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %7, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 1
  %17 = load %struct.ufs_bsg_request*, %struct.ufs_bsg_request** %16, align 8
  store %struct.ufs_bsg_request* %17, %struct.ufs_bsg_request** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @UPIU_QUERY_OPCODE_WRITE_DESC, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @UPIU_QUERY_OPCODE_READ_DESC, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %87

26:                                               ; preds = %21, %5
  %27 = load %struct.ufs_bsg_request*, %struct.ufs_bsg_request** %12, align 8
  %28 = getelementptr inbounds %struct.ufs_bsg_request, %struct.ufs_bsg_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.utp_upiu_query* %29, %struct.utp_upiu_query** %13, align 8
  %30 = load %struct.ufs_hba*, %struct.ufs_hba** %7, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.utp_upiu_query*, %struct.utp_upiu_query** %13, align 8
  %33 = call i64 @ufs_bsg_get_query_desc_size(%struct.ufs_hba* %30, i32* %31, %struct.utp_upiu_query* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %7, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %88

42:                                               ; preds = %26
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %46 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %44, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %7, align 8
  %52 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %88

57:                                               ; preds = %42
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kzalloc(i32 %59, i32 %60)
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %88

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @UPIU_QUERY_OPCODE_WRITE_DESC, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %73 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %77 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sg_copy_to_buffer(i32 %75, i32 %79, i32* %80, i32 %82)
  br label %84

84:                                               ; preds = %71, %67
  %85 = load i32*, i32** %14, align 8
  %86 = load i32**, i32*** %9, align 8
  store i32* %85, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %25
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %64, %50, %35
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @ufs_bsg_get_query_desc_size(%struct.ufs_hba*, i32*, %struct.utp_upiu_query*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
