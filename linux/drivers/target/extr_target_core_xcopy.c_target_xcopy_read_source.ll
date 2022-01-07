; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_read_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_read_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32*, i32 }
%struct.xcopy_op = type { i64, i64, i32*, %struct.xcopy_pt_cmd* }
%struct.xcopy_pt_cmd = type { %struct.se_cmd, i32*, i32 }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XCOL_DEST_RECV_OP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate xcopy_pt_cmd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@READ_16 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"XCOPY: Built READ_16: LBA: %llu Sectors: %u Length: %u\0A\00", align 1
@xcopy_pt_tfo = common dso_local global i32 0, align 4
@xcopy_pt_sess = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"XCOPY-READ: Saved xop->xop_data_sg: %p, num: %u for READ memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.xcopy_op*, %struct.se_device*, i64, i32)* @target_xcopy_read_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_read_source(%struct.se_cmd* %0, %struct.xcopy_op* %1, %struct.se_device* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca %struct.xcopy_op*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xcopy_pt_cmd*, align 8
  %13 = alloca %struct.se_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %7, align 8
  store %struct.xcopy_op* %1, %struct.xcopy_op** %8, align 8
  store %struct.se_device* %2, %struct.se_device** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.se_device*, %struct.se_device** %9, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %18, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %25 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XCOL_DEST_RECV_OP, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.xcopy_pt_cmd* @kzalloc(i32 40, i32 %30)
  store %struct.xcopy_pt_cmd* %31, %struct.xcopy_pt_cmd** %12, align 8
  %32 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %33 = icmp ne %struct.xcopy_pt_cmd* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %5
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %126

38:                                               ; preds = %5
  %39 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %40 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %39, i32 0, i32 2
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %43 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %42, i32 0, i32 0
  store %struct.se_cmd* %43, %struct.se_cmd** %13, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %45 = call i32 @memset(i8* %44, i32 0, i32 16)
  %46 = load i8, i8* @READ_16, align 1
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  store i8 %46, i8* %47, align 16
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 2
  %50 = call i32 @put_unaligned_be64(i64 %48, i8* %49)
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 10
  %53 = call i32 @put_unaligned_be32(i32 %51, i8* %52)
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %55, i32 %56)
  %58 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %62 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = call i32 @transport_init_se_cmd(%struct.se_cmd* %58, i32* @xcopy_pt_tfo, i32* @xcopy_pt_sess, i32 %59, i32 %60, i32 0, i32* %64)
  %66 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %67 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %68 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %67, i32 0, i32 3
  store %struct.xcopy_pt_cmd* %66, %struct.xcopy_pt_cmd** %68, align 8
  %69 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %70 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %71 = load %struct.se_device*, %struct.se_device** %9, align 8
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @target_xcopy_setup_pt_cmd(%struct.xcopy_pt_cmd* %69, %struct.xcopy_op* %70, %struct.se_device* %71, i8* %72, i32 %73, i32 1)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %38
  %78 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %79 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %85 = call i32 @transport_generic_free_cmd(%struct.se_cmd* %84, i32 0)
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %126

87:                                               ; preds = %38
  %88 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %89 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %92 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %94 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %97 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %99 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %100 to i64
  %102 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %103 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %101, i32 %105)
  %107 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %108 = call i32 @target_xcopy_issue_pt_cmd(%struct.xcopy_pt_cmd* %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %87
  %112 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %113 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %119 = call i32 @transport_generic_free_cmd(%struct.se_cmd* %118, i32 0)
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %6, align 4
  br label %126

121:                                              ; preds = %87
  %122 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %123 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %122, i32 0, i32 1
  store i32* null, i32** %123, align 8
  %124 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %125 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %121, %111, %77, %34
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local %struct.xcopy_pt_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i64, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, ...) #1

declare dso_local i32 @transport_init_se_cmd(%struct.se_cmd*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @target_xcopy_setup_pt_cmd(%struct.xcopy_pt_cmd*, %struct.xcopy_op*, %struct.se_device*, i8*, i32, i32) #1

declare dso_local i32 @transport_generic_free_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @target_xcopy_issue_pt_cmd(%struct.xcopy_pt_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
