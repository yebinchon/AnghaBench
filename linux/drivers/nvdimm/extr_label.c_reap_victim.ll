; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_reap_victim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_reap_victim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_mapping = type { i32 }
%struct.nd_label_ent = type { i32* }
%struct.nvdimm_drvdata = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"free: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nd_mapping*, %struct.nd_label_ent*)* @reap_victim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reap_victim(%struct.nd_mapping* %0, %struct.nd_label_ent* %1) #0 {
  %3 = alloca %struct.nd_mapping*, align 8
  %4 = alloca %struct.nd_label_ent*, align 8
  %5 = alloca %struct.nvdimm_drvdata*, align 8
  %6 = alloca i32, align 4
  store %struct.nd_mapping* %0, %struct.nd_mapping** %3, align 8
  store %struct.nd_label_ent* %1, %struct.nd_label_ent** %4, align 8
  %7 = load %struct.nd_mapping*, %struct.nd_mapping** %3, align 8
  %8 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %7)
  store %struct.nvdimm_drvdata* %8, %struct.nvdimm_drvdata** %5, align 8
  %9 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %5, align 8
  %10 = load %struct.nd_label_ent*, %struct.nd_label_ent** %4, align 8
  %11 = getelementptr inbounds %struct.nd_label_ent, %struct.nd_label_ent* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @to_slot(%struct.nvdimm_drvdata* %9, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %5, align 8
  %15 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @nd_label_free_slot(%struct.nvdimm_drvdata* %19, i32 %20)
  %22 = load %struct.nd_label_ent*, %struct.nd_label_ent** %4, align 8
  %23 = getelementptr inbounds %struct.nd_label_ent, %struct.nd_label_ent* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  ret void
}

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

declare dso_local i32 @to_slot(%struct.nvdimm_drvdata*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @nd_label_free_slot(%struct.nvdimm_drvdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
