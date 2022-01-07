; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_check_ioc_facts_changes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_check_ioc_facts_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32, i32, %struct.TYPE_2__, %struct.mpt3sas_facts, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.mpt3sas_facts = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Unable to allocate the memory for pd_handles of sz: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Unable to allocate the memory for blocking_handles of sz: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Unable to allocate the memory for pend_os_device_add of sz: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Unable to allocate the memory for device_remove_in_progress of sz: %d\0A \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*)* @_base_check_ioc_facts_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_check_ioc_facts_changes(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mpt3sas_facts*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %10, i32 0, i32 4
  store %struct.mpt3sas_facts* %11, %struct.mpt3sas_facts** %9, align 8
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %13 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mpt3sas_facts*, %struct.mpt3sas_facts** %9, align 8
  %17 = getelementptr inbounds %struct.mpt3sas_facts, %struct.mpt3sas_facts* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %177

20:                                               ; preds = %1
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %22 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sdiv i64 %24, 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %4, align 8
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %28 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = srem i64 %30, 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %33, %20
  %37 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %38 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %37, i32 0, i32 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @krealloc(i8* %39, i8* %40, i32 %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %183

51:                                               ; preds = %36
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %54 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %52, i64 %56
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %60 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr i8, i8* %58, i64 %63
  %65 = call i32 @memset(i8* %57, i32 0, i8* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %68 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %67, i32 0, i32 8
  store i8* %66, i8** %68, align 8
  %69 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %70 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %69, i32 0, i32 7
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @krealloc(i8* %71, i8* %72, i32 %73)
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %51
  %78 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %78, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %183

83:                                               ; preds = %51
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %86 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %84, i64 %88
  %90 = load i8*, i8** %4, align 8
  %91 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %92 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr i8, i8* %90, i64 %95
  %97 = call i32 @memset(i8* %89, i32 0, i8* %96)
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %100 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %104 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %106 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %105, i32 0, i32 6
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @krealloc(i8* %107, i8* %108, i32 %109)
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %83
  %114 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %114, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %183

119:                                              ; preds = %83
  %120 = load i8*, i8** %7, align 8
  %121 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %122 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr i8, i8* %120, i64 %124
  %126 = load i8*, i8** %4, align 8
  %127 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %128 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr i8, i8* %126, i64 %131
  %133 = call i32 @memset(i8* %125, i32 0, i8* %132)
  %134 = load i8*, i8** %7, align 8
  %135 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %136 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %140 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %142 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call i8* @krealloc(i8* %143, i8* %144, i32 %145)
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %119
  %150 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %150, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i8* %151)
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %183

155:                                              ; preds = %119
  %156 = load i8*, i8** %8, align 8
  %157 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %158 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr i8, i8* %156, i64 %160
  %162 = load i8*, i8** %4, align 8
  %163 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %164 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = sub i64 0, %166
  %168 = getelementptr i8, i8* %162, i64 %167
  %169 = call i32 @memset(i8* %161, i32 0, i8* %168)
  %170 = load i8*, i8** %8, align 8
  %171 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %172 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** %4, align 8
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %176 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %155, %1
  %178 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %179 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %178, i32 0, i32 4
  %180 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %181 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %180, i32 0, i32 3
  %182 = call i32 @memcpy(%struct.mpt3sas_facts* %179, %struct.TYPE_2__* %181, i32 8)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %149, %113, %77, %45
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i8* @krealloc(i8*, i8*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.mpt3sas_facts*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
