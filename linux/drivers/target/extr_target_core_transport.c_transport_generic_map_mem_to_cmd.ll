; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_generic_map_mem_to_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_generic_map_mem_to_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i8*, %struct.scatterlist*, i8*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Rejecting SCSI DATA overflow for fabric using SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_generic_map_mem_to_cmd(%struct.se_cmd* %0, %struct.scatterlist* %1, i8* %2, %struct.scatterlist* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %13 = icmp ne %struct.scatterlist* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %5
  store i32 0, i32* %6, align 4
  br label %46

18:                                               ; preds = %14
  %19 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %27, i32* %6, align 4
  br label %46

28:                                               ; preds = %18
  %29 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %30 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 4
  store %struct.scatterlist* %29, %struct.scatterlist** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %36 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 2
  store %struct.scatterlist* %35, %struct.scatterlist** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %42 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %28, %25, %17
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
