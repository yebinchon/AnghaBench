; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_write_destination.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_write_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32 }
%struct.xcopy_op = type { i64, i32, i32, %struct.TYPE_4__*, %struct.xcopy_pt_cmd* }
%struct.TYPE_4__ = type { %struct.se_cmd }
%struct.xcopy_pt_cmd = type { %struct.se_cmd, i32*, i32 }
%struct.se_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@XCOL_SOURCE_RECV_OP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate xcopy_pt_cmd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WRITE_16 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"XCOPY: Built WRITE_16: LBA: %llu Sectors: %u Length: %u\0A\00", align 1
@xcopy_pt_tfo = common dso_local global i32 0, align 4
@xcopy_pt_sess = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.xcopy_op*, %struct.se_device*, i64, i32)* @target_xcopy_write_destination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_write_destination(%struct.se_cmd* %0, %struct.xcopy_op* %1, %struct.se_device* %2, i64 %3, i32 %4) #0 {
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
  %18 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %7, align 8
  store %struct.xcopy_op* %1, %struct.xcopy_op** %8, align 8
  store %struct.se_device* %2, %struct.se_device** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.se_device*, %struct.se_device** %9, align 8
  %21 = getelementptr inbounds %struct.se_device, %struct.se_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %26 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XCOL_SOURCE_RECV_OP, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.xcopy_pt_cmd* @kzalloc(i32 32, i32 %31)
  store %struct.xcopy_pt_cmd* %32, %struct.xcopy_pt_cmd** %12, align 8
  %33 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %34 = icmp ne %struct.xcopy_pt_cmd* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %5
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %130

39:                                               ; preds = %5
  %40 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %41 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %40, i32 0, i32 2
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %44 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %43, i32 0, i32 0
  store %struct.se_cmd* %44, %struct.se_cmd** %13, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i32 0, i32 16)
  %47 = load i8, i8* @WRITE_16, align 1
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  store i8 %47, i8* %48, align 16
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 2
  %51 = call i32 @put_unaligned_be64(i64 %49, i8* %50)
  %52 = load i32, i32* %11, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 10
  %54 = call i32 @put_unaligned_be32(i32 %52, i8* %53)
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %56, i32 %57)
  %59 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %63 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @transport_init_se_cmd(%struct.se_cmd* %59, i32* @xcopy_pt_tfo, i32* @xcopy_pt_sess, i32 %60, i32 %61, i32 0, i32* %65)
  %67 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %68 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %69 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %68, i32 0, i32 4
  store %struct.xcopy_pt_cmd* %67, %struct.xcopy_pt_cmd** %69, align 8
  %70 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %71 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %72 = load %struct.se_device*, %struct.se_device** %9, align 8
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @target_xcopy_setup_pt_cmd(%struct.xcopy_pt_cmd* %70, %struct.xcopy_op* %71, %struct.se_device* %72, i8* %73, i32 %74, i32 0)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %39
  %79 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %80 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.se_cmd* %82, %struct.se_cmd** %18, align 8
  %83 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %84 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.se_cmd*, %struct.se_cmd** %18, align 8
  %92 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %96 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.se_cmd*, %struct.se_cmd** %18, align 8
  %99 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.xcopy_op*, %struct.xcopy_op** %8, align 8
  %101 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.se_cmd*, %struct.se_cmd** %18, align 8
  %104 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %106 = call i32 @transport_generic_free_cmd(%struct.se_cmd* %105, i32 0)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %6, align 4
  br label %130

108:                                              ; preds = %39
  %109 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %110 = call i32 @target_xcopy_issue_pt_cmd(%struct.xcopy_pt_cmd* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = load %struct.xcopy_pt_cmd*, %struct.xcopy_pt_cmd** %12, align 8
  %115 = getelementptr inbounds %struct.xcopy_pt_cmd, %struct.xcopy_pt_cmd* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %123 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %127 = call i32 @transport_generic_free_cmd(%struct.se_cmd* %126, i32 0)
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %6, align 4
  br label %130

129:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %113, %78, %35
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.xcopy_pt_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i64, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

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
