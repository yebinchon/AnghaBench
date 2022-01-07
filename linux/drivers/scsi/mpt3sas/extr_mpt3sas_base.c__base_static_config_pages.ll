; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_static_config_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_static_config_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32, i64, %struct.TYPE_10__, i64, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s: overriding NVDATA EEDPTagMode setting\0A\00", align 1
@NVME_TASK_MNGT_CUSTOM_MASK = common dso_local global i32 0, align 4
@NVME_TASK_ABORT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@NVME_TASK_ABORT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING = common dso_local global i32 0, align 4
@MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_base_static_config_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_static_config_pages(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %5 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %6 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %5, i32 0, i32 0
  store i32 30, i32* %6, align 8
  %7 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %8 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %9 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %8, i32 0, i32 16
  %10 = call i32 @mpt3sas_config_get_manufacturing_pg0(%struct.MPT3SAS_ADAPTER* %7, i32* %3, i32* %9)
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %12 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %11, i32 0, i32 15
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %17, i32 0, i32 14
  %19 = call i32 @mpt3sas_config_get_manufacturing_pg10(%struct.MPT3SAS_ADAPTER* %16, i32* %3, i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %22, i32 0, i32 11
  %24 = call i32 @mpt3sas_config_get_manufacturing_pg11(%struct.MPT3SAS_ADAPTER* %21, i32* %3, %struct.TYPE_8__* %23)
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %26 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %20
  %30 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %31 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %37 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %41 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, -4
  store i32 %44, i32* %42, align 8
  %45 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %46 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %51 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %52 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %51, i32 0, i32 11
  %53 = call i32 @mpt3sas_config_set_manufacturing_pg11(%struct.MPT3SAS_ADAPTER* %50, i32* %3, %struct.TYPE_8__* %52)
  br label %54

54:                                               ; preds = %35, %29, %20
  %55 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %56 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NVME_TASK_MNGT_CUSTOM_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %64 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %98

65:                                               ; preds = %54
  %66 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %67 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %69 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %68, i32 0, i32 11
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NVME_TASK_ABORT_MIN_TIMEOUT, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @NVME_TASK_ABORT_MIN_TIMEOUT, align 4
  %76 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %77 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %97

78:                                               ; preds = %65
  %79 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %80 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %79, i32 0, i32 11
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NVME_TASK_ABORT_MAX_TIMEOUT, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @NVME_TASK_ABORT_MAX_TIMEOUT, align 4
  %87 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %88 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %96

89:                                               ; preds = %78
  %90 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %91 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %90, i32 0, i32 11
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %95 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %85
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %62
  %99 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %100 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %101 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %100, i32 0, i32 10
  %102 = call i32 @mpt3sas_config_get_bios_pg2(%struct.MPT3SAS_ADAPTER* %99, i32* %3, i32* %101)
  %103 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %104 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %105 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %104, i32 0, i32 9
  %106 = call i32 @mpt3sas_config_get_bios_pg3(%struct.MPT3SAS_ADAPTER* %103, i32* %3, i32* %105)
  %107 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %108 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %109 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %108, i32 0, i32 8
  %110 = call i32 @mpt3sas_config_get_ioc_pg8(%struct.MPT3SAS_ADAPTER* %107, i32* %3, i32* %109)
  %111 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %112 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %113 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %112, i32 0, i32 7
  %114 = call i32 @mpt3sas_config_get_iounit_pg0(%struct.MPT3SAS_ADAPTER* %111, i32* %3, i32* %113)
  %115 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %116 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %117 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %116, i32 0, i32 5
  %118 = call i32 @mpt3sas_config_get_iounit_pg1(%struct.MPT3SAS_ADAPTER* %115, i32* %3, %struct.TYPE_9__* %117)
  %119 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %120 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %121 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %120, i32 0, i32 3
  %122 = call i32 @mpt3sas_config_get_iounit_pg8(%struct.MPT3SAS_ADAPTER* %119, i32* %3, %struct.TYPE_10__* %121)
  %123 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %124 = call i32 @_base_display_ioc_capabilities(%struct.MPT3SAS_ADAPTER* %123)
  %125 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %126 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @le32_to_cpu(i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %131 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %98
  %138 = load i32, i32* @MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %4, align 4
  br label %146

142:                                              ; preds = %98
  %143 = load i32, i32* @MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING, align 4
  %144 = load i32, i32* %4, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @cpu_to_le32(i32 %147)
  %149 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %150 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %153 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %154 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %153, i32 0, i32 5
  %155 = call i32 @mpt3sas_config_set_iounit_pg1(%struct.MPT3SAS_ADAPTER* %152, i32* %3, %struct.TYPE_9__* %154)
  %156 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %157 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %146
  %162 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %163 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %167 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %166, i32 0, i32 4
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %161, %146
  %169 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %170 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %175 = call i32 @_base_update_ioc_page1_inlinewith_perf_mode(%struct.MPT3SAS_ADAPTER* %174)
  br label %176

176:                                              ; preds = %173, %168
  ret void
}

declare dso_local i32 @mpt3sas_config_get_manufacturing_pg0(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_manufacturing_pg10(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_manufacturing_pg11(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mpt3sas_config_set_manufacturing_pg11(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mpt3sas_config_get_bios_pg2(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_bios_pg3(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_ioc_pg8(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_iounit_pg0(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_iounit_pg1(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @mpt3sas_config_get_iounit_pg8(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @_base_display_ioc_capabilities(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mpt3sas_config_set_iounit_pg1(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @_base_update_ioc_page1_inlinewith_perf_mode(%struct.MPT3SAS_ADAPTER*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
