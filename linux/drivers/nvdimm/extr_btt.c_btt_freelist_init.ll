; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_freelist_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_freelist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.log_entry = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOG_NEW_ENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to clear known errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*)* @btt_freelist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_freelist_init(%struct.arena_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arena_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.log_entry, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.arena_info* %0, %struct.arena_info** %3, align 8
  %11 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %12 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.TYPE_2__* @kcalloc(i64 %13, i32 4, i32 %14)
  %16 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %17 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %16, i32 0, i32 1
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %19 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %145

25:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %141, %25
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %29 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %144

32:                                               ; preds = %26
  %33 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @LOG_NEW_ENT, align 4
  %36 = call i32 @btt_log_read(%struct.arena_info* %33, i64 %34, %struct.log_entry* %6, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %145

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call i64 @ent_lba(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = call i64 @ent_lba(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 1, %50
  %52 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %53 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 8
  %58 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = call i32 @nd_inc_seq(i32 %60)
  %62 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %63 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i32 %61, i32* %67, align 4
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %70 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %68, i64* %74, align 8
  %75 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = call i64 @ent_e_flag(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %41
  %81 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = call i32 @ent_normal(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %80
  %87 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %88 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @arena_clear_freelist_error(%struct.arena_info* %93, i64 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %100 = call i32 @to_dev(%struct.arena_info* %99)
  %101 = call i32 @dev_err_ratelimited(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %86
  br label %103

103:                                              ; preds = %102, %80, %41
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %141

108:                                              ; preds = %103
  %109 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %110 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = call i32 @btt_map_read(%struct.arena_info* %109, i32 %112, i64* %8, i32* null, i32* null, i32 0)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %145

118:                                              ; preds = %108
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %128 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le32_to_cpu(i32 %132)
  %134 = call i32 @btt_map_write(%struct.arena_info* %127, i32 %130, i32 %133, i32 0, i32 0, i32 0)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %145

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %122, %118
  br label %141

141:                                              ; preds = %140, %107
  %142 = load i64, i64* %7, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %7, align 8
  br label %26

144:                                              ; preds = %26
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %137, %116, %39, %22
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_2__* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @btt_log_read(%struct.arena_info*, i64, %struct.log_entry*, i32) #1

declare dso_local i64 @ent_lba(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nd_inc_seq(i32) #1

declare dso_local i64 @ent_e_flag(i32) #1

declare dso_local i32 @ent_normal(i32) #1

declare dso_local i32 @arena_clear_freelist_error(%struct.arena_info*, i64) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @to_dev(%struct.arena_info*) #1

declare dso_local i32 @btt_map_read(%struct.arena_info*, i32, i64*, i32*, i32*, i32) #1

declare dso_local i32 @btt_map_write(%struct.arena_info*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
