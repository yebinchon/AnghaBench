; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_extend_cmdctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_extend_cmdctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@max_cmnds = common dso_local global i32 0, align 4
@ASD_SCB_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"couldn't allocate memory for %d commands\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMDCTXBASE = common dso_local global i32 0, align 4
@CTXDOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_extend_cmdctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_extend_cmdctx(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %11 = load i32, i32* @max_cmnds, align 4
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %11, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @max_cmnds, align 4
  %19 = icmp sgt i32 %18, 65535
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %1
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %22 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* @max_cmnds, align 4
  store i32 0, i32* %2, align 4
  br label %93

25:                                               ; preds = %17
  %26 = load i32, i32* @max_cmnds, align 4
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %28 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %26, %30
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @ASD_SCB_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_4__* @asd_alloc_coherent(%struct.asd_ha_struct* %35, i32 %36, i32 %37)
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %40 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %43 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %25
  %48 = load i32, i32* @max_cmnds, align 4
  %49 = call i32 @asd_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %51 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* @max_cmnds, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %25
  %57 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %58 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* @ASD_SCB_SIZE, align 4
  %65 = call i64 @ALIGN(i64 %63, i32 %64)
  store i64 %65, i64* %5, align 8
  %66 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %67 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ASD_SCB_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %5, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  store i64 %75, i64* %4, align 8
  %76 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %77 = load i32, i32* @CMDCTXBASE, align 4
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @asd_write_reg_addr(%struct.asd_ha_struct* %76, i32 %77, i64 %78)
  %80 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %81 = load i32, i32* @CTXDOMAIN, align 4
  %82 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, -2
  store i32 %84, i32* %6, align 4
  %85 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %86 = load i32, i32* @CTXDOMAIN, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @max_cmnds, align 4
  %90 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %91 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %56, %47, %20
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_4__* @asd_alloc_coherent(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @asd_write_reg_addr(%struct.asd_ha_struct*, i32, i64) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
