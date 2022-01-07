; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_create_frame_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_create_frame_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64, i32, %struct.TYPE_5__*, i8*, i32*, %struct.megasas_cmd** }
%struct.TYPE_5__ = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@MFI_SERIES = common dso_local global i64 0, align 8
@MEGAMFI_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"megasas frame pool\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to setup frame pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"megasas sense pool\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to setup sense pool\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"dma_pool_alloc failed\0A\00", align 1
@reset_devices = common dso_local global i64 0, align 8
@MFI_CMD_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_create_frame_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_create_frame_pool(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.megasas_cmd*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MFI_SERIES, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 16, i32 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MEGAMFI_FRAME_SIZE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %22 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @dma_pool_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %26, i32 %29, i32 256, i32 0)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %35 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* @KERN_DEBUG, align 4
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @dev_printk(i32 %39, i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %160

47:                                               ; preds = %1
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %49 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i8* @dma_pool_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32 128, i32 4, i32 0)
  %53 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %54 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %56 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @KERN_DEBUG, align 4
  %61 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %62 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @dev_printk(i32 %60, i32* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %67 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @dma_pool_destroy(i32* %68)
  %70 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %71 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %70, i32 0, i32 5
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %160

74:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %156, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %159

79:                                               ; preds = %75
  %80 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %81 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %80, i32 0, i32 6
  %82 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %82, i64 %84
  %86 = load %struct.megasas_cmd*, %struct.megasas_cmd** %85, align 8
  store %struct.megasas_cmd* %86, %struct.megasas_cmd** %7, align 8
  %87 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %88 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %91, i32 0, i32 4
  %93 = call %struct.TYPE_8__* @dma_pool_zalloc(i32* %89, i32 %90, i32* %92)
  %94 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %94, i32 0, i32 0
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %95, align 8
  %96 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %97 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %100, i32 0, i32 3
  %102 = call i32 @dma_pool_alloc(i8* %98, i32 %99, i32* %101)
  %103 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = icmp ne %struct.TYPE_8__* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %79
  %110 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %109, %79
  %115 = load i32, i32* @KERN_DEBUG, align 4
  %116 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %117 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %116, i32 0, i32 3
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = call i32 @dev_printk(i32 %115, i32* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %122 = call i32 @megasas_teardown_frame_pool(%struct.megasas_instance* %121)
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %160

125:                                              ; preds = %109
  %126 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @cpu_to_le32(i32 %128)
  %130 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i32 %129, i32* %134, align 8
  %135 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %141 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MFI_SERIES, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %125
  %146 = load i64, i64* @reset_devices, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* @MFI_CMD_INVALID, align 4
  %150 = load %struct.megasas_cmd*, %struct.megasas_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %145, %125
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %75

159:                                              ; preds = %75
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %114, %59, %38
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i8* @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_8__* @dma_pool_zalloc(i32*, i32, i32*) #1

declare dso_local i32 @dma_pool_alloc(i8*, i32, i32*) #1

declare dso_local i32 @megasas_teardown_frame_pool(%struct.megasas_instance*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
