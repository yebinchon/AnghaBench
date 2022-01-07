; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_init_active_labels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_init_active_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32, i32, %struct.nvdimm_drvdata*, %struct.nvdimm* }
%struct.nvdimm_drvdata = type { i32 }
%struct.nvdimm = type { i32, i32, i32 }
%struct.nd_label_ent = type { i32, %struct.nd_namespace_label* }
%struct.nd_namespace_label = type { i32 }

@NDD_LOCKED = common dso_local global i32 0, align 4
@NDD_ALIASING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: is %s, failing probe\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"count: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@NDD_NOBLK = common dso_local global i32 0, align 4
@NSLABEL_FLAG_LOCAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_region*)* @init_active_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_active_labels(%struct.nd_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_mapping*, align 8
  %6 = alloca %struct.nvdimm_drvdata*, align 8
  %7 = alloca %struct.nvdimm*, align 8
  %8 = alloca %struct.nd_label_ent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nd_namespace_label*, align 8
  %12 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %143, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %146

19:                                               ; preds = %13
  %20 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %21 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %20, i32 0, i32 2
  %22 = load %struct.nd_mapping*, %struct.nd_mapping** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %22, i64 %24
  store %struct.nd_mapping* %25, %struct.nd_mapping** %5, align 8
  %26 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %27 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %26)
  store %struct.nvdimm_drvdata* %27, %struct.nvdimm_drvdata** %6, align 8
  %28 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %29 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %28, i32 0, i32 3
  %30 = load %struct.nvdimm*, %struct.nvdimm** %29, align 8
  store %struct.nvdimm* %30, %struct.nvdimm** %7, align 8
  %31 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %32 = icmp ne %struct.nvdimm_drvdata* %31, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %19
  %34 = load i32, i32* @NDD_LOCKED, align 4
  %35 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %36 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @NDD_ALIASING, align 4
  %42 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %43 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %42, i32 0, i32 0
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %162

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %39
  %50 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %51 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %50, i32 0, i32 1
  %52 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %53 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %52, i32 0, i32 3
  %54 = load %struct.nvdimm*, %struct.nvdimm** %53, align 8
  %55 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %54, i32 0, i32 2
  %56 = call i32 @dev_name(i32* %55)
  %57 = load i32, i32* @NDD_LOCKED, align 4
  %58 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %59 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %63)
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %162

67:                                               ; preds = %19
  %68 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %69 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %70 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %69, i32 0, i32 2
  store %struct.nvdimm_drvdata* %68, %struct.nvdimm_drvdata** %70, align 8
  %71 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %72 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %71, i32 0, i32 1
  %73 = call i32 @atomic_inc(i32* %72)
  %74 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %75 = call i32 @get_ndd(%struct.nvdimm_drvdata* %74)
  %76 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %77 = call i32 @nd_label_active_count(%struct.nvdimm_drvdata* %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %79 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %67
  br label %143

86:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %134, %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %137

91:                                               ; preds = %87
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.nd_label_ent* @kzalloc(i32 16, i32 %92)
  store %struct.nd_label_ent* %93, %struct.nd_label_ent** %8, align 8
  %94 = load %struct.nd_label_ent*, %struct.nd_label_ent** %8, align 8
  %95 = icmp ne %struct.nd_label_ent* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %137

97:                                               ; preds = %91
  %98 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call %struct.nd_namespace_label* @nd_label_active(%struct.nvdimm_drvdata* %98, i32 %99)
  store %struct.nd_namespace_label* %100, %struct.nd_namespace_label** %11, align 8
  %101 = load i32, i32* @NDD_NOBLK, align 4
  %102 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %103 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %102, i32 0, i32 0
  %104 = call i64 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %97
  %107 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %11, align 8
  %108 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @__le32_to_cpu(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @NSLABEL_FLAG_LOCAL, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @__cpu_to_le32(i32 %115)
  %117 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %11, align 8
  %118 = getelementptr inbounds %struct.nd_namespace_label, %struct.nd_namespace_label* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %106, %97
  %120 = load %struct.nd_namespace_label*, %struct.nd_namespace_label** %11, align 8
  %121 = load %struct.nd_label_ent*, %struct.nd_label_ent** %8, align 8
  %122 = getelementptr inbounds %struct.nd_label_ent, %struct.nd_label_ent* %121, i32 0, i32 1
  store %struct.nd_namespace_label* %120, %struct.nd_namespace_label** %122, align 8
  %123 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %124 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %123, i32 0, i32 0
  %125 = call i32 @mutex_lock(i32* %124)
  %126 = load %struct.nd_label_ent*, %struct.nd_label_ent** %8, align 8
  %127 = getelementptr inbounds %struct.nd_label_ent, %struct.nd_label_ent* %126, i32 0, i32 0
  %128 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %129 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %128, i32 0, i32 1
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  %131 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %132 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %87

137:                                              ; preds = %96, %87
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %146

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %85
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %13

146:                                              ; preds = %141, %13
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %149 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %154 = call i32 @deactivate_labels(%struct.nd_region* %153)
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %162

157:                                              ; preds = %146
  %158 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %159 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %158, i32 0, i32 1
  %160 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %161 = call i32 @devm_add_action_or_reset(i32* %159, i32 (%struct.nd_region*)* @deactivate_labels, %struct.nd_region* %160)
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %157, %152, %49, %47
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i8*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @get_ndd(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @nd_label_active_count(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.nd_label_ent* @kzalloc(i32, i32) #1

declare dso_local %struct.nd_namespace_label* @nd_label_active(%struct.nvdimm_drvdata*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @deactivate_labels(%struct.nd_region*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32 (%struct.nd_region*)*, %struct.nd_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
